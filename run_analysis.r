run_analysis <- function () {
    #setwd("c:/users/smfry_000/desktop/coursera/r/3_data_cleaning/capstone/Dataset")
    library(data.table)
    
    ## read files and create column for filename
    f <- fread("features.txt")
    al <- fread("activity_labels.txt")
    colnames(al)<- c("activity_label","description")
    xtrain <- fread("./train/X_train.txt")
    ytrain <- fread("./train/Y_train.txt")
    xtest <- fread("./test/X_test.txt")
    ytest <- fread("./test/Y_test.txt")

    ## set headers
    for (i in 1:nrow(f))
        colnames(xtrain)[i]=f[[2]][[i]]
    for (i in 1:nrow(f))
        colnames(xtest)[i]=f[[2]][[i]]
    colnames(ytest)[1]<-"activity_label"
    colnames(ytrain)[1]<-"activity_label"
    
    ## merge files
    train <- cbind(xtrain,ytrain)
    test <- cbind(xtest, ytest)
    
    ## select columns with mean or std in description
    colnms1 <- grep("mean", names(xtrain), value = TRUE)
    colnms2 <- grep("std", names(xtrain), value = TRUE)
    colnms <- c(colnms1,colnms2,"activity_label")
    
    train2 <- subset(train, select = colnms)
    test2 <- subset(test, select = colnms)
    
    #single file
    both <- rbind(train2,test2)
    
    ## Make data tables
    dt_both <- data.table(both)
    dt_lookup <- data.table(al)
    
    ## Setkeys
    setkey(dt_both,"activity_label")
    setkey(dt_lookup,"activity_label")
    
    ## Merge descriptions
    dt_both2 <- merge(dt_both,dt_lookup)
    
    ## Means of values
    tidy_file <- dt_both2[,lapply(.SD,mean),by=description]
    print(tidy_file)
    
    #prevwd <- getwd()
    #setwd("c:/users/smfry_000/desktop/coursera/r/3_data_cleaning/capstone")
    write.table(tidy_file, file = "tidy_file.txt", row.names = FALSE, sep = ",")
    #setwd(prevwd)
}