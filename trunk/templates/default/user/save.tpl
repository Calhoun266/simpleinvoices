{*
/*
* Script: save.tpl
* 	Biller save template
*
* Authors:
*	 Justin Kelly, Nicolas Ruflin
*
* Last edited:
* 	 2007-07-18
*
* License:
*	 GPL v2 or above
*/
*}

{if $saved == true }
	<br />
	 {$LANG.save_user_success}
	<br />
	<br />
{else}
	<br />
	 {$LANG.save_user_failure}
	<br />
	<br />
{/if}

{if $smarty.post.cancel == null }
	<meta http-equiv=refresh content=2;URL=index.php?module=user&view=manage>
{else}
	<meta http-equiv=refresh content=0;URL=index.php?module=user&view=manage>
{/if}
