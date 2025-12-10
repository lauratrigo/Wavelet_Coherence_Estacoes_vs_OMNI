# 🌐 Coerência Wavelet Ionosfera × Parâmetros Solares – ARG – Agosto 2017

Este repositório contém scripts MATLAB para calcular a **Coerência Wavelet Contínua (WCOH)** entre parâmetros **ionosféricos** e **parâmetros solares do OMNI** nas estações **Araguatins (TO), Palmas (TO) e São Luís (MA)** durante **agosto de 2017**.

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
wcoh_arg/
├── dados/
│ ├── mediasionosfericasARG.mat
│ └── dados_Omni_Tratados.txt
├── figuras_wcoh_arg/
│ ├── WCOH_foF2_Bz.png
│ ├── WCOH_hF_Vsw.png
│ └── ...
├── wcoherence_3estacoes.m
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

## 📈 Gráficos Gerados

### Araguatins (TO)

<!-- foF2 × OMNI -->
<div align="center">
  <h4><strong>foF2 × Bz</strong></h4>
  <img src="images/WCOH_ARG_foF2_Bz_ARG.png" alt="WCOH foF2 × Bz Araguatins" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>foF2 × Vsw</strong></h4>
  <img src="images/WCOH_ARG_foF2_Vsw_ARG.png" alt="WCOH foF2 × Vsw Araguatins" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>foF2 × Density</strong></h4>
  <img src="images/WCOH_ARG_foF2_Density_ARG.png" alt="WCOH foF2 × Density Araguatins" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>foF2 × Ey</strong></h4>
  <img src="images/WCOH_ARG_foF2_Ey_ARG.png" alt="WCOH foF2 × Ey Araguatins" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>foF2 × AE</strong></h4>
  <img src="images/WCOH_ARG_foF2_AE_ARG.png" alt="WCOH foF2 × AE Araguatins" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>foF2 × SYM-H</strong></h4>
  <img src="images/WCOH_ARG_foF2_SYMH_ARG.png" alt="WCOH foF2 × SYM-H Araguatins" style="width:80%; max-width:900px;">
</div>

<!-- h'F × OMNI -->
<div align="center">
  <h4><strong>h'F × Bz</strong></h4>
  <img src="images/WCOH_ARG_hF_Bz_ARG.png" alt="WCOH hF × Bz Araguatins" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>h'F × Vsw</strong></h4>
  <img src="images/WCOH_ARG_hF_Vsw_ARG.png" alt="WCOH hF × Vsw Araguatins" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>h'F × Density</strong></h4>
  <img src="images/WCOH_ARG_hF_Density_ARG.png" alt="WCOH hF × Density Araguatins" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>h'F × Ey</strong></h4>
  <img src="images/WCOH_ARG_hF_Ey_ARG.png" alt="WCOH hF × Ey Araguatins" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>h'F × AE</strong></h4>
  <img src="images/WCOH_ARG_hF_AE_ARG.png" alt="WCOH hF × AE Araguatins" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>h'F × SYM-H</strong></h4>
  <img src="images/WCOH_ARG_hF_SYMH_ARG.png" alt="WCOH hF × SYM-H Araguatins" style="width:80%; max-width:900px;">
</div>

<!-- hmF2 × OMNI -->
<div align="center">
  <h4><strong>hmF2 × Bz</strong></h4>
  <img src="images/WCOH_ARG_hmF2_Bz_ARG.png" alt="WCOH hmF2 × Bz Araguatins" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>hmF2 × Vsw</strong></h4>
  <img src="images/WCOH_ARG_hmF2_Vsw_ARG.png" alt="WCOH hmF2 × Vsw Araguatins" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>hmF2 × Density</strong></h4>
  <img src="images/WCOH_ARG_hmF2_Density_ARG.png" alt="WCOH hmF2 × Density Araguatins" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>hmF2 × Ey</strong></h4>
  <img src="images/WCOH_ARG_hmF2_Ey_ARG.png" alt="WCOH hmF2 × Ey Araguatins" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>hmF2 × AE</strong></h4>
  <img src="images/WCOH_ARG_hmF2_AE_ARG.png" alt="WCOH hmF2 × AE Araguatins" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>hmF2 × SYM-H</strong></h4>
  <img src="images/WCOH_ARG_hmF2_SYMH_ARG.png" alt="WCOH hmF2 × SYM-H Araguatins" style="width:80%; max-width:900px;">
