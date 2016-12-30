#!C:/Perl/bin/perl.exe 
# Start script ...
print "Start ...\n";

$index_a = 0;
$index_b = 0;
$index_c = 0;
$index_d = 0;
$index_e = 0;
$index_f = 0;
$index_g = 0;
$index_h = 0;

$count = 0;
$i_hash = 0;
$j_hash = 0;

$count_var = 0;

$j_column_hash = 0;
$i_left_hash = 0;

$f_hash = 0;
$s_hash = 0;

$error_flags = 0;

@a = ("0","0","0","0","0","0","0","0",);
@b = ("0","0","0","0","0","0","0","0",);
@c = ("0","0","0","0","0","0","0","0",);
@d = ("0","0","0","0","0","0","0","0",);
@e = ("0","0","0","0","0","0","0","0",);
@f = ("0","0","0","0","0","0","0","0",);
@g = ("0","0","0","0","0","0","0","0",);
@h = ("0","0","0","0","0","0","0","0",);

@a_gh = ("0","0","0","0","0","0","0","0",);
@b_gh = ("0","0","0","0","0","0","0","0",);
@c_gh = ("0","0","0","0","0","0","0","0",);
@d_gh = ("0","0","0","0","0","0","0","0",);
@e_gh = ("0","0","0","0","0","0","0","0",);
@f_gh = ("0","0","0","0","0","0","0","0",);
@g_gh = ("0","0","0","0","0","0","0","0",);
@h_gh = ("0","0","0","0","0","0","0","0",);

%my_hash = {
        1  =>  { 
                     1 => $a_gh[0],
                     2 => $a_gh[1],
					 3 => $a_gh[2],
					 4 => $a_gh[3],
					 5 => $a_gh[4],
					 6 => $a_gh[5],
					 7 => $a_gh[6],
					 8 => $a_gh[7],
					 },
        2  =>  { 
                     1 => $b_gh[0],
                     2 => $b_gh[1],
					 3 => $b_gh[2],
					 4 => $b_gh[3],
					 5 => $b_gh[4],
					 6 => $b_gh[5],
					 7 => $b_gh[6],
					 8 => $b_gh[7],
                    },
        3  =>  { 
                     1 => $c_gh[0],
                     2 => $c_gh[1],
					 3 => $c_gh[2],
					 4 => $c_gh[3],
					 5 => $c_gh[4],
					 6 => $c_gh[5],
					 7 => $c_gh[6],
					 8 => $c_gh[7],
                    },
        4  =>  { 
                     1 => $d_gh[0],
                     2 => $d_gh[1],
					 3 => $d_gh[2],
					 4 => $d_gh[3],
					 5 => $d_gh[4],
					 6 => $d_gh[5],
					 7 => $d_gh[6],
					 8 => $d_gh[7],
                    },
        5  =>  { 
                     1 => $e_gh[0],
                     2 => $e_gh[1],
					 3 => $e_gh[2],
					 4 => $e_gh[3],
					 5 => $e_gh[4],
					 6 => $e_gh[5],
					 7 => $e_gh[6],
					 8 => $e_gh[7],
                    },
        6  =>  { 
                     1 => $f_gh[0],
                     2 => $f_gh[1],
					 3 => $f_gh[2],
					 4 => $f_gh[3],
					 5 => $f_gh[4],
					 6 => $f_gh[5],
					 7 => $f_gh[6],
					 8 => $f_gh[7],
                    },
        7  =>  { 
                     1 => $g_gh[0],
                     2 => $g_gh[1],
					 3 => $g_gh[2],
					 4 => $g_gh[3],
					 5 => $g_gh[4],
					 6 => $g_gh[5],
					 7 => $g_gh[6],
					 8 => $g_gh[7],
                    },
        8  =>  { 
                     1 => $h_gh[0],
                     2 => $h_gh[1],
					 3 => $h_gh[2],
					 4 => $h_gh[3],
					 5 => $h_gh[4],
					 6 => $h_gh[5],
					 7 => $h_gh[6],
					 8 => $h_gh[7],
                    },

    };
