# Basic vocalic triangle plot
#
# ARGUMENTS:
# d: a data frame or tibble
# var1: y axis values
# var2: x axis values
# t: title
# k: variation elements in the plot
#
# RETURN VALUE:
# A plot representing dataset variation elements k on a var2-var1 reverse scale.
#
reversePlot <- function(d, var2, var1, t, k) {
  ggplot2::ggplot(d, ggplot2::aes(x=var2, y=var1)) + 
    ggplot2::geom_point(ggplot2::aes(col=k), size=3) + 
    ggplot2::scale_colour_brewer(palette = "Spectral") + 
    ggplot2::scale_x_reverse() + ggplot2::scale_y_reverse() + 
    ggplot2::labs(y=var1, x=var2, title=t)
}

# Density plot
#
# ARGUMENTS:
# d: a data frame or tibble
# var: values for density representation
# t: title
# k: variation elements depending on var
# tk: name of k
#
# RETURN VALUE:
# A plot representing dataset density of var based on k
#
densityPlot <- function(d, var, t, k, tk) {
  ggplot2::ggplot(d, ggplot2::aes(var)) + 
    ggplot2::geom_density(ggplot2::aes(fill=as.factor(k)), alpha=0.8) + 
    ggplot2::scale_colour_brewer(palette = "Spectral") + 
    ggplot2::labs(title=t, fill=tk)
}
