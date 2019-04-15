function ppdf
	pandoc $argv --variable mainfont="Utopia Std"\
 --variable sansfont="Libertinus Sans"\
 --variable monofont="Inconsolata"\
 --pdf-engine=xelatex\
 -o (noext $argv).pdf
end
