use LWP::Simple;
use HTML::LinkExtor;

print "Start : getting HTMLs\n";
my $page = 0;
my $page_pg = 0;
my $page_number = 2;
my $i = 1;
my $y = 1;
my $folder = 1;
my $choose_pg = "1 of";

@cat_ids = (110,111,113,114,115,460,461);


foreach $var (@cat_ids) {
mkdir "web/mining/".$folder;
############# check next page ################
my $data_pg = get("http://yp.mn//listings.php?browse=profile&cid=$var");
open FILE_pg, ">web/mining/$folder/$var.pages.html" or die $!;
binmode(FILE_pg, ":utf8");
print FILE_pg $data_pg;
close FILE_pg;
open(INPUTFILE_pg, "< web/mining/$folder/$var.pages.html") or die "Can't open input file";
@read_pg=<INPUTFILE_pg>;
chomp @read_pg;    
my @greplines_pg = grep(/$choose_pg/,@read_pg);
my @values_pg = split(' ', $greplines_pg[0]);
print $values_pg[5],"\n";
$page = $values_pg[5]; 
$page_pg = $values_pg[5]; 
############# check next page ################
$URL = get ("http://yp.mn//listings.php?browse=profile&cid=$var");
loop_1:
$LinkExtor = HTML::LinkExtor->new(\&links); 
$LinkExtor->parse($URL);
	sub links {
		($tag, %links) = @_;
		if ($tag eq "a") {
			foreach $key (keys %links) {
				if ($key eq "href"){
						if ($links{$key} =~ m/company-/) { # get company names
							print "$links{$key}\n";
							my $data = get("$links{$key}");
							open FILE, ">web/mining/$folder/$i.html" or die $!;
							binmode(FILE, ":utf8");
							print FILE $data;
							close FILE;
							$i++;
						} # get company names
				} # if
			} # foreach
		} # if
	}	# sub links
if ($page != 1) { 
for ($y=1; $y<$page_pg; $y++) {
	print "OK\n";
	$URL=get ("http://yp.mn//listings.php?pg=$page_number&cid=$var&browse=profile"); 
	$page_number++; 
	$page--; 
	goto loop_1;
	} # for
} # if
$folder++;
$page_number = 2;
$i = 1;
} # foreach

