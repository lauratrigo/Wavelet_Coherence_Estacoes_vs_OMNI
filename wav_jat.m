clc; clear; close all;

% --- 1) Carregar dados ionosféricos
load('mediasionosfericasJAT.mat');  % contém foF2, hF, hmF2

ionosfera = {foF2, hF, hmF2};
iono_names = {'foF2', 'h''F', 'hmF2'};

% Criar vetor de tempo dos dados ionosféricos (5 min passo)
start_time = datetime('01-Aug-2017 00:00', 'InputFormat', 'dd-MMM-yyyy HH:mm');
N = length(foF2);
iono_time = start_time + minutes(5*(0:(N-1)));

% --- 2) Ler arquivo OMNI no formato dia mês ano hh:mm ...
% Supondo que já carregou os dados da seguinte forma:
fid = fopen('dados_Omni_Tratados.txt');
data = textscan(fid, '%d %d %d %s %f %f %f %f %f %f', 'Delimiter', '\t');
fclose(fid);

dia = data{1};
mes = data{2};
ano = data{3};
hora_str = data{4};

% Quebrar as strings 'HH:MM' em horas e minutos
hora_min = split(hora_str, ':');
HR = str2double(hora_min(:,1));
MN = str2double(hora_min(:,2));

% Criar vetor datetime diretamente
omni_time = datetime(ano, mes, dia, HR, MN, zeros(length(dia),1));

% Extrair os dados OMNI e substituir valores inválidos
omni_data = [data{5}, data{6}, data{7}, data{8}, data{9}, data{10}];

omni_names = {'Bz (nT)', 'Vsw (km/s)', 'Density (n/cc)', ...
              'E (mV/m)', 'AE (nT)', 'SYM/H (nT)'};

% --- 3) Interpolar para tempo ionosférico (5 min passo)
omni_interp = nan(N,6);

for i = 1:6
    valid_idx = isfinite(omni_data(:,i)) & isfinite(datenum(omni_time));
    fprintf('%s: %d pontos válidos\n', omni_names{i}, sum(valid_idx));
    
    if sum(valid_idx) < 2
        warning(['Poucos pontos válidos para ' omni_names{i} ', interpolação pode falhar.']);
        omni_interp(:,i) = NaN(N,1);
        continue;
    end
    
    % Forçar todos os vetores como coluna
    x = datenum(omni_time(valid_idx));
    y = omni_data(valid_idx,i);
    
    xq = datenum(iono_time);
    
    % Fazer interpolação
    vq = interp1(x(:), y(:), xq(:), 'linear', NaN);
    
    % Garantir que seja coluna para atribuir
    omni_interp(:,i) = vq(:);
end

% --- 4) Preparar resolução temporal para wcoherence
% Tempo em Hz para wcoherence (samples por segundo)
dt = 300; % 1 amostra a cada 5 minutos = 1 a cada 300 s = 1/(300 s)

% --- 5) Loop para calcular e plotar coerência wavelet entre ionosfera × OMNI
for i = 1:length(ionosfera)
    sig_iono = ionosfera{i};

    for j = 1:6
        sig_omni = omni_interp(:,j);

        % Remover NaNs (substituir por zero para evitar erro)
        sig_iono_clean = sig_iono;
        sig_omni_clean = sig_omni;
        sig_iono_clean(isnan(sig_iono_clean)) = 0;
        sig_omni_clean(isnan(sig_omni_clean)) = 0;

        % Criar extensão simétrica (espelhada) para minimizar bordas
        left1 = flipud(sig_iono_clean);
        sig1_ext = [left1; left1; sig_iono_clean; left1; left1];

        left2 = flipud(sig_omni_clean);
        sig2_ext = [left2; left2; sig_omni_clean; left2; left2];
        
        % Parâmetros para CWT
        fs = 1 / 300; % 5 minutos -> 1 amostra a cada 300 s

        fb = cwtfilterbank('SignalLength', numel(sig2_ext), ...
                           'SamplingFrequency', fs, ...
                           'FrequencyLimits', [1e-7 1e-4]);

        
                       
        
        % Calcular coerência wavelet
        [WCOH, ~, period, coi] = wcoherence(sig1_ext, sig2_ext,seconds(dt),'FilterBank', fb);
        
                %[WCOH, ~, period, coi] = wcoherence(sig1_ext, sig2_ext, dt);


        % Cortar parte central (dados originais)
        n = length(sig_iono_clean);
        escala = size(WCOH,1);
        wcoh_central = WCOH(62:147, 2*n+1:3*n);
        coi_central = coi(2*n+1:3*n);
        period=period(62:147,1);

        % Máscara para NaNs originais: zera coerência onde um sinal tem NaN
        mask_nan = isnan(sig_iono) | isnan(sig_omni);
        wcoh_central(:, mask_nan) = NaN;
        
        % Converter período duration para dias numéricos
        period_days = days(period); % Converte duration para double (dias)
        
        % Aplicar log2 APÓS a conversão para dias numéricos
        period_log = log2(period_days);
        
        % Inverter o vetor de períodos para corresponder à matriz invertida
        period_log_inv = flipud(period_log);
        
        % Inverter as linhas da matriz (rebater verticalmente o conteúdo)
        wcoh_central = flipud(wcoh_central);

        % --- Plotar coerência wavelet
        %period = days(period);
        figure1 = figure('Name', [iono_names{i} ' × ' omni_names{j}], 'NumberTitle','off')
        
        h = pcolor(datenum(iono_time), period_log_inv, wcoh_central);

        set(h, 'EdgeColor', 'none');
        set(gca, 'Color', 'w');
        set(h, 'AlphaData', ~isnan(wcoh_central));
        set(h, 'FaceAlpha', 'flat');

colormap jet;
c = colorbar;                  % salva o handle corretamente
c.Limits = [0 1];
c.Ticks = 0.1:0.1:0.9;
c.TickLabels = string(c.Ticks);


        % Configurar eixos
        ax = gca;
        % Define ticks para cada dia de agosto
        xticks_custom = datenum(datetime(2017,8,1):days(2):datetime(2017,8,31));
        ax.XTick = xticks_custom;
        ax.XTickLabel = datestr(xticks_custom, 'dd');
        
        ax.FontSize = 16;             % tamanho dos números nos eixos
        ax.XLabel.FontSize = 16;      % rótulo do eixo X
        ax.YLabel.FontSize = 16;      % rótulo do eixo Y
        ax.Title.FontSize = 15;       % título do gráfico

        xlabel('Time (days)', 'FontSize', 16, 'FontWeight', 'bold');
        ax.XTickLabelRotation = 45;
        ylabel('Period (days)', 'FontSize', 16, 'FontWeight', 'bold');
        title([iono_names{i} ' × ' omni_names{j} ' - Jataí (GO)']);
        grid on
        
        % Define os períodos desejados (em dias)
        periods2 = [0.25 0.5 1 2 4 8 16 31];

        % Converte para escala log2 (porque o eixo Y está em log2(period))
        yticks_log2 = log2(periods2);

        % Aplica os ticks e labels no eixo Y
        ax.YTick = yticks_log2;
        ax.YTickLabel = string(periods2);

        % Rotação dos rótulos do eixo X
        ax.XTickLabelRotation = 90;

        % Ajustar limites do eixo Y
        %ylim([min(periods2), max(periods2)]);
    
    end
end
