<link rel="stylesheet" href="css/cmxform.css">
<script src="js/lib/jquery.min.js" type="text/javascript"></script>
<script src="js/lib/jquery.hotkeys-0.7.9.min.js" type="text/javascript"></script>
<script src="js/lib/jquery.validate.min.js" type="text/javascript"></script>
<script>
	$(document).ready(function () {
		// SUCCESS AJAX CALL, replace "success: false," by:     success : function() { callSuccessFunction() }, 
		function isTyping() {
			return $('input:focus, textarea:focus').length > 0;
		}

		// Disable shortcuts when typing in input fields
		jQuery(document).bind('keydown', 'Ctrl+s', function () {
			if (!isTyping()) {
				$('#form1').submit();
			}
			return false;
		});

		jQuery(document).bind('keydown', 'Ctrl+a', function () {
			if (!isTyping()) {
				window.location = "";
			}
			return false;
		});

		jQuery(document).bind('keydown', 'Ctrl+u', function () {
			if (!isTyping()) {
				window.location = "add_supplier.php";
			}
			return false;
		});

		jQuery(document).bind('keydown', 'Ctrl+0', function () {
			if (!isTyping()) {
				window.location = "dashboard.php";
			}
			return false;
		});

		jQuery(document).bind('keydown', 'Ctrl+1', function () {
			if (!isTyping()) {
				window.location = "add_purchase.php";
			}
			return false;
		});

		jQuery(document).bind('keydown', 'Ctrl+2', function () {
			if (!isTyping()) {
				window.location = "add_stock.php";
			}
			return false;
		});

		jQuery(document).bind('keydown', 'Ctrl+3', function () {
			if (!isTyping()) {
				window.location = "add_sales.php";
			}
			return false;
		});

		jQuery(document).bind('keydown', 'Ctrl+4', function () {
			if (!isTyping()) {
				window.location = "add_category.php";
			}
			return false;
		});

		jQuery(document).bind('keydown', 'Ctrl+5', function () {
			if (!isTyping()) {
				window.location = "add_supplier.php";
			}
			return false;
		});

		jQuery(document).bind('keydown', 'Ctrl+6', function () {
			if (!isTyping()) {
				window.location = "add_customer.php";
			}
			return false;
		});

		jQuery(document).bind('keydown', 'Ctrl+7', function () {
			if (!isTyping()) {
				window.location = "view_product.php";
			}
			return false;
		});

		jQuery(document).bind('keydown', 'Ctrl+8', function () {
			if (!isTyping()) {
				window.location = "view_sales.php";
			}
			return false;
		});

		jQuery(document).bind('keydown', 'Ctrl+9', function () {
			if (!isTyping()) {
				window.location = "view_purchase.php";
			}
			return false;
		});
		//$.validationEngine.loadValidation("#date")
		//alert($("#formID").validationEngine({returnIsValid:true}))
		//$.validationEngine.buildPrompt("#date","This is an example","error")	 		 // Exterior prompt build example								 // input prompt close example
		//$.validationEngine.closePrompt(".formError",true) 							// CLOSE ALL OPEN PROMPTS
	});
</script>