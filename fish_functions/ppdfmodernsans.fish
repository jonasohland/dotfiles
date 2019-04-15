function ppdfmodernsans
	pandoc $argv --variable mainfont="Avenir"\
 --variable sansfont="Avenir"\
 --variable monofont="Inconsolata"\
 --pdf-engine=xelatex\
 -o (noext $argv).pdf
end
