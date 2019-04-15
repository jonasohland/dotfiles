function setnprop
	set outfile $argv[1];
withnprop $argv > __temp__.ttmp; if test $status -eq 0;  mv __temp__.ttmp $outfile; end;
end
