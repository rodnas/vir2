$(document).ready(function() {

	//create scroller for each element with "horizontal_scroller" class...
	$('.horizontal_scroller').SetScroller({
		velocity:	50,
		direction:	'horizontal',
		startfrom:	'right',
		loop:		'infinite',
		movetype:	'linear',
		onmouseover:	'play',
		onmouseout:	'play',
		onstartup:	'play',
		cursor:		'pointer'
	});

});
/*
$(function()
	{
	$.post('index.php?ajax=resolution', { width: screen.width, height:screen.height }, function(json) {
	if(json.outcome == 'success')
		{
            // do something with the knowledge possibly?
		}
	else
		{
		alert('Unable to let PHP know what the screen resolution is!');
		}
	},'json');
});
*/

function getBarcode()
	{
	var barcode = $('#x_barcode').val();
	$.ajax(
		{
		type: "POST",
		url: "index.php?ajax=barcode",
		data: {ajax_barcode:barcode}
		}
	).done(function( result )
		{	
		if ( $("#barcodeMessage").is(":visible") )
			{
			var barcodeInterval=setInterval(function()
				{
				if ( $("#barcodeMessage").is(":hidden") )
					{
					$('#barcodeMessage').fadeIn('fast');
					$("#barcodeMessage").html( result );
					setTimeout(function()
						{
						$('#barcodeMessage').fadeOut('fast');
						}, {##barcodeReadTimeout##}*1000);
					clearInterval(barcodeInterval);
					}
				},{##barcodeReadTimeout##}*1000);
			}
		else
			{
			$("#barcodeMessage").html( result );
			$('#barcodeMessage').fadeIn('fast');
			var barcodeTimeout=setTimeout(function()
				{
				$('#barcodeMessage').fadeOut('fast');
				}, {##barcodeReadTimeout##}*1000);
			}
		}
	);
	$('#x_barcode').val('');	
	}
	
function getList()
	{
	$.ajax(
		{
		url: "index.php?ajax=waiting",
		}
	).done(function( result )
		{
		$("#waitingList").html( result );
		}
	);
	}

function getMarqueeBottom()
	{
	$.ajax(
		{
		url: "index.php?ajax=marqueebottom",
		}
	).done(function( result )
		{
		$('#marqueeBottomMessage').html(result);
		}
	);
	}
	
function getMarqueeTop()
	{
	$.ajax(
		{
		url: "index.php?ajax=marqueetop",
		}
	).done(function( result )
		{
		$('#marqueeTopMessage').html(result);
		}
	);
	}

function getPatient()
	{
	$.ajax(
		{
		url: "index.php?ajax=patient",
		}
	).done(function( result )
		{
		if ( result!="")
			{
			if ( $("#patientMessage").is(":visible") )
				{
				var patientInterval=setInterval(function()
					{
					if ( $("#patientMessage").is(":hidden") )
						{
						$('#patientMessage').fadeIn('fast');
						$("#patientMessage").html( result );
						setTimeout(function()
							{
							$('#patientMessage').fadeOut('fast');
							}, {##patientViewTimeout##}*1000);
						clearInterval(patientInterval);
						}
					},{##patientViewTimeout##}*1000);
				}
			else
				{
				$("#patientMessage").html( result );
				$('#patientMessage').fadeIn('fast');
				var patientTimeout=setTimeout(function()
					{
					$('#patientMessage').fadeOut('fast');
					}, {##patientViewTimeout##}*1000);
				}
			}
		}
	);
	}

function getBanner()
	{
	$.ajax(
		{
		url: "index.php?ajax=banner",
		}
	).done(function( result )
		{
		$('.slideshow').cycle().cycle('stop');
		$(".slideshow").html( result );
		$('.slideshow').cycle({
			fx: 'fade', // choose your transition type, ex: fade, scrollUp, shuffle, etc...
			timeout: {##bannerChangeTimeout##}*1000 // choose your transition type, ex: fade, scrollUp, shuffle, etc...
			});
		}
	);
	}
