
{* if bill is updated or saved.*}

{if $smarty.post.name != "" } 
	{include file="../extensions/school/templates/default/branch/save.tpl"}
{else}
{* if  name was inserted *} 
	{if $smarty.post.name !=null} 
		<div class="validation_alert"><img src="./images/common/important.png"</img>
		You must enter a name for the branch</div>
		<hr />
	{/if}
<form name="frmpost" ACTION="index.php?module=branch&view=add" METHOD="POST">

<div id="top"><h3>Add Branch</h3></div>
 <hr />

<table align=center>
	<tr>
		<td class="details_screen">Branch name <a href="docs.php?t=help&p=required_field" rel="gb_page_center[350, 150]"><img src="./images/common/required-small.png"></img></a></td>
		<td><input type=text name="name" value="{$smarty.post.name}" size=50></td>
	</tr>
</table>
<!-- </div> -->
<hr />
<div style="text-align:center;">
	<input type="submit" name="id" value="Insert Branch">
	<input type="hidden" name="op" value="insert_branch">
</div>
</form>
	{/if}