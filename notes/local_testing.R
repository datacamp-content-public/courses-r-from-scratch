# In-script local testing of testwhat tests

# library("remotes")
# install_github("datacamp/testwhat")
library(testwhat)
# Result of pre-exercise code.
gender_data <- read.csv('http://bit.ly/gender-stats-data')

stu_code <- "
alex_main <- 8.95
billie_main <- 9.25
both_mains <- alex_main + billie_main
final_total <- both_mains ...
"

sol_code <- "
alex_main <- 8.95
billie_main <- 9.25
both_mains <- alex_main + billie_main
final_total <- both_mains + both_mains * 0.15
"

setup_state(sol_code=sol_code, stu_code=stu_code)
ex() %>%
    check_error(incorrect_msg="Did you replace the '...' in the example code?") %>%
    check_object("final_total") %>% check_equal()
