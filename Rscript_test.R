library(ggplot2)
library(ggridges)
library(dplyr)

# read in the file name from command line argument
args <- commandArgs(trailingOnly = TRUE)
file_name <- args[1]

# read in the data from the file
df <- read.csv(file_name)

# create 1st Density plot
png(file = paste0("Plots/Densityplot_", gsub(".csv", "", basename(file_name)), ".png"), width=800, height=500)

ggplot(df, aes(x = y, y = z, fill = after_stat(density), height = after_stat(density))) +
  geom_density_ridges_gradient(scale = 3, size = 0.3, rel_min_height = 0.01) +
  scale_fill_viridis_c(name = "Density", option = "C") +
  labs(title = paste0("Density plot of ", gsub(".csv", "", basename(file_name))), y = "z")

dev.off()


# create 2nd Polar plot
df_y <- data.frame(y = unique(df$y))
df_y <- arrange(df_y, y)
png(file = paste0("Plots/Polarplot_", gsub(".csv", "", basename(file_name)), ".png"), width=800, height=500)
if ("a" %in% colnames(df)) {
  ggplot(df) + 
    geom_jitter(aes(x = z, y = y, fill = x, color = a), width = 0.3, shape = 21, height = 0,size = 3) +
    scale_fill_gradient2(low = "blue", high = "red", mid = "white", midpoint = 0, limits = c(min(df$x), max(df$x))) +
    scale_color_discrete() +
    theme(axis.ticks.y = element_blank(), axis.text.y = element_blank(), axis.text.x = element_text(size = 15)) +coord_polar()+
    annotate('text', x = 0, y = df_y$y, label = as.character(df_y$y)) +
    labs(title = paste0("Polar plot of ", gsub(".csv", "", basename(file_name))))
  
} else {
  ggplot(df)+ 
    geom_jitter(aes(x=z, y=y, col=x),width = 0.3, height = 0,size=3) +
    scale_fill_gradient2(
      low = "blue", high = "red",
      mid = "white", midpoint = 0, 
      limits = c(min(df$x), max(df$x))
    ) +
    scale_color_gradient2(
      low = "blue", high = "red",
      midpoint = 0,
      limits = c(min(df$x), max(df$x)),
      na.value = "white"
    ) +
    theme(axis.ticks.y=element_blank(),
          axis.text.y=element_blank(),
          axis.text.x = element_text(size = 15))+
    coord_polar()+
    annotate('text', x = 0, y = df_y$y, label = as.character(df_y$y))+
    labs(title = paste0("Polar plot of ", gsub(".csv", "", basename(file_name))))
}
# 




