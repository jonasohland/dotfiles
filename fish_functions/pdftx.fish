function pdftx
	pdflatex -interaction=nonstopmode $argv > /dev/null
if test $status -eq 0
echo "yay"
else
echo "nay"
end
end
