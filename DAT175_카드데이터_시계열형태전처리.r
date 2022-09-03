library(magrittr)
library(tidyverse)
df = read.csv("/Users/seong-yeseul/Downloads/DATA_RE/native_group.csv")[-1, 2:7]
usec = df %>% select(v23, gb2, tour, time, usec) %>% spread(time, usec)
vlm = df %>% select(v23, gb2, tour, time, vlm) %>% spread(time, vlm)
write.csv(usec, "usec_ts.csv")
write.csv(vlm, "vlm_ts.csv")
