<script src="<?php echo base_url("assets") ?>/js/jquery.js"></script>
<script src="<?php echo base_url("assets") ?>/js/parallax.min.js"></script>
<script src="<?php echo base_url("assets") ?>/js/popper.min.js"></script>
<script src="<?php echo base_url("assets") ?>/js/jquery-ui.js"></script>
<script src="<?php echo base_url("assets") ?>/js/bootstrap.min.js"></script>

<!-- Rev slider js -->
<script src="<?php echo base_url("assets") ?>/vendors/revolution/js/jquery.themepunch.tools.min.js"></script>
<script src="<?php echo base_url("assets") ?>/vendors/revolution/js/jquery.themepunch.revolution.min.js"></script>
<script src="<?php echo base_url("assets") ?>/vendors/revolution/js/extensions/revolution.extension.actions.min.js">
</script>
<script src="<?php echo base_url("assets") ?>/vendors/revolution/js/extensions/revolution.extension.video.min.js">
</script>
<script src="<?php echo base_url("assets") ?>/vendors/revolution/js/extensions/revolution.extension.slideanims.min.js">
</script>
<script
	src="<?php echo base_url("assets") ?>/vendors/revolution/js/extensions/revolution.extension.layeranimation.min.js">
</script>
<script src="<?php echo base_url("assets") ?>/vendors/revolution/js/extensions/revolution.extension.navigation.min.js">
</script>

<script src="<?php echo base_url("assets") ?>/js/jquery.fancybox.js"></script>
<script src="<?php echo base_url("assets") ?>/js/owl.js"></script>
<script src="<?php echo base_url("assets") ?>/js/wow.js"></script>
<script src="<?php echo base_url("assets") ?>/js/mixitup.js"></script>
<script src="<?php echo base_url("assets") ?>/js/appear.js"></script>
<script src="<?php echo base_url("assets") ?>/js/script.js"></script>
<script>
	var popupContainer = document.getElementById("popup");
	var closeBtn = document.getElementById("closeBtn");
	var state = localStorage.getItem("isClosedPopup");
	var state = localStorage.getItem("nowDate");

	function openPopup() {
		$('#popup').modal('');
	}

	function closePopup() {
		$('#popup').modal('')
		localStorage.setItem("isClosedPopup", "true");
		
	}

	//  When click close btn
	closeBtn.onclick = function () {
		closePopup();
		
	};


	$(document).ready(function () { 
		window.onload = (e) => {
		localStorage.setItem("nowDate", "true");
		console.log(localStorage);
		localStorage.setItem("isClosedPopup", "false");
		return state === "false" ? closePopup() :  openPopup();
		};
	});
</script>