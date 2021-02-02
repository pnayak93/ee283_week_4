
library(dbplyr)
if (file.exists("mtcars.sqlite3"))
{
   file.remove("mtcars.sqlite3")
}
con <- DBI::dbConnect(RSQLite::SQLite(), "mtcars.sqlite3")
DBI::dbWriteTable(con, "mtcars", mtcars)
DBI::dbDisconnect(con)