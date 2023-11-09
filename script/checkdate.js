function checkDate(fromdate,todate)
{
  //var date1 = document.forms.testform.test1.value;
  //var date2 = document.forms.testform.test2.value;
 var flag=0;
  var begindate = fromdate.split("/");

  var enddate = todate.split("/");

  if(enddate[2]>=begindate[2] && enddate[1]>=begindate[1] && enddate[0] >= begindate[0] )
   {
      
	flag=2;
   }
	else
	{
		flag=3;
	}
	

return flag;
}
function changeDate(fromdate)
{
  
  var y="";
  var m="";
  var d="";
  var rd="";
 
  var begindate = fromdate.split("/");
  y=begindate[0];
  m=begindate[1];
  d=begindate[2];
  rd=d+"/"+m+"/"+y;
 
return rd;
}
