all: words.en.html

clean:
	rm -f words.en.txt words.en.length words.en.html
	
words.en.crlf.txt:
	curl -o words.en.crlf.txt http://www-01.sil.org/linguistics/wordlists/english/wordlist/wordsEn.txt

words.en.txt: words.en.crlf.txt
	tr -d '\r' <words.en.crlf.txt >words.en.txt
	
words.en.length: words.en.txt
	awk '{print length}' words.en.txt >words.en.length
	
words.en.html: words.en.length words.en.rmd
	Rscript -e 'rmarkdown::render("words.en.rmd")'