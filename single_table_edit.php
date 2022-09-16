<?php
//$GLOBALS['nojunk']='';
require_once 'base/verify_login.php';
require_once 'single_table_edit_common.php';
	////////User code below/////////////////////
echo '		  <link rel="stylesheet" href="project_common.css">
		  <script src="project_common.js"></script>';	
$link=get_link($GLOBALS['main_user'],$GLOBALS['main_pass']);
$user=get_user_info($link,$_SESSION['login']);
//$auth=explode(',',$user['authorization']);
//print_r($auth);

if(isset($_POST['tname']))
{
	if($_POST['tname']=='outword')
	{
		$extra=array
		(
			['type'=>'print_lable','label'=>'','target'=>' target=_blank ','action'=>'action=print_lable.php']
		);
	}
	else
	{
		$extra=array();
	}
}
else
{
	$extra=array();
}

echo '<div class="two_column_one_by_two">';
	echo '<div>';
		list_available_tables($link);
	echo '</div><div>';
		manage_stf($link,$_POST,$show_crud='yes',$extra,$order_by=' order by  id desc ');
	echo '</div>';
echo '</div>';

echo '
<h5 class="bg-warning" data-toggle="collapse" data-target="#help" >Help</h5>
<ul id="help" class="collapse">
	<li><b>Add Blank:</b> Add new empty record. </li>
	<li>Click pencil icon <img width=30 src=img/edit.png>to edit blank record / existing record </li>
	<li>Click BIN icon <img width=30 src=img/delete.png> to delete  it</li>
	<li><b>search:</b> Find existing records.</li>
	<li><b>list:</b> List records.(Max 100)</li>
	<li><b>How do I edit old record?:</b> Click list/search. Go to record. Click pencil icon <img width=30 src=img/edit.png>to edit  </li>
	
</ul>


';
//////////////user code ends////////////////
tail();

//echo '<pre>';print_r($_POST);print_r($_FILES);echo '</pre>';

//////////////Functions///////////////////////

?>
