results <- read.csv("C:/Users/DKO/Desktop/R/audit/responses.csv")

#results = results[!apply( results == "", 1, all), ] #removes all blanks
colnames(results)[2] = "FirstName"
colnames(results)[3] = "LastName"
colnames(results)[4] = "Email"
colnames(results)[5] = "Number"
colnames(results)[6] = "Affiliation"
colnames(results)[7] = "University"
colnames(results)[8] = "record"
colnames(results)[9] = "RecordOffice"
colnames(results)[10] = "TimeOfRequest"
colnames(results)[11] = "Outcome"
colnames(results)[12] = "Interaction"
colnames(results)[13] = "AskedIdentity"
colnames(results)[14] = "WrittenRequest"
colnames(results)[15] = "SentElsewhere"
colnames(results)[16] = "UsedEmail"
colnames(results)[17] = "EmailResponse"
colnames(results)[18] = "TimeSpent"

results$tmp <- factor(results$record)
results$Records <- NA

names <- c("foundation travel", "provost evaluation", "violent crimes", "education budget", "football tickets")

i=1
for (prog in levels(results$tmp)) {
  results$Records[results$record==prog] <- names[i]
  i=i+1
}

results$record <- NULL

results$tmp <- factor(results$Outcome)
results$RequestOutcome <- NA

names <- c("Denied", "Granted", "Granted", "Granted", "Legal Affairs", "Obstructed", "Obstructed")

i=1
for (prog in levels(results$tmp)) {
  results$RequestOutcome[results$Outcome==prog] <- names[i]
  i=i+1
}

results$Outcome <- NULL

results$tmp <- NULL

save(results, file = "C:/Users/DKO/Desktop/R/audit/results.rdata")
