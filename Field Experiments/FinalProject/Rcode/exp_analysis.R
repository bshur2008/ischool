
require(plyr); require(reshape2)
file1 <- '../Data/CombinatoricsPilot_clipped_header.csv'
file2 <- '../Data/CombinatoricsPilot_08122015_clipped_header.csv'
comb <- read.csv(file1,header=T)
comb2 <- read.csv(file2,header=T)
Renamecols1 <- function(df) {
  colnames(df)<- c(
    "ResponseID",
    "ResponseSet",
    "Name",
    "ExternalDataReference",
    "EmailAddress",
    "IPAddress",
    "Status",
    "StartDate",
    "EndDate",
    "Finished",
    "random",
    "leveledfclick",
    "leveledlclick",
    "leveledpagesubmit",
    "leveledclickcount",
    "leveled",
    "skillmathfclick",
    "skillmathlclick",
    "skillmathpagesubmit",
    "skillmathclickcount",
    "skillmath",
    "englishreadingfclick",
    "englishreadinglclick",
    "englishreadingpagesubmit",
    "englishreadingclickcount",
    "englishreading",
    "englishlisteningfclick",
    "englishlisteninglclick",
    "englishlisteningpagesubmit",
    "englishlisteningclickcount",
    "englishlistening",
    "ageyearsfclick",
    "ageyearslclick",
    "ageyearspagesubmit",
    "ageyearsclickcount",
    "ageyears",
    "gender1mfclick",
    "gender1mlclick",
    "gender1mpagesubmit",
    "gender1mclickcount",
    "gender1m",
    "countrybirthfclick",
    "countrybirthlclick",
    "countrybirthpagesubmit",
    "countrybirthclickcount",
    "countrybirth",
    "countryresidencefclick",
    "countryresidencelclick",
    "countryresidencepagesubmit",
    "countryresidenceclickcount",
    "countryresidence",
    "SurveyBegin",
    "pre1_10fclick",
    "pre1_10lclick",
    "pre1_10pagesubmit",
    "pre1_10clickcount",
    "pre1_10",
    "pre2_10fclick",
    "pre2_10lclick",
    "pre2_10pagesubmit",
    "pre2_10clickcount",
    "pre2_10",
    "pre3_6fclick",
    "pre3_6lclick",
    "pre3_6pagesubmit",
    "pre3_6clickcount",
    "pre3_6",
    "pre4_10fclick",
    "pre4_10lclick",
    "pre4_10pagesubmit",
    "pre4_10clickcount",
    "pre4_10",
    "pre5_cfclick",
    "pre5_clclick",
    "pre5_cpagesubmit",
    "pre5_cclickcount",
    "pre5_c",
    "pre6_4fclick",
    "pre6_4lclick",
    "pre6_4pagesubmit",
    "pre6_4clickcount",
    "pre6_4",
    "textmathfclick",
    "textmathlclick",
    "textmathpagesubmit",
    "textmathclickcount",
    "textmath",
    "videomathfclick",
    "videomathlclick",
    "videomathpagesubmit",
    "videomathclickcount",
    "videomath",
    "placebofclick",
    "placebolclick",
    "placebopagesubmit",
    "placeboclickcount",
    "placebo",
    "post1_15fclick",
    "post1_15lclick",
    "post1_15pagesubmit",
    "post1_15clickcount",
    "post1_15",
    "post2_3fclick",
    "post2_3lclick",
    "post2_3pagesubmit",
    "post2_3clickcount",
    "post2_3",
    "post3_6fclick",
    "post3_6lclick",
    "post3_6pagesubmit",
    "post3_6clickcount",
    "post3_6",
    "post4_35fclick",
    "post4_35lclick",
    "post4_35pagesubmit",
    "post4_35clickcount",
    "post4_35",
    "post5_cfclick",
    "post5_clclick",
    "post5_cpagesubmit",
    "post5_cclickcount",
    "post5_c",
    "post6_4fclick",
    "post6_4lclick",
    "post6_4pagesubmit",
    "post6_4clickcount",
    "post6_4",
    "confirmationcode",
    "LocationLatitude",
    "LocationLongitude",
    "LocationAccuracy"
  )
  return(df)
}

