<!DOCTYPE html>
<html>

 <head>
<title>My little Bottle example</title>
 </head>

 <body>
 <a href="/">home</a>
 <h1>Hi World..here is my little Blog World!</h1>
 <h2>Enter your Fav Blog Post</h2> <br>
 <form action="/submit" method="POST">
     <table>
     <tr><td>Title :</td><td> <input type="text" name="title"></td></tr>
     <tr><td>Blog Text   : </td><td> <textarea name="desc"></textarea></td></tr>
     <tr><td>Author Name :</td><td> <input type="text" name="author"></td></tr>
     <tr><td>Tags        : </td><td> <input type="text" name="tags" value=""></td></tr>
     <tr><td><input type="submit" value="Submit"></td></tr><br>
     </table>
 </form>


 </body>
 </html>