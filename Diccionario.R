# Diccionario de Comandos



# Calculadora -------------------------------------------------------------

1 + 2    # Suma
2 - 3    # Resta
3 * 5    # Multiplicación
5 ^ 7    # Potencia
7 / 3    # División
7 %% 3   # Modulo
7 %/% 3  # Parte entera


# Asignaciones ------------------------------------------------------------

x <- 3    # Forma habitual (ALT -) o (CMD -)
y = 5     # Funciona pero no se recomienda

x         # Auto impresión 
print(y)  # Impresión explicita

x + y

x <- 10
x + y

z <- 3*x - y^2


# Tipos de Datos ----------------------------------------------------------

logico <- TRUE	  # Logical
entero <- 2L	  # Integer
numerico <- 3.5	  # Numeric
texto <- "Eva"	  # Character

class(entero)     # Clase del objeto

# Coerción
# lógico  -> entero  -> numérico -> texto 
# logical -> integer -> numeric  -> character

ejemplo1 <- c(TRUE, 2L, 3.5, "Eva")
class(ejemplo1)

ejemplo2 <- c(TRUE, 2L)
class(ejemplo2)

# Coerción explícita 
# as.<tipo>()

as.character()	# Cadena de texto
as.numeric()	  # Numérico
as.integer()	  # Entero
as.logical()	  # Lógico

mi.nombre <- 30

mi.nombre + 5
as.character(mi.nombre) + 5


# Datos Especiales --------------------------------------------------------

NA                # Not Available
1 + 2 + NA

NaN               # Not an Number
0 / 0
Inf - Inf

NULL              # Valor Perdido	
c()


# Tipos de Estructuras ----------------------------------------------------

# Vectores
# Estructura unidimensional que se compone de datos del mismo tipo

# Lógico
es.real <- c(TRUE, TRUE, F, T, TRUE, TRUE, TRUE)

# Numérico
edad.muerte <- c(87, 67, NA, 40, 70, 40, NA)

# Texto
nombre <- c("Nikola Tesla", "Marie Curie", "Robbie", "Ada Lovelace", 
            "Nina Simone", "John Lennon", "Leonardo da Vinci")

# Factor
# as.factor()
sexo <- as.factor(c("Hombre", "Mujer", "Indefinido", "Mujer", "Mujer", 
                    "Hombre", "Hombre"))

# Date
# as.Date() - Formato estandar yyyy-mm-dd 
nacimiento <- as.Date(c("1856-07-10", "1867-11-07", NA, "1815-12-10", 
                        "1933-02-21", "1940-10-19", "1452-04-05"))

# Lista
# Estructura unidimensional que se compone de datos de diferente tipo

registro <- list(TRUE, 87, "Nikola Tesla", as.factor("Hombre"), as.Date("1856-07-10"))

# Matrix
# Estructura bidimensional que se compone de datos del mismo tipo

matrix(1:15, nrow = 3)                 # Definir cuantas filas

matrix(1:15, ncol = 3)                 # Definir cuantas columnas

matrix(1:15, ncol = 5)                 # Por defecto se llena por filas

matrix(1:15, nrow = 5, byrow = FALSE)  # Llenar por columnas

# Data frame
# Estructura bidimensional que se compone de datos de diferente tipo

data.frame(1:3, c("Hugo", "Paco", "Luis"), c(T, T, F))

data.frame(Registro = 1:3, 
           Nombres = c("Hugo", "Paco", "Luis"), 
           Condicion =c(T, T, F))

datos <- data.frame(id = 1:7, 
                    nombre, 
                    es.real, 
                    sexo, 
                    fecha.nacimiento = nacimiento, 
                    edad.muerte)


# Manipulación ------------------------------------------------------------

letras <- c("a", "b", "c", "d", "e")

letras[1]             # Extracción de un elemento

letras[2:4]           # Extracción de varios elementos, consecutivos

letras[c(1, 5)]       # Extracción de varios elementos, puntuales

letras[-5]            # Eliminación de un elemento

letras[-1:-3]         # Extracción de varios elementos, consecutivos

letras[-c(2, 4)]      # Extracción de varios elementos, puntuales

letras[1] <- "m"      # Sustituye un elemento por otro 
letras

letras <- fix(letras) # Sustitución de elementos por interfaz
letras


# Probabilidad ------------------------------------------------------------

volado <- c("cara", "cruz")

sample(volado, 1)                 # Muestra simple

sample(volado, 10,                # Muestra con remplazo
       replace = TRUE)

sample(volado, 100,               # Muestra con remplazo y probabilidades
       replace = TRUE, 
       prob = c(0.7, 0.3))

factorial(5)                      # Factorial 

choose(5, 3)                      # Combinatoria de n en k


# Estadistica -------------------------------------------------------------

valores <- c(0.32, 0.36, 0.24, 0.11, 0.11, 0.44, 2.79, 2.99, 3.47, 0.23, 
             0.55, 3.21, 4.02, 0.23)