Renamecols2 <- function(df) {
  colnames(df)<- c(
    "ResponseID",
    "ResponseSet",
    "Name",
    "ExternalDataReference",
    "EmailAddress",
    "IPAddress",
    "Status",
    "StartDate",
    "EndDate",
    "Finished",
    "random",
    "leveledfclick",
    "leveledlclick",
    "leveledpagesubmit",
    "leveledclickcount",
    "leveled",
    "skillmathfclick",
    "skillmathlclick",
    "skillmathpagesubmit",
    "skillmathclickcount",
    "skillmath",
    "englishreadingfclick",
    "englishreadinglclick",
    "englishreadingpagesubmit",
    "englishreadingclickcount",
    "englishreading",
    "englishlisteningfclick",
    "englishlisteninglclick",
    "englishlisteningpagesubmit",
    "englishlisteningclickcount",
    "englishlistening",
    "ageyearsfclick",
    "ageyearslclick",
    "ageyearspagesubmit",
    "ageyearsclickcount",
    "ageyears",
    "gender1mfclick",
    "gender1mlclick",
    "gender1mpagesubmit",
    "gender1mclickcount",
    "gender1m",
    "countrybirthfclick",
    "countrybirthlclick",
    "countrybirthpagesubmit",
    "countrybirthclickcount",
    "countrybirth",
    "countryresidencefclick",
    "countryresidencelclick",
    "countryresidencepagesubmit",
    "countryresidenceclickcount",
    "countryresidence",
    "SurveyBegin",
    "pre1_10fclick",
    "pre1_10lclick",
    "pre1_10pagesubmit",
    "pre1_10clickcount",
    "pre1_10",
    "pre2_10fclick",
    "pre2_10lclick",
    "pre2_10pagesubmit",
    "pre2_10clickcount",
    "pre2_10",
    "pre3_6fclick",
    "pre3_6lclick",
    "pre3_6pagesubmit",
    "pre3_6clickcount",
    "pre3_6",
    "pre4_10fclick",
    "pre4_10lclick",
    "pre4_10pagesubmit",
    "pre4_10clickcount",
    "pre4_10",
    "pre5_cfclick",
    "pre5_clclick",
    "pre5_cpagesubmit",
    "pre5_cclickcount",
    "pre5_c",
    "pre6_4fclick",
    "pre6_4lclick",
    "pre6_4pagesubmit",
    "pre6_4clickcount",
    "pre6_4",
    "textmathfclick",
    "textmathlclick",
    "textmathpagesubmit",
    "textmathclickcount",
    "textmath",
    "videomathfclick",
    "videomathlclick",
    "videomathpagesubmit",
    "videomathclickcount",
    "videomath",
    #"placebofclick",
    #"placebolclick",
    #"placebopagesubmit",
    #"placeboclickcount",
    #"placebo",
    "post1_15fclick",
    "post1_15lclick",
    "post1_15pagesubmit",
    "post1_15clickcount",
    "post1_15",
    "post2_3fclick",
    "post2_3lclick",
    "post2_3pagesubmit",
    "post2_3clickcount",
    "post2_3",
    "post3_6fclick",
    "post3_6lclick",
    "post3_6pagesubmit",
    "post3_6clickcount",
    "post3_6",
    "post4_35fclick",
    "post4_35lclick",
    "post4_35pagesubmit",
    "post4_35clickcount",
    "post4_35",
    "post5_cfclick",
    "post5_clclick",
    "post5_cpagesubmit",
    "post5_cclickcount",
    "post5_c",
    "post6_4fclick",
    "post6_4lclick",
    "post6_4pagesubmit",
    "post6_4clickcount",
    "post6_4",
    "firstclick22",
    "firstlast22",
    "submit22",
    "count22",
    "nextq",
    "confirmationcode",
    "LocationLatitude",
    "LocationLongitude",
    "LocationAccuracy"
  )
  return(df)
}

cols <- c("ResponseID",
                    "ResponseSet",
                    "Name",
                    "ExternalDataReference",
                    "EmailAddress",
                    "IPAddress",
                    "Status",
                    "StartDate",
                    "EndDate",
                    "Finished",
                    "random",
                    "leveled",
                    "skillmath",
                    "englishreading",
                    "englishlistening",
                    "ageyears",
                    "gender1m",
                    "countrybirth",
                    "countryresidence",
                    "pre1_10",
                    "pre2_10",
                    "pre3_6",
                    "pre4_10",
                    "pre5_c",
                    "pre6_4",
                    "textmath",
                    "videomath",
                    "placebo",
                    "post1_15",
                    "post2_3",
                    "post3_6",
                    "post4_35",
                    "post5_c",
                    "post6_4",
                    "confirmationcode",
                    "LocationLatitude",
                    "LocationLongitude",
                    "LocationAccuracy")

comb <- Renamecols1(comb)[, cols]
comb$testgroup <- 1

comb2 <- Renamecols2(comb2)
comb2$placebo <- rep(NA,nrow(comb2))
comb2 <- comb2[, cols]
comb2$testgroup <- 2
comb <- rbind(comb,comb2)
comb[is.na(comb$textmath),'textmath'] <- 0
comb[is.na(comb$videomath),'videomath'] <- 0
comb[is.na(comb$placebo),'placebo'] <- 0

