<html>
<head>
  <script src="http://127.0.0.1:8080/javascripts/jquery.min.js"></script>
  <script src="http://127.0.0.1:8080/javascripts/mainspring.js"></script>
</head>
<body style="background-color:gray">
<p>
This is an example of server side script running on an intranet.
</p>
<div id="connect_tv_container">
</div>

<script>
  $('#connect_tv_container').mainspring({
    environment:'development',
    authentication_token: 'belsobeer_joy@belsobeer.com'
  });
</script>
</body>
</html>