&set_frist;
print "counter : $count_var\n";

sub main_fun {

$a[$index_a] = "x";
&set_place(a_set);
&set_ghost(a_ghost);

$b[$index_b] = "x";
&check(b_sub);
&set_place(b_set);
&set_ghost(b_ghost);

$c[$index_c] = "x";
&check(c_sub);
&set_place(c_set);
&set_ghost(c_ghost);

$d[$index_d] = "x";
&check(d_sub);
&set_place(d_set);
&set_ghost(d_ghost);

$e[$index_e] = "x";
&check(e_sub);
&set_place(e_set);
&set_ghost(e_ghost);

$f[$index_f] = "x";
&check(f_sub);
&set_place(f_set);
&set_ghost(f_ghost);

$g[$index_g] = "x";
&check(g_sub);
&set_place(g_set);
&set_ghost(g_ghost);

$h[$index_h] = "x";
&check(h_sub);
&set_place(h_set);
&set_ghost(h_ghost);



if ($error_flags == 0) {
print "a -- @a\n";	
print "b -- @b\n";
print "c -- @c\n";
print "d -- @d\n";
print "e -- @e\n";
print "f -- @f\n";
print "g -- @g\n";
print "h -- @h\n";
print "--------------------\n"; 
print "counter : $count_var\n";
$count_var += 1;
}
$error_flags = 0;
} 

