# 🛰️ Coerência Wavelet Ionosfera × Parâmetros OMNI – Agosto 2017

Este repositório contém scripts MATLAB para calcular a **Coerência Wavelet Contínua (WCOH)** entre parâmetros **ionosféricos** e **parâmetros solares do OMNI** nas estações **Araguatins (TO), Jataí (GO) e São José dos Campos (SP)** durante **agosto de 2017**.

O objetivo é investigar o acoplamento espectral entre a ionosfera e parâmetros do vento solar e índices geomagnéticos.

---

## 🛠 Tecnologias Usadas

- **MATLAB (R2019b ou superior)**
- **Wavelet Toolbox**
- Arquivos `.mat` com parâmetros ionosféricos (5 min)
- Arquivo `dados_Omni_Tratados.txt` com dados OMNI (5 min)

![MATLAB Badge](https://img.shields.io/badge/MATLAB-R2019b-orange?logo=Mathworks&logoColor=white)

---

## 📊 Dados Utilizados

- **Parâmetros Ionosféricos (5 min)**: `foF2`, `hF`, `hmF2`  
- **Parâmetros OMNI (5 min)**: `Bz (GSM)`, `Vsw`, `Density`, `Ey`, `AE`, `SYM/H`

---

💡 Objetivo

- Aplicar análise de **coerência wavelet contínua (WCOH)** para identificar padrões espectro-temporais e períodos dominantes em séries temporais de parâmetros **ionosféricos** (`foF2`, `hF`, `hmF2`) e **parâmetros solares/geomagnéticos** (`Bz`, `Vsw`, `Density`, `Ey`, `AE`, `SYM-H`) nas três estações durante **agosto de 2017**.

---

## 📂 Estrutura do Projeto

```
Wavelet_Coherence_Estacoes_vs_OMNI/
├── dados/
│ ├── mediasionosfericasARG.mat
│ ├── mediasionosfericasJAT.mat
│ ├── mediasionosfericasSJC.mat
│ └── dados_Omni_Tratados.txt
├── figuras_wcoh_arg/
│ ├── WCOH_foF2_Bz.png
│ ├── WCOH_hF_Vsw.png
│ └── ...
├── wav_sjc.m
├── wav_jat.m
├── wav_arg.m
└── README.md
```

---

## ⚙️ Como Executar

1. Clone o repositório:

```bash
git clone https://github.com/lauratrigo/Wavelet_Coherence_Estacoes_vs_OMNI.git
cd Wavelet_Coherence_Estacoes_vs_OMNI
```

2. Abra o MATLAB, certifique-se de que os arquivos .mat e .txt estão na pasta dados/.

3. Execute:
```bash
run wav_arg.m
run wav_sjc.m
run wav_jat.m
```
Os gráficos serão salvos em images/.

---

## 📈 Gráficos Gerados

---

# Araguatins (TO)

### foF2 × OMNI
<div align="center">
  <h4><strong>foF2 × AE</strong></h4>
  <img src="images/WCOH_ARG_foF2_AE_(nT).png">
</div>

<div align="center">
  <h4><strong>foF2 × Bz</strong></h4>
  <img src="images/WCOH_ARG_foF2_Bz_(nT).png">
</div>

<div align="center">
  <h4><strong>foF2 × Density</strong></h4>
  <img src="images/WCOH_ARG_foF2_Density_(n_cc).png">
</div>

<div align="center">
  <h4><strong>foF2 × Ey</strong></h4>
  <img src="images/WCOH_ARG_foF2_E_(mV_m).png">
</div>

<div align="center">
  <h4><strong>foF2 × SYM-H</strong></h4>
  <img src="images/WCOH_ARG_foF2_SYM_H_(nT).png">
</div>

<div align="center">
  <h4><strong>foF2 × Vsw</strong></h4>
  <img src="images/WCOH_ARG_foF2_Vsw_(km_s).png">
</div>

---

### h'F × OMNI
<div align="center">
  <h4><strong>h'F × AE</strong></h4>
  <img src="images/WCOH_ARG_hF_AE_(nT).png">
</div>

<div align="center">
  <h4><strong>h'F × Bz</strong></h4>
  <img src="images/WCOH_ARG_hF_Bz_(nT).png">
</div>

<div align="center">
  <h4><strong>h'F × Density</strong></h4>
  <img src="images/WCOH_ARG_hF_Density_(n_cc).png">
</div>

<div align="center">
  <h4><strong>h'F × Ey</strong></h4>
  <img src="images/WCOH_ARG_hF_E_(mV_m).png">
</div>

<div align="center">
  <h4><strong>h'F × SYM-H</strong></h4>
  <img src="images/WCOH_ARG_hF_SYM_H_(nT).png">
</div>

<div align="center">
  <h4><strong>h'F × Vsw</strong></h4>
  <img src="images/WCOH_ARG_hF_Vsw_(km_s).png">
</div>

---

### hmF2 × OMNI
<div align="center">
  <h4><strong>hmF2 × AE</strong></h4>
  <img src="images/WCOH_ARG_hmF2_AE_(nT).png">
</div>

<div align="center">
  <h4><strong>hmF2 × Bz</strong></h4>
  <img src="images/WCOH_ARG_hmF2_Bz_(nT).png">
</div>

<div align="center">
  <h4><strong>hmF2 × Density</strong></h4>
  <img src="images/WCOH_ARG_hmF2_Density_(n_cc).png">
</div>

<div align="center">
  <h4><strong>hmF2 × Ey</strong></h4>
  <img src="images/WCOH_ARG_hmF2_E_(mV_m).png">
</div>

<div align="center">
  <h4><strong>hmF2 × SYM-H</strong></h4>
  <img src="images/WCOH_ARG_hmF2_SYM_H_(nT).png">
</div>

<div align="center">
  <h4><strong>hmF2 × Vsw</strong></h4>
  <img src="images/WCOH_ARG_hmF2_Vsw_(km_s).png">
</div>

---

# Jataí (GO)

### foF2 × OMNI
<div align="center">
  <h4><strong>foF2 × AE</strong></h4>
  <img src="images/WCOH_JAT_foF2_AE_(nT).png">
</div>

<div align="center">
  <h4><strong>foF2 × Bz</strong></h4>
  <img src="images/WCOH_JAT_foF2_Bz_(nT).png">
</div>

<div align="center">
  <h4><strong>foF2 × Ey</strong></h4>
  <img src="images/WCOH_JAT_foF2_E_(mV_m).png">
</div>

<div align="center">
  <h4><strong>foF2 × SYM-H</strong></h4>
  <img src="images/WCOH_JAT_foF2_SYM_H_(nT).png">
</div>

<div align="center">
  <h4><strong>foF2 × Vsw</strong></h4>
  <img src="images/WCOH_JAT_foF2_Vsw_(km_s).png">
</div>

---

### h'F × OMNI
<div align="center">
  <h4><strong>h'F × AE</strong></h4>
  <img src="images/WCOH_JAT_hF_AE_(nT).png">
</div>

<div align="center">
  <h4><strong>h'F × Bz</strong></h4>
  <img src="images/WCOH_JAT_hF_Bz_(nT).png">
</div>

<div align="center">
  <h4><strong>h'F × Density</strong></h4>
  <img src="images/WCOH_JAT_hF_Density_(n_cc).png">
</div>

<div align="center">
  <h4><strong>h'F × Ey</strong></h4>
  <img src="images/WCOH_JAT_hF_E_(mV_m).png">
</div>

<div align="center">
  <h4><strong>h'F × SYM-H</strong></h4>
  <img src="images/WCOH_JAT_hF_SYM_H_(nT).png">
</div>

<div align="center">
  <h4><strong>h'F × Vsw</strong></h4>
  <img src="images/WCOH_JAT_hF_Vsw_(km_s).png">
</div>

---

### hmF2 × OMNI
<div align="center">
  <h4><strong>hmF2 × AE</strong></h4>
  <img src="images/WCOH_JAT_hmF2_AE_(nT).png">
</div>

<div align="center">
  <h4><strong>hmF2 × Bz</strong></h4>
  <img src="images/WCOH_JAT_hmF2_Bz_(nT).png">
</div>

<div align="center">
  <h4><strong>hmF2 × Density</strong></h4>
  <img src="images/WCOH_JAT_hmF2_Density_(n_cc).png">
</div>

<div align="center">
  <h4><strong>hmF2 × Ey</strong></h4>
  <img src="images/WCOH_JAT_hmF2_E_(mV_m).png">
</div>

<div align="center">
  <h4><strong>hmF2 × SYM-H</strong></h4>
  <img src="images/WCOH_JAT_hmF2_SYM_H_(nT).png">
</div>

<div align="center">
  <h4><strong>hmF2 × Vsw</strong></h4>
  <img src="images/WCOH_JAT_hmF2_Vsw_(km_s).png">
</div>

---

# São José dos Campos (SP)

### foF2 × OMNI

<div align="center">
  <h4><strong>foF2 × AE</strong></h4>
  <img src="images/WCOH_SJC_foF2_AE__nT_.png">
</div>

<div align="center">
  <h4><strong>foF2 × Bz</strong></h4>
  <img src="images/WCOH_SJC_foF2_Bz (nT).png">
</div>

<div align="center">
  <h4><strong>foF2 × Bz (alt)</strong></h4>
  <img src="images/WCOH_SJC_foF2_Bz__nT_.png">
</div>

<div align="center">
  <h4><strong>foF2 × Density</strong></h4>
  <img src="images/WCOH_SJC_foF2_Density__n_cc_.png">
</div>

<div align="center">
  <h4><strong>foF2 × Ey</strong></h4>
  <img src="images/WCOH_SJC_foF2_E__mV_m_.png">
</div>

<div align="center">
  <h4><strong>foF2 × SYM-H</strong></h4>
  <img src="images/WCOH_SJC_foF2_SYM_H__nT_.png">
</div>

<div align="center">
  <h4><strong>foF2 × Vsw</strong></h4>
  <img src="images/WCOH_SJC_foF2_Vsw__km_s_.png">
</div>

---

### h'F × OMNI

<div align="center">
  <h4><strong>h'F × AE</strong></h4>
  <img src="images/WCOH_SJC_h_F_AE__nT_.png">
</div>

<div align="center">
  <h4><strong>h'F × Bz</strong></h4>
  <img src="images/WCOH_SJC_h_F_Bz__nT_.png">
</div>

<div align="center">
  <h4><strong>h'F × Density</strong></h4>
  <img src="images/WCOH_SJC_h_F_Density__n_cc_.png">
</div>

<div align="center">
  <h4><strong>h'F × Ey</strong></h4>
  <img src="images/WCOH_SJC_h_F_E__mV_m_.png">
</div>

<div align="center">
  <h4><strong>h'F × SYM-H</strong></h4>
  <img src="images/WCOH_SJC_h_F_SYM_H__nT_.png">
</div>

<div align="center">
  <h4><strong>h'F × Vsw</strong></h4>
  <img src="images/WCOH_SJC_h_F_Vsw__km_s_.png">
</div>

---

### hmF2 × OMNI

<div align="center">
  <h4><strong>hmF2 × AE</strong></h4>
  <img src="images/WCOH_SJC_hmF2_AE__nT_.png">
</div>

<div align="center">
  <h4><strong>hmF2 × Bz</strong></h4>
  <img src="images/WCOH_SJC_hmF2_Bz__nT_.png">
</div>

<div align="center">
  <h4><strong>hmF2 × Density</strong></h4>
  <img src="images/WCOH_SJC_hmF2_Density__n_cc_.png">
</div>

<div align="center">
  <h4><strong>hmF2 × Ey</strong></h4>
  <img src="images/WCOH_SJC_hmF2_E__mV_m_.png">
</div>

<div align="center">
  <h4><strong>hmF2 × SYM-H</strong></h4>
  <img src="images/WCOH_SJC_hmF2_SYM_H__nT_.png">
</div>

<div align="center">
  <h4><strong>hmF2 × Vsw</strong></h4>
  <img src="images/WCOH_SJC_hmF2_Vsw__km_s_.png">
</div>

---

## 🤝 Agradecimentos

Este projeto foi desenvolvido como parte de pesquisa em Física Espacial no IP&D/UNIVAP, com apoio do grupo de estudos em ionosfera e geomagnetismo.

## 📜 Licença

Este repositório está licenciado sob MIT License. Consulte o arquivo LICENSE para mais informações.
