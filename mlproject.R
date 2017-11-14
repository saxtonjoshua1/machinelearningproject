#Separate the categorical variables from the numeric variables
cat_var <- names(train)[which(sapply(train, is.character))]
num_var <- names(train)[which(sapply(train, is.numeric))]

num_var <- setdiff(num_var, c("id",))

dt_train_cat <- train[,.SD, .SDcols = cat_var]
dt_train_num <- train[,.SD, .SDcols = num_var]
