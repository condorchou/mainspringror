<html>
<head>
</head>
<body style="background-color:gray">
<p>
This is an example of server side script running on an intranet.
</p>
<iframe border="1" width="100%" height="100%" src="http://localhost:3000/intranet_login?username=test&location=test&token=a&goto=<?=$_GET['goto']?>">
</iframe>
</body>
</html>
