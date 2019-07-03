#-- Name:
#-- Purpose:
#-- Author: 

#--Clear R environment and set environment options
rm(list=ls(all=T))
options(scipen = 200)

#--Bring in required packages
library(wrangleR)
library(RPostgreSQL)
library(lubridate)
library(dplyr)

#-------------------
#--BRING IN DATA
#-------------------

#--Establish connection to PostGreSQL using RPostGreSQL package and read in data as data frame
drv <- dbDriver("PostgreSQL")
con <- dbConnect(drv, dbname="db_name", host="127.0.0.1", port=5440, user='mwalker', password='password') #-- adapt to what is needed

#-- bring in data needed for report from rer and cdm in MIS 
df <- dbGetQuery(con, paste(readLines("folder/file.sql"), collapse = " "))
