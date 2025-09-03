$(function()
	{
	$( "#x_activateWhen" ).datepicker();
	$( "#x_deactivateWhen" ).datepicker();
	$( "#x_startDate" ).datepicker();
	$( "#x_stopDate" ).datepicker();
	$( "#x_birthDate" ).datepicker();
	$( "#x_loginDate" ).datepicker();
	$( "#x_startWhen" ).datepicker();
	$( "#x_stopWhen" ).datepicker();

	$.post('../frontend/ajax/resolution.php', { width: screen.width, height:screen.height }, function(json) {
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

function getnocore_waitingList()
	{
	$.ajax(
		{
		url: "index.php?modulSelect=nocore_waiting&modulAction=list&nocore_waitingcmd=resetall",
		}
	).done(function( result )
		{
		$("#nocore_waitingList").html( result );
		}
	);
	}

function getnocore_providedList()
	{
	$.ajax(
		{
		url: "index.php?modulSelect=nocore_provided&modulAction=list&nocore_providedcmd=resetall",
		}
	).done(function( result )
		{
		$("#nocore_providedList").html( result );
		}
	);
	}

function getnocore_prerecordedList()
	{
	$.ajax(
		{
		url: "index.php?modulSelect=nocore_prerecorded&modulAction=list&nocore_prerecordedcmd=resetall",
		}
	).done(function( result )
		{
		$("#nocore_prerecordedList").html( result );
		}
	);
	}


	