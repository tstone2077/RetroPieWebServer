<?
function getESpid() {
	$output=array();
	exec("pgrep -l -f emulationstation | grep -v pgrep | cut -f1 -d' '", $output);
	return $output;
}
?>
