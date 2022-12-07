library(tidyverse)
library(dplyr)
library(Lock5Data)

our_study <- SleepStudy |> 
  select(GPA, AverageSleep, Happiness, DASScore, ClassesMissed) |>
  relocate(AverageSleep, .before = GPA) |>
  mutate(ClassesMissed = as.double(ClassesMissed)) |>
  mutate(DASScore = as.double(DASScore)) |>
  mutate(Happiness = as.double(Happiness)) 

write.csv(our_study,"C:\\Users\\sarahjane\\Desktop\\our_study.csv", row.names = FALSE)
#"/Users/sarahjane/Desktop/