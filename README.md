## Diari Educació theme
This package provides a visual theme for R ggplot2 charts in Diari Educació style.

#### Installation:
```r
library(devtools)
install_github("vicoliveres/diarieducaciotheme")
```

#### Usage:
```r
library(diarieducaciotheme)

library(ggplot2)
library(ggthemes)

plot + theme_diarieducacio()
```

#### Arguments:

**base_size**: Base font and elements size (Default is 12)

**base_family**: Base font family (Default is "Open Sans")
```r
#Open Sans font may need to be installed
library(extrafont)
font_import(pattern="OpenSans")
```
