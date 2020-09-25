# In-script local testing of testwhat tests

# library(remotes)
# install_github("datacamp/testwhat")
library(testwhat)
# Result of pre-exercise code.
gender_data <- read.csv('http://bit.ly/gender-stats-data')

stu_code <- "
alex_main <- 8.95
billie_main <- 9.25
both_mains <- alex_main + billie_main
final_total <- both_mains
"

sol_code <- "
alex_main <- 8.95
billie_main <- 9.25
both_mains <- alex_main + billie_main
final_total <- both_mains + both_mains * 0.15
"

setup_state(sol_code=sol_code, stu_code=stu_code)
state <- ex()
code <- state$get('student_code')
if (grepl('...', code, fixed=TRUE)) {
    check_error(state, incorrect_msg="Did you replace the '...' in the example code?")
}
ft_state <- check_object(state, "final_total")
st_env = state$get('student_env')
sl_env = state$get('solution_env')
msg <- if(st_env$final_total == sl_env$both_mains) 'Did you add the tip?' else NULL
check_equal(ft_state, incorrect_msg=msg)
