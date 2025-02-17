library(dbplyr)
library(dcmodify)

describe("sql",{
  d <- tbl_memdb(data.frame(age = c(11, 130), income = c(10, 10)), "ds")
  it("dumps sql",{
    m <- modifier(.file="test-sql.yml")
    skip_on_cran()
    expect_output_file(dump_sql(m, d, skip_date=TRUE), "dump.sql")
  })
})
