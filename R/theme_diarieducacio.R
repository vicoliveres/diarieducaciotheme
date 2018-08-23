#' Diari Educació theme
#'
#' This function customises a theme for Diari Educació charts
#' @param base_size Base font and elements size (Default is 12)
#' @param base_family Base font family (Default is "Open Sans" - may be needed to install with library(extrafont) font_import(pattern="OpenSans"))
#' @keywords theme
#' @import ggplot2
#' @import ggthemes
#' @export
#' @examples
#' theme_diarieducacio()

theme_diarieducacio <- function(base_size = 12, base_family = "Open Sans") {

  theme_foundation(base_size = base_size, base_family = base_family) + #basic theme from which to build new ones

  theme(
    #GENERAL: Set general colours and parameters, and add margins to whole chart
    line = element_line(colour = "#799aa8"),
    rect = element_rect(fill = "#2C4854", linetype = 0, colour = NA),
    text = element_text(colour = "#bad0d1"),
    plot.margin = unit(c(0.5, 0.5, 0.5, 0.5), "lines"),
    #AXIS: Modify text sizes and remove axis line and ticks
    axis.title = element_text(size = rel(0.9)),
    axis.text = element_text(),
    axis.ticks = element_blank(),
    axis.line = element_blank(),
    #LEGEND: Align the legend/s and the elements inside it/them
    legend.background = element_rect(),
    legend.position = "right",
    legend.direction = "vertical",
    legend.box = "vertical",
    legend.title = element_text(size = rel(0.9)),
    #GRID: Keep only some grid lines and add doted line style
    panel.grid.major = element_line(linetype = 3),
    panel.grid.minor = element_blank(),
    #LABELS: Adjust texts
    plot.title = element_text(hjust = 0, size = rel(1.3), face = "bold", colour = "white"),
    plot.caption = element_text(face = c("italic","bold"), hjust = c(0,1), family = c(base_family, "serif")) #There have to be two captions: the first is the source and the second the author "DIARI EDUCACIÓ"
    )
}
