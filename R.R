# Tabitha Peter
# R libraries and functions for the time-to-event tutorial 

# Libraries (these are general tools we will use)
library(dplyr) # use this for data management
library(magrittr) # use this for data management 
library(readr)
library(tidyr)
library(ggplot2) # this is a tool for making plots and graphs 
library(viridis) # for color palette
library(arsenal)
library(gtsummary)
library(survival) # this has tools for survival analysis
library(ggsurvfit)
library(knitr) # this is a tool for writing reports 
library(kableExtra)

# Functions (these are tools I will write for this specific tutorial)
#' @param obj An object of class \code{summary.survfit}
#' @return A tibble with formatted summary information 
nth_year_survival <- function(obj){
  
  tab <- tibble(Time = obj$time,
         `Number at risk` = obj$n.risk,
         `Number of events` = obj$n.event,
         `Probability of survival` = obj$surv,
         `Standard Error` = obj$std.err,
         `95% CI (lower)` = obj$lower,
         `95% CI (upper)` = obj$upper)  
  
  return(tab)
}