</div>

---

### Jataí (GO)

<!-- foF2 × OMNI -->
<div align="center">
  <h4><strong>foF2 × Bz</strong></h4>
  <img src="images/WCOH_ARG_foF2_Bz_JAT.png" alt="WCOH foF2 × Bz Jatai" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>foF2 × Vsw</strong></h4>
  <img src="images/WCOH_ARG_foF2_Vsw_JAT.png" alt="WCOH foF2 × Vsw Jatai" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>foF2 × Density</strong></h4>
  <img src="images/WCOH_ARG_foF2_Density_JAT.png" alt="WCOH foF2 × Density Jatai" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>foF2 × Ey</strong></h4>
  <img src="images/WCOH_ARG_foF2_Ey_JAT.png" alt="WCOH foF2 × Ey Jatai" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>foF2 × AE</strong></h4>
  <img src="images/WCOH_ARG_foF2_AE_JAT.png" alt="WCOH foF2 × AE Jatai" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>foF2 × SYM-H</strong></h4>
  <img src="images/WCOH_ARG_foF2_SYMH_JAT.png" alt="WCOH foF2 × SYM-H Jatai" style="width:80%; max-width:900px;">
</div>

<!-- h'F × OMNI -->
<div align="center">
  <h4><strong>h'F × Bz</strong></h4>
  <img src="images/WCOH_ARG_hF_Bz_JAT.png" alt="WCOH hF × Bz Jatai" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>h'F × Vsw</strong></h4>
  <img src="images/WCOH_ARG_hF_Vsw_JAT.png" alt="WCOH hF × Vsw Jatai" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>h'F × Density</strong></h4>
  <img src="images/WCOH_ARG_hF_Density_JAT.png" alt="WCOH hF × Density Jatai" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>h'F × Ey</strong></h4>
  <img src="images/WCOH_ARG_hF_Ey_JAT.png" alt="WCOH hF × Ey Jatai" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>h'F × AE</strong></h4>
  <img src="images/WCOH_ARG_hF_AE_JAT.png" alt="WCOH hF × AE Jatai" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>h'F × SYM-H</strong></h4>
  <img src="images/WCOH_ARG_hF_SYMH_JAT.png" alt="WCOH hF × SYM-H Jatai" style="width:80%; max-width:900px;">
</div>

<!-- hmF2 × OMNI -->
<div align="center">
  <h4><strong>hmF2 × Bz</strong></h4>
  <img src="images/WCOH_ARG_hmF2_Bz_JAT.png" alt="WCOH hmF2 × Bz Jatai" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>hmF2 × Vsw</strong></h4>
  <img src="images/WCOH_ARG_hmF2_Vsw_JAT.png" alt="WCOH hmF2 × Vsw Jatai" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>hmF2 × Density</strong></h4>
  <img src="images/WCOH_ARG_hmF2_Density_JAT.png" alt="WCOH hmF2 × Density Jatai" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>hmF2 × Ey</strong></h4>
  <img src="images/WCOH_ARG_hmF2_Ey_JAT.png" alt="WCOH hmF2 × Ey Jatai" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>hmF2 × AE</strong></h4>
  <img src="images/WCOH_ARG_hmF2_AE_JAT.png" alt="WCOH hmF2 × AE Jatai" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>hmF2 × SYM-H</strong></h4>
  <img src="images/WCOH_ARG_hmF2_SYMH_JAT.png" alt="WCOH hmF2 × SYM-H Jatai" style="width:80%; max-width:900px;">
</div>

---

### São José dos Campos (SP)