sub check {
	if ($_[0] eq "b_sub")    { 
							if ($index_b > 7) { $error_flags = 1;}
							$f_hash = 2; $s_hash = $index_b + 1; 
							if ($my_hash->{$f_hash}->{$s_hash} eq "#") {
							$index_b += 1;
							&check;	}
							}
	elsif ($_[0] eq "c_sub") { 
							if ($index_c > 7) { $error_flags = 1;}
							$f_hash = 3; $s_hash = $index_c + 1;
							if ($my_hash->{$f_hash}->{$s_hash} eq "#") {
							$index_c += 1;
							&check;	}
							}
	elsif ($_[0] eq "d_sub") {
							if ($index_d > 7) { $error_flags = 1;}
							$f_hash = 4; $s_hash = $index_d + 1;
							if ($my_hash->{$f_hash}->{$s_hash} eq "#") {
							$index_d += 1;
							&check;	}
							}
	elsif ($_[0] eq "e_sub") { 
							if ($index_e > 7) { $error_flags = 1;}
							$f_hash = 5; $s_hash = $index_e + 1;
							if ($my_hash->{$f_hash}->{$s_hash} eq "#") {
							$index_e += 1;
							&check;	}
							}
	elsif ($_[0] eq "f_sub") { 
							if ($index_f > 7) { $error_flags = 1;}
							$f_hash = 6; $s_hash = $index_f + 1;
							if ($my_hash->{$f_hash}->{$s_hash} eq "#") {
							$index_f += 1;
							&check;	}
							}
	elsif ($_[0] eq "g_sub") { 
							if ($index_g > 7) { $error_flags = 1;}
							$f_hash = 7; $s_hash = $index_g + 1;
							if ($my_hash->{$f_hash}->{$s_hash} eq "#") {
							$index_g += 1;
							&check;	}
							}
	elsif ($_[0] eq "h_sub") { 
							if ($index_h > 7) { $error_flags = 1;}
							$f_hash = 8; $s_hash = $index_h + 1;
							if ($my_hash->{$f_hash}->{$s_hash} eq "#") {
							$index_h += 1;
							&check;	}
							}


}
sub set_frist {
	for ($index_a=0; $index_a<=7; $index_a++) {
		for ($index_b=0; $index_b<=7; $index_b++) {
			for ($index_c=0; $index_c<=7; $index_c++) {
				for ($index_d=0; $index_d<=7; $index_d++) {
					for ($index_e=0; $index_e<=7; $index_e++) {
						for ($index_f=0; $index_f<=7; $index_f++) {
							for ($index_g=0; $index_g<=7; $index_g++) {
								for ($index_h=0; $index_h<=7; $index_h++) {
										&delete_value_hash;
										&main_fun; 
										}
								$index_h = 0;	
								}
							$index_g = 0;	
							}
						$index_f = 0;	
						}
					$index_e=0; 	
					}
				$index_d = 0;	
				}
		    $index_c = 0;	
			}
		$index_b = 0;
	}
}
sub set_place {
	if ($_[0] eq "a_set") { @a = ("0","0","0","0","0","0","0","0",); $a[$index_a] = "x";}
	elsif ($_[0] eq "b_set") { @b = ("0","0","0","0","0","0","0","0",); $b[$index_b] = "x";}
	elsif ($_[0] eq "c_set") { @c = ("0","0","0","0","0","0","0","0",); $c[$index_c] = "x";}
	elsif ($_[0] eq "d_set") { @d = ("0","0","0","0","0","0","0","0",); $d[$index_d] = "x";}
	elsif ($_[0] eq "e_set") { @e = ("0","0","0","0","0","0","0","0",); $e[$index_e] = "x";}
	elsif ($_[0] eq "f_set") { @f = ("0","0","0","0","0","0","0","0",); $f[$index_f] = "x";}
	elsif ($_[0] eq "g_set") { @g = ("0","0","0","0","0","0","0","0",); $g[$index_g] = "x";}
	elsif ($_[0] eq "h_set") { @h = ("0","0","0","0","0","0","0","0",); $h[$index_h] = "x";}
}
sub set_ghost {
	if ($_[0] eq "a_ghost") { $count = $index_a + 1;  
							$i_hash = 1; $j_hash = $count; 
							$j_column_hash = $count; $i_left_hash = $count;}
	elsif ($_[0] eq "b_ghost") { $count = $index_b + 1;  
							$i_hash = 2; $j_hash = $count; 
							$j_column_hash = $count; $i_left_hash = $count; }
	elsif ($_[0] eq "c_ghost") { $count = $index_c + 1;  
							$i_hash = 3; $j_hash = $count; 
							$j_column_hash = $count; $i_left_hash = $count; }
	elsif ($_[0] eq "d_ghost") { $count = $index_d + 1;  
							$i_hash = 4; $j_hash = $count; 
							$j_column_hash = $count; $i_left_hash = $count; }
	elsif ($_[0] eq "e_ghost") { $count = $index_e + 1;  
							$i_hash = 5; $j_hash = $count; 
							$j_column_hash = $count; $i_left_hash = $count; }
	elsif ($_[0] eq "f_ghost") { $count = $index_f + 1;  
							$i_hash = 6; $j_hash = $count; 
							$j_column_hash = $count; $i_left_hash = $count; }
	elsif ($_[0] eq "g_ghost") { $count = $index_g + 1;  
							$i_hash = 7; $j_hash = $count; 
							$j_column_hash = $count; $i_left_hash = $count; }
	elsif ($_[0] eq "h_ghost") { $count = $index_h + 1;  
							$i_hash = 8; $j_hash = $count; 
							$j_column_hash = $count; $i_left_hash = $count; }
	
	for ($i=1 ; $i<=8; $i++)
		{
		$my_hash->{$i_hash}->{$j_hash} = "#";
		$my_hash->{$i_hash}->{$j_column_hash} = "#";
		$my_hash->{$i_hash}->{$i_left_hash} = "#";
		$i_hash += 1;
		$j_hash -= 1;
		$i_left_hash += 1;
		}
}
sub delete_value_hash {
for ($i_del_hash=1; $i_del_hash<=8; $i_del_hash++)
	{
		for ($j_del_hash=1; $j_del_hash<=8; $j_del_hash++) 
			{
			$my_hash->{$i_del_hash}->{$j_del_hash} = "0";	
			}
	}
}