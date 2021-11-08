rm(list = ls())

## Setting Working Directory

setwd("/Users/saumyaashah/Text_As_Data_Final_Project")
getwd()

libraries <- c("ldatuning", "topicmodels", "ggplot2", "dplyr", "rjson", "quanteda", "lubridate", "parallel", "doParallel", "tidytext", "stringi", "tidyr","stm","quanteda.corpora")
lapply(libraries, require, character.only = TRUE)
library(quanteda.corpora)
library(quanteda)
library(quanteda.textmodels)
library(bursts)
library(lsa)
library(text2vec)
library(topicmodels)

song_lyrics <- read.csv("tcc_ceds_music.csv", stringsAsFactors = F)

unique(song_lyrics[c("genre")])

max(unique(song_lyrics[c("release_date")]))
max(unique(song_lyrics[c("release_date")]))

substr("abcdef", 2, 4)
round(song_lyrics$release_date, digits = -1)

df <- data.frame(age=c(5,6,9), marks=c(1,2,7), story=c(2,9,1))
df$max <- apply(df, 1, max)    
df

song_lyrics[song_lyrics$artist_name == "kanye west" & song_lyrics$topic == "night/time",1:2]

for(i in 1:3)
{
  print(i)
  #ldist[i] <- sum(colSums(adist(top10_orig_df[,i],top10_orig_df$hptopic)))
}

DF <- data.frame(V1=c(2,8,1),V2=c(7,3,5),V3=c(9,6,4))

colnames(DF)[apply(DF,1,which.max)]

