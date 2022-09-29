library('rpart')
load('loan_model_example.RData')

coef_matrix <- table(actual =d$Loan_status, pred = predict(model, type = 'class'))
coef_matrix

accuracy <- sum(diag(coef_matrix)) / sum(coef_matrix)
accuracy

precision <- coef_matrix['BadLoan', 'BadLoan'] / sum(coef_matrix[, 'BadLoan'])
precision

recall <- coef_matrix['BadLoan', 'BadLoan'] / sum(coef_matrix['BadLoan',])
recall

fpr <- coef_matrix['GoodLoan', 'BadLoan'] / sum(coef_matrix['GoodLoan',])
fpr



