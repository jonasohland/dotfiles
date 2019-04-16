function makepdf
	pandoc $argv --pdf-engine=xelatex -o (noext $argv).pdf
end
