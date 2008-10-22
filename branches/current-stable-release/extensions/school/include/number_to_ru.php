<? 
$_1_2[1]="one-a "; 
$_1_2[2]="two-e "; 

$_1_19[1]="one "; 
$_1_19[2]="two "; 
$_1_19[3]="three "; 
$_1_19[4]="four "; 
$_1_19[5]="five "; 
$_1_19[6]="six "; 
$_1_19[7]="seven "; 
$_1_19[8]="eight "; 
$_1_19[9]="nine "; 
$_1_19[10]="ten "; 

$_1_19[11]="eleven "; 
$_1_19[12]="twelve "; 
$_1_19[13]="thirteen "; 
$_1_19[14]="fourteen "; 
$_1_19[15]="fifteen "; 
$_1_19[16]="sixteen "; 
$_1_19[17]="seventeen "; 
$_1_19[18]="eighteen "; 
$_1_19[19]="nineteen "; 

$des[2]="twenty "; 
$des[3]="thirty "; 
$des[4]="forty "; 
$des[5]="fifty "; 
$des[6]="sixty "; 
$des[7]="seventy "; 
$des[8]="eighty "; 
$des[9]="ninety "; 

$hang[1]="one hundred "; 
$hang[2]="two hundreds "; 
$hang[3]="three hundreds "; 
$hang[4]="four hundreds "; 
$hang[5]="five hundreds "; 
$hang[6]="six hundreds "; 
$hang[7]="seven hundreds "; 
$hang[8]="eight hundreds "; 
$hang[9]="nine hundreds "; 

$namerub[1]="rouble "; 
$namerub[2]="rouble "; 
$namerub[3]="roubles "; 

$nametho[1]="thousand "; 
$nametho[2]="thousand-i "; 
$nametho[3]="thousand "; 

$namemil[1]="million "; 
$namemil[2]="million-a "; 
$namemil[3]="million-ov "; 

$namemrd[1]="billion "; 
$namemrd[2]="billion-a "; 
$namemrd[3]="billion-ov "; 

$kopeek[1]="kopeck-ka "; 
$kopeek[2]="kopeck-i "; 
$kopeek[3]="kopeck-ek "; 


function semantic($i,&$words,&$fem,$f)
{ 
	global $_1_2, $_1_19, $des, $hang, $namerub, $nametho, $namemil, $namemrd; 
	$words=""; 
	$fl=0; 
	if($i >= 100)
	{ 
		$jkl = intval($i / 100); 
		$words.=$hang[$jkl]; 
		$i%=100; 
	} 

	if($i >= 20)
	{ 
		$jkl = intval($i / 10); 
		$words.=$des[$jkl]; 
		$i%=10; 
		$fl=1; 
	} 
	switch($i)
	{ 
		case 1: $fem=1; break; 
		case 2: 
		case 3: 
		case 4: $fem=2; break; 
		default: $fem=3; break; 
	} 
	if( $i )
	{ 
		if( $i < 3 && $f > 0 )
		{ 
			if ( $f >= 2 ) 
			{ 
				$words.=$_1_19[$i]; 
			} 
			else { 
			$words.=$_1_2[$i]; 
			} 	
		} 
		else { 
			$words.=$_1_19[$i]; 
		} 
	} 
} 


function num2str($L)
{ 
	global $_1_2, $_1_19, $des, $hang, $namerub, $nametho, $namemil, $namemrd, $kopeek; 

	$s=" "; 
	$s1=" "; 
	$s2=" "; 
	$kop=intval( ( $L*100 - intval( $L )*100 )); 
	$L=intval($L); 
	if($L>=1000000000){ 
		$many=0; 
		semantic(intval($L / 1000000000),$s1,$many,3); 
		$s.=$s1.$namemrd[$many]; 
		$L%=1000000000; 
	} 

	if($L >= 1000000)
	{ 
		$many=0; 
		semantic(intval($L / 1000000),$s1,$many,2); 
		$s.=$s1.$namemil[$many]; 
		$L%=1000000; 
		if($L==0){ 
			$s.="rubles "; 
		} 
	} 

	if($L >= 1000)
	{ 
		$many=0; 
		semantic(intval($L / 1000),$s1,$many,1); 
		$s.=$s1.$nametho[$many]; 
		$L%=1000; 
		if($L==0)
		{ 
			$s.="rubles "; 
		} 
	} 

	if($L != 0)
	{ 
		$many=0; 
		semantic($L,$s1,$many,0); 
		$s.=$s1.$namerub[$many]; 
	} 

	if($kop > 0)
	{ 
		$many=0; 
		semantic($kop,$s1,$many,1); 
		$s.=$s1.$kopeek[$many]; 
	} 
	else { 
		$s.=" 00 kopecks"; 
	} 

	return $s; 
} 
?>
