<form name="frmpost" action="index.php?module=system_defaults&amp;view=save" method="post" onsubmit="return frmpost_Validator(this)">

		<b>{$LANG.system_preferences}</b>
 <hr></hr>

<table align="center">

        <tr>
                <td><br></td>
        </tr>
        <tr>
        <td class="details_screen">{$description}</td><td>{$value}</td>
        </tr>
        <tr>
                <td><br></td>
        </tr>

</tr>
</tr>
</table>
<!-- </div> -->
<table class="buttons" align="center">
    <tr>
        <td>
            <button type="submit" class="positive" name="submit" value="{$LANG.save}">
                <img class="button_img" src="./images/common/tick.png" alt=""/> 
                {$LANG.save}
            </button>
			<input type="hidden" name="name" value="{$default}">
            <input type="hidden" name="op" value="update_system_defaults">
        
            <a href="./index.php?module=system_defaults&view=manage" class="negative">
                <img src="./images/common/cross.png" alt=""/>
                {$LANG.cancel}
            </a>
    
        </td>
    </tr>
 </table>
 	

</form>
