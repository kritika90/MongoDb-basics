<!DOCTYPE html>
<html>

 <head>
<title>My little Bottle example</title>
 </head>

 <body>
 {{result}}
 <a href="/">home</a>
 <h1>Hi World..here is my little Blog World!</h1>
 <h2>Enter your Fav Blog Post</h2> <br>
 <form action="/edit" method="POST">
     <table>
     <tr><td>Title :</td><td> <input type="text" name="title" value="{{result['title']}}"></td></tr>
     <tr><td>Blog Text   : </td><td> <textarea name="desc">{{result['desc']}}</textarea></td></tr>
     <tr><td>Author Name :</td><td> <input type="text" name="author" value="{{result['author']}}"></td></tr>
     <tr><td>Tags        : </td><td> <input type="text" name="tags" value="{{result['tags']}}"></td></tr>
     <tr><td><input type="submit" value="Submit"></td></tr><br>
     </table>
 </form>


 </body>
 </html>