require "m2utf8.plx";
while(<>){
	chop;
	s/<!ENTITY //;
	($key, $val) = split(/"/);
	$key =~ s/\s$//;
	if ($m2utf8{"&${key};"}){
		print "<!ENTITY $key \"", $m2utf8{"&${key};"}, "\" >\n";
	} else {
		print "<!ENTITY $key \"", $val, "\" >\n";
	}
	
}