<!-- foF2 × OMNI -->
<div align="center">
  <h4><strong>foF2 × Bz</strong></h4>
  <img src="images/WCOH_ARG_foF2_Bz_SJC.png" alt="WCOH foF2 × Bz SaoJoseDosCampos" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>foF2 × Vsw</strong></h4>
  <img src="images/WCOH_ARG_foF2_Vsw_SJC.png" alt="WCOH foF2 × Vsw SaoJoseDosCampos" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>foF2 × Density</strong></h4>
  <img src="images/WCOH_ARG_foF2_Density_SJC.png" alt="WCOH foF2 × Density SaoJoseDosCampos" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>foF2 × Ey</strong></h4>
  <img src="images/WCOH_ARG_foF2_Ey_SJC.png" alt="WCOH foF2 × Ey SaoJoseDosCampos" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>foF2 × AE</strong></h4>
  <img src="images/WCOH_ARG_foF2_AE_SJC.png" alt="WCOH foF2 × AE SaoJoseDosCampos" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>foF2 × SYM-H</strong></h4>
  <img src="images/WCOH_ARG_foF2_SYMH_SJC.png" alt="WCOH foF2 × SYM-H SaoJoseDosCampos" style="width:80%; max-width:900px;">
</div>

<!-- h'F × OMNI -->
<div align="center">
  <h4><strong>h'F × Bz</strong></h4>
  <img src="images/WCOH_ARG_hF_Bz_SJC.png" alt="WCOH hF × Bz SaoJoseDosCampos" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>h'F × Vsw</strong></h4>
  <img src="images/WCOH_ARG_hF_Vsw_SaoJoseDosCampos.png" alt="WCOH hF × Vsw SaoJoseDosCampos" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>h'F × Density</strong></h4>
  <img src="images/WCOH_ARG_hF_Density_SaoJoseDosCampos.png" alt="WCOH hF × Density SaoJoseDosCampos" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>h'F × Ey</strong></h4>
  <img src="images/WCOH_ARG_hF_Ey_SaoJoseDosCampos.png" alt="WCOH hF × Ey SaoJoseDosCampos" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>h'F × AE</strong></h4>
  <img src="images/WCOH_ARG_hF_AE_SaoJoseDosCampos.png" alt="WCOH hF × AE SaoJoseDosCampos" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>h'F × SYM-H</strong></h4>
  <img src="images/WCOH_ARG_hF_SYMH_SaoJoseDosCampos.png" alt="WCOH hF × SYM-H SaoJoseDosCampos" style="width:80%; max-width:900px;">
</div>

<!-- hmF2 × OMNI -->
<div align="center">
  <h4><strong>hmF2 × Bz</strong></h4>
  <img src="images/WCOH_ARG_hmF2_Bz_SaoJoseDosCampos.png" alt="WCOH hmF2 × Bz SaoJoseDosCampos" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>hmF2 × Vsw</strong></h4>
  <img src="images/WCOH_ARG_hmF2_Vsw_SaoJoseDosCampos.png" alt="WCOH hmF2 × Vsw SaoJoseDosCampos" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>hmF2 × Density</strong></h4>
  <img src="images/WCOH_ARG_hmF2_Density_SaoJoseDosCampos.png" alt="WCOH hmF2 × Density SaoJoseDosCampos" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>hmF2 × Ey</strong></h4>
  <img src="images/WCOH_ARG_hmF2_Ey_SaoJoseDosCampos.png" alt="WCOH hmF2 × Ey SaoJoseDosCampos" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>hmF2 × AE</strong></h4>
  <img src="images/WCOH_ARG_hmF2_AE_SaoJoseDosCampos.png" alt="WCOH hmF2 × AE SaoJoseDosCampos" style="width:80%; max-width:900px;">
</div>
<div align="center">
  <h4><strong>hmF2 × SYM-H</strong></h4>
  <img src="images/WCOH_ARG_hmF2_SYMH_SaoJoseDosCampos.png" alt="WCOH hmF2 × SYM-H SaoJoseDosCampos" style="width:80%; max-width:900px;">
</div>




## 🤝 Agradecimentos

Este projeto foi desenvolvido como parte de pesquisa em Física Espacial no IP&D/UNIVAP, com apoio do grupo de estudos em ionosfera e geomagnetismo.

## 📜 Licença

Este repositório está licenciado sob MIT License. Consulte o arquivo LICENSE para mais informações.