comb <- within(comb,{
  pre1 <- (pre1_10==10)*1
  pre1 <- ifelse(is.na(pre1),0,pre1)
  pre2 <- (pre2_10==10)*1
  pre2 <- ifelse(is.na(pre2),0,pre2)
  pre3 <- (pre3_6==6)*1
  pre3 <- ifelse(is.na(pre3),0,pre3)
  pre4 <- (pre4_10==10)*1
  pre4 <- ifelse(is.na(pre4),0,pre4)
  pre5 <- ifelse(pre5_c=='',NA,factor(pre5_c))
  pre5 <- as.numeric(tolower(as.character(pre5_c))=='c')*1
  pre5 <- ifelse(is.na(pre5),0,pre5)
  pre6 <- (pre6_4==4)*1
  pre6 <- ifelse(is.na(pre6),0,pre6)
  post1 <- (post1_15==15)*1
  post1 <- ifelse(is.na(post1),0,post1)
  post2 <- (post2_3==3)*1
  post2 <- ifelse(is.na(post2),0,post2)
  post3 <- (post3_6==6)*1
  post3 <- ifelse(is.na(post3),0,post3)
  post4 <- (post4_35==35)*1
  post4 <- ifelse(is.na(post4),0,post4)
  post5 <- ifelse(post5_c=='',NA,factor(post5_c))
  post5 <- as.numeric(tolower(as.character(post5_c))=='c')*1
  post5 <- ifelse(is.na(post5),0,post5)
  post6 <- (post6_4==4)*1
  post6 <- ifelse(is.na(post6),0,post6)
  prescore <- pre1+pre2+pre3+pre4+pre5+pre6
  postscore <- post1+post2+post3+post4+post5+post6
  d_in_d <- postscore-prescore
  testtime <- as.POSIXlt(EndDate)-as.POSIXlt(StartDate)
  countrybirth <- as.factor(tolower(countrybirth))
  countrybirth <- as.factor(ifelse(countrybirth=='united states','usa',as.character(countrybirth)))
  countrybirth <- as.factor(ifelse(countrybirth=='united states ','usa',as.character(countrybirth)))
  countrybirth <- as.factor(ifelse(countrybirth=='us','usa',as.character(countrybirth)))
  countrybirth <- as.factor(ifelse(countrybirth=='united states of america','usa',as.character(countrybirth)))
  countrybirth <- as.factor(ifelse(countrybirth=='the united states of america','usa',as.character(countrybirth)))
  countrybirth <- as.factor(ifelse(countrybirth=='the united states of america','usa',as.character(countrybirth)))
  countrybirth <- as.factor(ifelse(countrybirth=='uas','usa',as.character(countrybirth)))
  countrybirth <- as.factor(ifelse(countrybirth=='usa ','usa',as.character(countrybirth)))
  countryresidence <- as.factor(tolower(countryresidence))
  countryresidence <- as.factor(ifelse(countryresidence=='united states','usa',as.character(countryresidence)))
  countryresidence <- as.factor(ifelse(countryresidence=='united states ','usa',as.character(countryresidence)))
  countryresidence <- as.factor(ifelse(countryresidence=='us','usa',as.character(countryresidence)))
  countryresidence <- as.factor(ifelse(countryresidence=='united states of america','usa',as.character(countryresidence)))
  countryresidence <- as.factor(ifelse(countryresidence=='the united states of america','usa',as.character(countryresidence)))
  countryresidence <- as.factor(ifelse(countryresidence=='the united states of america','usa',as.character(countryresidence)))
  countryresidence <- as.factor(ifelse(countryresidence=='uas','usa',as.character(countryresidence)))
  countryresidence <- as.factor(ifelse(countryresidence=='usa ','usa',as.character(countryresidence)))
  gender <- as.character(ifelse(gender1m==1,'m','f'))
})

with(comb,mean(d_in_d[textmath==1],na.rm=T)-mean(d_in_d[placebo==1],na.rm=T))
with(comb,mean(d_in_d[videomath==1],na.rm=T)-mean(d_in_d[placebo==1],na.rm=T))
with(comb,mean(d_in_d[videomath==1],na.rm=T)-mean(d_in_d[textmath==1],na.rm=T))

ddply(comb,.(textmath,videomath,placebo),summarize,
      avg_testtime = mean(testtime,na.rm=T))

summary(with(comb,lm(d_in_d
                     ~textmath
                     +videomath
                     +placebo
                     +as.factor(leveled)
                     +as.factor(skillmath)
                     +as.factor(englishreading)
                     +as.factor(englishlistening)
#                      +ageyears
                     +gender
#                      +countrybirth
                     +as.factor(englishreading)*textmath 
                     +as.factor(englishlistening)*videomath
                     +as.factor(leveled)*textmath
                     +as.factor(leveled)*videomath
              )))

ddply(comb,.(textmath,videomath,placebo),summarize,
      avg_skillmath = mean(skillmath,na.rm=T))

summary(with(comb,aov(textmath+videomath+placebo~leveled+englishlistening+countrybirth+countryresidence+gender+englishreading+skillmath+ageyears)))
summary(with(comb,lm(videomath+textmath+placebo~leveled+englishlistening+countrybirth+countryresidence+gender+englishreading+skillmath+ageyears)))

comb$born_usa <- comb$countrybirth == 'usa'
comb$lives_usa <- comb$countryresidence == 'usa'
comb$is_female <- comb$gender=='f'

testvars <- c('textmath','videomath','placebo')
covars <- c('leveled'
            ,'skillmath'
            ,'englishreading'
            ,'englishlistening'
            ,'ageyears'
            ,'gender1m'
            ,'born_usa'
            ,'lives_usa'
            ,'is_female')

m <- melt(comb[,c(testvars,covars)],id=.(textmath,videomath,placebo))
dcast(m,textmath+videomath+placebo~variable,mean)


