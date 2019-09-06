library(XML)
library(readr)

full_dirpath_wrong = "C:/Users/alvaro.picatoste/workspace/error/fóo_accent/"
full_dirpath_good = "C:/Users/alvaro.picatoste/workspace/error/foo_no_accent/"

rel_dirpath_wrong = "./fóo_accent/"
rel_dirpath_good = "./foo_no_accent/"

use_full = TRUE

if (use_full == TRUE) {
  dirpath_wrong <- full_dirpath_wrong
  dirpath_good <- full_dirpath_good
} else {
  dirpath_wrong <- rel_dirpath_wrong
  dirpath_good <- rel_dirpath_good
}

xml_fname = "pipas.xml"
xml_fpath_wrong = file.path(dirpath_wrong, xml_fname)
xml_fpath_good= file.path(dirpath_good, xml_fname)

csv_fname = "pipas.csv"  
csv_fpath_wrong= file.path(dirpath_wrong, csv_fname)
csv_fpath_good=file.path(dirpath_good, csv_fname)

txt_fname = "pipas.txt"
txt_fpath_wrong=file.path(dirpath_wrong, txt_fname)
txt_fpath_good=file.path(dirpath_good, txt_fname)

xlsx_fname = "pipas.xlsx"
xlsx_fpath_wrong=file.path(dirpath_wrong, xlsx_fname)
xlsx_fpath_good=file.path(dirpath_good, xlsx_fname)

my_good_xml <- xmlParse(xml_fpath_good)
my_good_csv <- read.csv(csv_fpath_good)
my_good_txt <- readLines(txt_fpath_good, n=1, warn=FALSE)
my_good_xlsx <- readxl::read_excel(xlsx_fpath_good)

my_wrong_xml <- xmlParse(xml_fpath_wrong)
my_wrong_csv <- read.csv(csv_fpath_wrong)
my_wrong_txt <- readLines(txt_fpath_wrong, n=1, warn=FALSE)
my_wrong_xlsx <- readxl::read_excel(xlsx_fpath_wrong)