length(valores)                   # Longitud 

rev(valores)                      # Invertir el orden
sort(valores)                     # Orden de menor a mayor
sort(valores , decreasing = TRUE) # Orden de mayor a menor


# Medidas de Tendencia Central --------------------------------------------

valores2 <- c(valores, 55)
valores3 <- c(valores, NA)

mean(valores)                     # Media (promedio)

mean(valores2)                    
mean(valores2, trim = 0.1)        # Media ajustada al 10 %

mean(valores3)                    
mean(valores3, na.rm = TRUE)      # Media sin NA

median(valores)                   # Mediana
median(valores3, na.rm = TRUE)    # Mediana sin NA


table(valores)                    # Moda 


# Medidas de Tendencia No Central -----------------------------------------

min(valores)                      # Minimo
max(valores)                      # Maximo
range(valores)                    # Rango
diff(range(valores))

quantile(valores, probs = 0.1)            # Percentiles
quantile(valores, probs = c(0.25, 0.75))  # Percentiles

IQR(valores)                              # Rango intercuartílico


# Variabilidad ------------------------------------------------------------

var(valores)                      # Varianza Muestral
var(valores3, na.rm = TRUE)       # Varianza Muestral sin NA

sd(valores)                       # Desviación Estandar Muestral 
sd(valores3, na.rm = TRUE)        # Desviación Estandar Muestral sin NA

# Resumen Estadistico

summary(valores)      


# Tablas de Contingencia --------------------------------------------------

sexo <- sample(c("Hombre", "Mujer"), 1000, replace = T, prob = c(0.4, 0.6))
diagnostico <- sample(c("Positivo", "Negativo"), 1000, replace = T, prob = c(0.7, 0.3))

table(sexo)
table(diagnostico)

tabla <- table(sexo, diagnostico)      # Frecuencias absolutas
tabla

rowSums(tabla)                         # Suma por filas
colSums(tabla)                         # Suma por columnas

prop.table(tabla)                      # Frecuencias relativas
prop.table(tabla, 1)                   # 1 = relativo por filas
prop.table(tabla, 2)                   # 2 = relativo por columnas

edad <- sample(c("Joven", "Adulto", "Viejo"), 1000, replace = T, prob = c(0.2, 0.5, 0.3))

table(sexo, diagnostico, edad)
ftable(sexo, diagnostico, edad)


# Por acomodar ------------------------------------------------------------

dnorm(100, mean = 0, sd = 1)
pnorm(100, mean = 0, sd = 1)
qnorm(100, mean = 0, sd = 1)
rnorm(100, mean = 0, sd = 1)

cumsum(table(sexo))
cumsum(prop.table(tabla))                      # Frecuencias relativas


# Paquetes en RStudio -----------------------------------------------------

magic(3)

install.packages("magic")              # Instalar paquetes
library(magic)                         # Cargar paquetes


update.packages()                      # Actualizar paquetes
detach("package:magic", unload = TRUE) # Desconectar paquetes
remove.packages("magic")               # Desinstalar paquetes


# Paquetes interesantes

install.packages("tidyverse")          # https://www.tidyverse.org/packages/
install.packages("tinytex")


# Data Frame (Base de Datos) ---------------------------------------------

library(help = "datasets") # Información de bases incluidas en RStudio

iris                       # Data frame - Base de datos

class(iris)                # Clase de un objeto
dim(iris)                  # Dimensión de un objeto

head(iris)                 # Primeras fila (observaciones)
tail(iris, 3)              # Ultimas 3 fila (observaciones)

names(iris)                # Nombre de las variables (columnas)
ncol(iris)                 # Número de columnas
nrow(iris)                 # Número de filas

View(iris)                 # Visualización de la base

class(iris$Species)    
dim(iris$Sepal.Length) 

attach(iris)               # "atar" la base de datos
detach(iris)               # "desatar" la base de datos

levels(Species)            # Niveles de un objeto
nlevels(Species)           # Cantidad de niveles de un objeto

table(iris$Species)        # Tabla de frecuencias

str(iris)                  # Resumen de la base de datos
glimpse(iris)              # Resumen de la base de datos | requiere: dplyr


# Por ordenar -------------------------------------------------------------

unique(iris$Species)                # Elementos diferentes del objeto
length(unique(iris$Sepal.Length))   # Cantidad de elementos diferentes del objeto


# Lee varios .csv y crea un data frame -----------------------------------

library(tidyverse)                                              # Paquetes necesarios

datos <- list.files(pattern = "*.csv") %>%                      # directorio de trabajo
        map_df(~ read_csv(.)) 

ruta <- "C:/Users/aleja/Dropbox/Proyectos/R/Diccionario/Datos"

datos <- list.files(path = ruta, pattern = "*.csv") %>% # subcarpeta
        map_df(~ read_csv(.)) 