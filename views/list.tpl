<html>
<body>
this is where all blogs are listed
{{result}}


<table>
  %for res in result:
   <h2><a href="/detail/{{res['_id']}}">{{res['title']}}</a></h2>
   <h4 style="color:pink">Author: <span>{{res['author']}}</span></h4>
 	   <br>

   
  %end
</table>
</body>

</html>
