% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_sql.R
\name{generate_sql_statement}
\alias{generate_sql_statement}
\title{generate_sql_statement}
\usage{
generate_sql_statement(sql_query, param_ls)
}
\arguments{
\item{sql_query}{A SQL query object that will be used as a base for SQL.
This SQL statement shouldn't have a WHERE clause; that WHERE clause will be added by the function.}

\item{param_ls}{A list of values for adding WHERE clauses. Each param should consist of a list
of 4 values: col_name, operator, value, and wrap. The wrap parameter is a boolean indicating
whether to wrap the value in parentheses (useful for IN clauses).}
}
\value{
query object
}
\description{
This function returns a new SQL query object after adding multiple
WHERE clauses in the provided SQL statement.
}
\examples{
sql_query <- "SELECT * FROM my_table"
params <- list(
  list(col_name = "name", operator = "=", value = "John", wrap = FALSE),
  list(col_name = "age", operator = ">", value = 30, wrap = FALSE),
  list(col_name = "status", operator = "IN", value = c("active", "pending"), wrap = TRUE)
)
generate_sql_statement(sql_query, params)

}
