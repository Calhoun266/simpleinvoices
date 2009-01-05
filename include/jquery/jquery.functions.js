
	/*
	* Script: jquery.functions.js
	* Purpose: jquery/javascript functions for Simple Invoices 
	*/
	
	function selectItem(li) {
		if (li.extra)
	        document.getElementById("js_total").innerHTML= " " + li.extra[0] + " "
	}
	
	function formatItem(row) {
		return row[0] + "<br><i>" + row[1] + "</i>";
	}
	
	//delete line item in new invoice page
	function delete_row(row_number)
	{
	//	$('#row'+row_number).hide(); 
		$('#row'+row_number).remove(); 
	//	$('#notes_row'+row_number).remove(); 
	//	$('#table_row'+row_number).remove(); 
	}
	//dlete line item in EDIT page
	function delete_line_item(row_number)
	{
		$('.row'+row_number).hide(); 
		$('#quantity'+row_number).attr('value','0');
		$('#delete'+row_number).attr('value','yes');
	}
	
	/*old*/
	function invoice_product_change_price(si_product,row_number, quantity)
	{
		$('#gmail_loading').show();
		$.ajax({
			type: 'GET',
			url: './index.php?module=invoices&view=product_ajax&id='+si_product,
			data: "id: "+si_product,
			dataType: "json",
			success: function(data){
				$('#gmail_loading').hide();
				/*$('#state').html(data);*/
				/*if ( (quantity.length==0) || (quantity.value==null) ) */
				if (quantity=="") 
				{	
					$("#quantity"+row_number).attr("value","1");
				}
				$("#unit_price"+row_number).attr("value",data['unit_price']);
				$("#tax_id\\["+row_number+"\\]\\[0\\]").val(data['default_tax_id']);
				$("#tax_id\\["+row_number+"\\]\\[1\\]").val(data['default_tax_id_2']);
			}
		});
	}
	
	
	/*
	* Product Change - updates line item with product price info
	*/
	function invoice_product_change(product,row_number, quantity){
	
      	$('#gmail_loading').show();
		$.ajax({
			type: 'GET',
			url: './index.php?module=invoices&view=product_ajax&id='+product,
			data: "id: "+product,
			dataType: "json",
			success: function(data){
				$('#gmail_loading').hide();
				/*$('#state').html(data);*/
				/*if ( (quantity.length==0) || (quantity.value==null) ) */
				if (quantity=="") 
				{	
					$("#quantity"+row_number).attr("value","1");
				}
				$("#unit_price"+row_number).attr("value",data['unit_price']);
				$("#tax_id\\["+row_number+"\\]\\[0\\]").val(data['default_tax_id']);
				$("#tax_id\\["+row_number+"\\]\\[1\\]").val(data['default_tax_id_2']);
			}
	
   		 });
     };
     
     /*
	 * function: add_line_item
	 * purpose: to add a new line item in invoice creation page
	 * */
	function add_line_item()
	{
	
		//clone the last tr in the item table
		var clonedRow = $('#itemtable tbody.line_item:first').clone(); 
		var lastRow = $('#itemtable tbody.line_item:last').clone(); 
	
		//find the Id for the row from the quantity if
		var rowID_old = $("input[@id^='quantity']",clonedRow).attr("id");
		var rowID_last = $("input[@id^='quantity']",lastRow).attr("id");
		rowID_old = parseInt(rowID_old.slice(8)); //using 8 as 'quantity' has eight letters and want to get the number thats after that
		rowID_last = parseInt(rowID_last.slice(8)); //using 8 as 'quantity' has eight letters and want to get the number thats after that
	
		//create next row id
		var rowID_new = rowID_last + 1;
	
		console.log("Old row ID: "+rowID_old);
		console.log("New row ID:"+rowID_new);
		console.log("Last row ID:"+rowID_last);
	
		//update all the row items
		//
	
		clonedRow.attr("id","row"+rowID_new);
		//trash image
		clonedRow.find("#trash_link"+rowID_old).attr("id", "trash_link"+rowID_new);
		//clonedRow.find("#trash_link"+rowID_new).attr("onclick", "delete_row("+rowID_new+");");
		clonedRow.find("#trash_link"+rowID_new).attr("href", "#");
		clonedRow.find("#trash_link"+rowID_new).attr("rel", rowID_new);
	
		clonedRow.find("#trash_image"+rowID_old).attr("src", "./images/common/delete_item.png");
		clonedRow.find("#trash_image"+rowID_old).attr("title", "Delete this row");
	
	
		$("#quantity"+rowID_old, clonedRow).attr("id", "quantity"+rowID_new);
		$("#quantity"+rowID_new, clonedRow).val('');
	
		//clonedRow.find("#products"+rowID_old).removeAttr("onchange");
		clonedRow.find("#products"+rowID_old).attr("rel", rowID_new);
		clonedRow.find("#products"+rowID_old).attr("id", "products"+rowID_new);

		//clonedRow.find("#products"+rowID_new).attr("onChange", "invoice_product_change_price($(this).val(), "+rowID_new+", jQuery('#quantity"+rowID_new+"').val() )");
	
		$("#unit_price"+rowID_old, clonedRow).attr("id", "unit_price"+rowID_new);
		$("#unit_price"+rowID_new, clonedRow).val("");
	
		$("#description"+rowID_old, clonedRow).attr("id", "description"+rowID_new);
		$("#description"+rowID_new, clonedRow).val("");
	
		$("#tax_id\\["+rowID_old+"\\]\\[0\\]", clonedRow).attr("id", "tax_id["+rowID_new+"][0]");
		$("#tax_id\\["+rowID_old+"\\]\\[1\\]", clonedRow).attr("id", "tax_id["+rowID_new+"][1]");
	
		$('#itemtable').append(clonedRow);
	
	}
	
	
	function export_invoice(row_number,spreadsheet,wordprocessor){
	
	
		 $("#export_dialog").show();
		 $(".export_pdf").attr({ 
	          href: "index.php?module=export&view=pdf&id="+row_number,
	          onClick: "$(this).dialog('destroy')"
	        });
		 $(".export_doc").attr({ 
			  href: "index.php?module=invoices&view=template&id="+row_number+"&action=view&location=print&export="+wordprocessor
	        });	 
	      $(".export_xls").attr({ 
	          href: "index.php?module=invoices&view=template&id="+row_number+"&action=view&location=print&export="+spreadsheet,
	          onclick: "$().dialog('destroy')"
	        });							
		 $("#export_dialog").dialog({ 
		   modal: true, 
		   buttons: { 
	        "Cancel": function() { 
	            $(this).dialog("destroy"); 
	        }
	        },
		    overlay: { 
		        opacity: 0.5, 
		        background: "black" 
		    },
		    close:  function() { $(this).dialog("destroy")}
		});
	
	}
	
	function dialog_close(){
	         $(this).dialog("destroy"); 
	}
     
