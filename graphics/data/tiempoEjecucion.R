#!/usr/bin/env Rscript
library("ggplot2")

solicitudes <- c(30,30,30,50,50,50,100,100,100)
concurrencia <- c("25%","50%","75%","25%","50%","75%","25%","50%","75%")
tiempo <- c(8.823,7.552,6.827,10.215,12.506,13.959,26.966,22.850,24.473)

solicitudes.factor <- factor(solicitudes)
concurrencia.factor <- factor(concurrencia)

as.numeric(solicitudes.factor)
as.character(concurrencia.factor)

datos <- data.frame(solicitudes.factor, concurrencia.factor, tiempo)

ggplot(data = datos, aes(x = concurrencia.factor, y = tiempo, fill = solicitudes.factor)) +
  geom_bar(stat = "identity", position = position_dodge(), colour = "black") + 
  coord_cartesian(ylim=c(0, 30)) + 
  scale_y_continuous(breaks=seq(0, 30, 2.5)) + 
  scale_fill_discrete(name="Número de\nsolicitudes") + 
  xlab("Nivel de concurrencia") + ylab("Segundos") + ggtitle("Tiempo de ejecución") +
  theme(plot.title=element_text(face="bold", size=20),
        axis.title=element_text(size=14))

ggsave("gra_te.png")
