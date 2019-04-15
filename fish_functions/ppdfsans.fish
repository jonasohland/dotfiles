function ppdfsans
	pandoc $argv --variable mainfont="Libertinus Sans"\
 --variable sansfont="Libertinus Sans"\
 --variable monofont="Inconsolata"\
 --pdf-engine=xelatex\
 -o (noext $argv).pdf
end
