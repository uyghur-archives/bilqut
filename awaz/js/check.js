function CheckOthers(form)
{
for (var i=0;i<form.elements.length;i++)
{
var Talant = form.elements[i];
if (Talant.name == 'check[]')
if (Talant.checked==false)
{
Talant.checked = true;
}
else
{
Talant.checked = false;
}
}
}

function CheckAll(form)
{
for (var i=0;i<form.elements.length;i++)
{
var Talant = form.elements[i];
if (Talant.name == 'check[]')
Talant.checked = true;
}}
function chckform(form)
{
	var len=form.elements.length;
	for(var i=0;i<len;i++)
	{
		var Talant = form.elements[i];
		if (Talant.name == 'check[]')
		if (Talant.value=="")
		{
			alert('tallang!');
			return false;
		}
	}
}
function shouplayer(url)
{
	if(url)
	{
		window.open(url, 'newwindow', 'height=450, width=530, top=0, left=0, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=n o, status=no');
		return true;
	}
	else{
		return false;
	}
}