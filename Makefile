# target to make the file report
all: 05_final_report.html

repdata.zip: 01_get_original_data.sh # add filenames for data and/or code this output depends on here
	bash 01_get_original_data.sh

	
repdata.dta: 02_clean_original_data.sh repdata.zip
	bash 02_clean_original_data.sh


05_final_report.html: 05_final_report.Rmd  repdata.dta
	Rscript -e "rmarkdown::render('05_final_report.Rmd')"

clean:
	rm -f 05_final_report.html 