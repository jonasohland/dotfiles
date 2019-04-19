function ppdfmodernsans
	pandoc $argv --variable mainfont="Avenir"\
 --variable sansfont="Avenir"\
 --variable monofont="Inconsolata for Powerline"\
 --pdf-engine=xelatex\
 -o (noext $argv).pdf
end
