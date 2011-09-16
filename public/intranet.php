<html>
<head>
  <script src="http://127.0.0.1:8080/javascripts/jquery.min.js"></script>
  <script src="http://127.0.0.1:8080/javascripts/mainspring.js"></script>
</head>
<body style="background-color:gray">
<p>
This is an example of server side script running on an intranet.  Load this page with '?goto=videos%2F1' to 
set the iframe src to videos/1
</p>
<div id="connect_tv_container">
</div>


<script>
  $('#connect_tv_container').mainspring({
    environment:'development',
    clientHandle: 'belsobeer',
    userID: 'new_2guy@belsobeer.com',
    name: 'new guy2',
    location: 'Los Angeles, CA',
    encodedIframeURI: '<?php echo $_GET['goto']; ?>',
    width: 1000
  });
</script>
</body>
</html>
