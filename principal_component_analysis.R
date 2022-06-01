
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

# Uma simples PCA --------------------------------------------------------------------------------------------------------------------------

### Nessa seção você fará uma PCA usando um conjunto simples de dados. Você irá usar
### o dataset mtcars disponível no R. Esse dataset consiste de dados de 32 modelos de
### carros, tomados de uma loja americana. Para cada carro existem 11 atributos, expressos
### em diferentes unidades. Elas são as seguintes:

# - mpg: Consumo de combustível (Miles per (US) gallon): os carros mais potentes e mais 
# pesados tendem a consumir mais combustível.

# - cyl: cilindro: Número de cilindros: os carros mais potentes têm frequentemente.
# mais cilindros

# - disp: Deslocamento (cu.in.): o volume combinado dos cilindros do motor.

# - hp: Potência bruta: esta é uma medida da potência gerada pelo carro.

# - drat: Relação eixo traseiro: descreve como uma volta do eixo motor corresponde 
# a uma volta das rodas. Valores mais elevados diminuirão a eficiência do combustível.

# - wt: Peso (1000 lbs).

# - qsec: 1/4 milha de tempo: a velocidade e aceleração dos carros.

# - vs: Bloco do motor: isto denota se o motor do veículo tem a forma 
# de um "V", ou se é uma forma recta mais comum.

# - am: Transmissão: denota se a transmissão do carro é automática (0) ou manual (1).

# - gear: engrenagem: Número de velocidades de avanço: os carros desportivos tendem 
# a ter mais velocidades.

# - carb: carburador: número de carburadores: associado a motores mais potentes.

# Computando os Componentes Principais -----------------------------------------------------------------------------------------------------

### Devido a PCA trabalhar melhor com dados numéricos, você irá excluir duas variáveis
### categóricas (vs e am). Então você terá uma matriz de 9 colunas e 32 linhas, que será
### usada na função da PCA prcomp(). Você também irá adicionar a função dois argumentos
### chamados center e scale como true. Então você pode visualizar o objeto criado com a 
### PCA usando a função summary().

mtcars

mtcars.pca <- prcomp(mtcars[,c(1:7,10,11)], center = TRUE, scale. = TRUE)

summary(mtcars.pca)
