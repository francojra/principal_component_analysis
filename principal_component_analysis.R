
# Principal Component Analysis (PCA) -------------------------------------------------------------------------------------------------------
# Autoria do script: Jeanne Franco ---------------------------------------------------------------------------------------------------------
# Data: 31/05/22 ---------------------------------------------------------------------------------------------------------------------------
# Referência: https://www.datacamp.com/tutorial/pca-analysis-r -----------------------------------------------------------------------------

# Conceito ---------------------------------------------------------------------------------------------------------------------------------

### Análise de Componentes Pinricpais (PCA) é uma técnica usada para explorar dados,
### ela permite você visualizar melhor a variação presente em um dataset com muitas
### variáveis. É particularmente de ajuda para dados que tem muitas variáveis de
### cada amostra.

# Introdução a PCA -------------------------------------------------------------------------------------------------------------------------

### Quando os dados apresentam muitas variáveis, você não pode facilmente fazer os
### gráficos com esses dados brutos porque será difícil visuzlizar a tendência dos 
### dados. A PCA permite você ver umsa tendência geral dos dados, identificando quais
### amostras são similares umas as outras e quais são diferentes. Isso nos permite
### identificar grupos de amostras que são similares.

### A matemética básica por trás de uma PCA é a seguinte: você toma um conjunto de dados
### com muitas variáveis e você simplifica os dados por transformas suas variáveis 
### originais em um pequeno número de componentes principais.

### Componentes principais são as estruturas subjacentes dos dados. Elas são as direções
### onde existem maior variância, as direções onde os dados estão muito espalhados. Isso
### significa que tentamos encontrar a linha reta que melhor espalha os dados projetados.
### Esta é o primeira componente principal, a linha reta que mostra a variação mais 
### substancial nos dados.

### PCA é um tipo de transformação linear sobre um conjunto de dados que tem valores para
### um certo número de variáveis (coordenadas) para uma certa quantidade de espaço. Essa
### transformação linear ajusta esse conjunto de dados para um novo sistema de coordenadas,
### de forma que a mais sigbificante variância é encontrada na primeira coordenada, e cada
### subsequente coordenada é perpendicular a última e tem menor variância. Desta forma, 
### transforma-se um conjunto de x variáveis correlacionadas sobre y amostras para um 
### conjunto de p componentes principais não correlacionados sobre as mesmas amostras.

### Onde muitas variáveis se correlaciona umas as outras, elas irão todas contribuir 
### fortemente para o mesmo componente principal. Cada componente principal soma uma
### certa porcentagem da variação total dos dados. Onde suas variáveis são fortemente
### correlacionadas umas as outras, você irá ser capaz de aproximar mais complexidade
### aos seus dados apenas com poucos componentes principais. Quando você adiciona mais
### componentes principais, você resume ainda mais seu conjunto de dados original. Ao
### adicionar componentes principais, você torna a estimativa dos seus dados mais acurada,
### mas também mais complexa.

# Autovalores e autovetores ----------------------------------------------------------------------------------------------------------------

### Os autovalores e autovetores vem em pares. Simplesmente, um autovetor é uma direção,
### como vertical ou 45º, enquanto um autovalor é um número que informa quanta variância
### existe para os dados naquela direção. O autovetor com o mais autovalor é, portanto,
### o primeiro componente principal. Existem mais autovalores e autovetores que podem ser
### encontrados no conjunto de dados.

### O número de autovetores e autovalores que existe é igual ao número de dimensões
### que tem o conjuento de dados, Por exemplo, se existem duas variáveis, então o 
### conjunto de dados é bi-dimensional. Isso significa que existem dois autovetores 
### e autovalores. Similarmente, você irá encontrar três pares em um conjunto tri-
### dimensional.

### Podemos reenquadrar um conjunto de dados em termos destes auto-vectores e auto-valores 
### sem alterar a informação subjacente. Note-se que o reenquadramento de um conjunto de
### dados relativos a um conjunto de auto-valores e auto-vectores não implica 
### a alteração dos dados em si, apenas se está a olhar para eles de um ângulo diferente, 
### o que deveria representar melhor os dados.
