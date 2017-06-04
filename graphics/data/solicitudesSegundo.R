#!/usr/bin/env Rscript
library("ggplot2")

solicitudes <- c(30,30,30,50,50,50,100,100,100)
concurrencia <- c("25%","50%","75%","25%","50%","75%","25%","50%","75%")
solicitudesSegundo <- c(3.402,3.976,4.470,4.898,4.000,3.583,3.728,4.496,4.197)

solicitudes.factor <- factor(solicitudes)
concurrencia.factor <- factor(concurrencia)

as.numeric(solicitudes.factor)
as.character(concurrencia.factor)

datos <- data.frame(solicitudes.factor, concurrencia.factor, solicitudesSegundo)

ggplot(data = datos, aes(x = concurrencia.factor, y = solicitudesSegundo, fill = solicitudes.factor)) +
  geom_bar(stat = "identity", position = position_dodge(), colour = "black") + 
  coord_cartesian(ylim=c(0, 5)) + 
  scale_y_continuous(breaks=seq(0, 5, 0.5)) + 
  scale_fill_discrete(name="Número de\nsolicitudes") + 
  xlab("Nivel de concurrencia") + ylab("Solicitudes/segundo") + ggtitle("Solicitudes por segundo") +
  theme(plot.title=element_text(face="bold", size=20),
        axis.title=element_text(size=14))

ggsave("gra_sps.png")
