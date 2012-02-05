<html>
<head>
  <script src="js/jquery-1.7.1.min.js"></script>
  <script src="js/mainspring.js"></script>
</head>
<body>

<div id="connect_tv_container"></div>
<script>
  $('#connect_tv_container').mainspring({
    environment:'development',
    clientHandle: 'corvel',
    clientUserID: 'corvel@corvel.com',
    name: 'Condor Chou',
    location: 'Los Angeles, CA',
    remoteURI: '<?php echo $_GET['goto']; ?>',
    width: 1000
  });
	
</script>
</body>
</html>
