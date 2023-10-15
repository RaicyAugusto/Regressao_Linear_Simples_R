# Regressão Linear Simples em R
![R](https://img.shields.io/badge/-R%20Language-blue)

Este código em R realiza uma análise de regressão linear simples usando o conjunto de dados 'Salary_Data.csv' para prever salários com base na experiência. Ele inclui a instalação das bibliotecas necessárias, a importação e divisão do conjunto de dados em conjuntos de treinamento e teste, o ajuste do modelo de regressão linear, a previsão dos resultados do conjunto de teste e a visualização dos resultados.

## Dependências

- R (versão 3.0 ou superior)
- Bibliotecas R: caTools, ggplot2

Certifique-se de instalar essas bibliotecas antes de executar o código.

## Instruções de Uso

1. Instale as bibliotecas necessárias executando `install.packages(c("caTools", "ggplot2"))`.
2. Faça o download do arquivo 'Salary_Data.csv' e ajuste o caminho do arquivo no código para corresponder ao local do arquivo em sua máquina.
3. Execute o código linha por linha ou em um ambiente R para realizar a análise de regressão linear simples.

## Passos no Código

1. **Instalação de bibliotecas:** A instalação das bibliotecas necessárias é realizada usando `install.packages` seguido por `library` para carregar as bibliotecas.
2. **Importação de dados:** O conjunto de dados é importado usando `read.csv`.
3. **Divisão de dados:** O conjunto de dados é dividido em conjuntos de treinamento e teste usando `sample.split`.
4. **Ajuste do modelo de regressão linear:** O modelo de regressão linear é ajustado ao conjunto de treinamento usando `lm`.
5. **Previsão de resultados:** A previsão dos resultados do conjunto de teste é feita usando `predict`.
6. **Visualização de resultados:** Os resultados são visualizados usando `ggplot` para criar gráficos que mostram os resultados do conjunto de treinamento e do conjunto de teste.

Certifique-se de ajustar os caminhos dos arquivos e revisar os resultados para garantir que o código funcione corretamente com seus próprios conjuntos de dados.



