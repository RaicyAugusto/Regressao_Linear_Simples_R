# Regressão  Linear Simples

#Instalar blibiotecas necessárias:

install.packages(c("caTools", "ggplot2"))
library(ggplot2)
library(caTools)

# Importar o conjunto de dados

dataset = read.csv('Salary_Data.csv')

#Dividindo o conjunto de dados em conjunto de treinamento e conjunto de teste

set.seed(123)
split = sample.split(dataset$Salary, SplitRatio = 2/3)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

# Ajustando a regressão linear simples ao conjunto de treinamento

regressor = lm(formula = Salary ~ YearsExperience,
               data = training_set)

#Prevendo os resultados do conjunto de testes

y_pred = predict(regressor, newdata = test_set)

#Visualizando os resultados do conjunto de treinamento

ggplot() +
  geom_point(aes(x = training_set$YearsExperience, y = training_set$Salary),
             colour = 'red') + 
  geom_line(aes(x = training_set$YearsExperience, y = predict(regressor, newdata = training_set)),
            colour = 'blue') + 
  ggtitle('Salary vs Experience(Training set)') +
  xlab('Years of experience') + 
  ylab('Salary')

#Visualizando os resultados do conjunto de teste

ggplot() +
  geom_point(aes(x = test_set$YearsExperience, y = test_set$Salary),
             colour = 'red') + 
  geom_line(aes(x = training_set$YearsExperience, y = predict(regressor, newdata = training_set)),
            colour = 'blue') + 
  ggtitle('Salary vs Experience(Test set)') +
  xlab('Years of experience') + 
  ylab('Salary')
  



