#!/usr/bin/env Rscript
library("ggplot2")

solicitudes <- c(30,30,30,50,50,50,100,100,100)
concurrencia <- c("25%","50%","75%","25%","50%","75%","25%","50%","75%")
tiempo <- c(294.087,251.733,227.563,204.296,250.128,279.178,269.658,228.497,244.729)

solicitudes.factor <- factor(solicitudes)
concurrencia.factor <- factor(concurrencia)

as.numeric(solicitudes.factor)
as.character(concurrencia.factor)

datos <- data.frame(solicitudes.factor, concurrencia.factor, tiempo)

ggplot(data = datos, aes(x = concurrencia.factor, y = tiempo, fill = solicitudes.factor)) +
  geom_bar(stat = "identity", position = position_dodge(), colour = "black") + 
  coord_cartesian(ylim=c(0, 300)) + 
  scale_y_continuous(breaks=seq(0, 300, 25)) + 
  scale_fill_discrete(name="Número de\nsolicitudes") + 
  xlab("Nivel de concurrencia") + ylab("Milisegundos") + ggtitle("Tiempo por solicitud concurrente") +
  theme(plot.title=element_text(face="bold", size=20),
        axis.title=element_text(size=14))

ggsave("gra_tsc.png")
