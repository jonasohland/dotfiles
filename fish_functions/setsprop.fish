function setsprop
	set outfile $argv[1];
withsprop $argv > __temp__.ttmp; if test $status -eq 0;  mv __temp__.ttmp $outfile; end;
end
