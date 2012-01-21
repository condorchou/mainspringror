<html>
<head>
  <script src="js/jquery-1.7.1.min.js"></script>
  <script src="js/jquery-ui-1.8.17.custom.min.js"></script>
  <script src="js/jquery.tmpl.min.js"></script>
  <script src="js/jquery.cookie.js"></script>
  <script src="js/mainspring.js"></script>
	<link type="text/css" href="css/ui-lightness/jquery-ui-1.8.17.custom.css" rel="stylesheet" /> 
</head>
<body>

<div id="connect_tv_container"></div>
<script>
	jQuery('#connect_tv_container').mainspring({
    environment:'development',
    clientHandle: 'belsobeer',
    clientUserID: 'condor@condor.com',
    name: 'Condor Chou',
    location: 'Boston, MA',
    remoteURI: '<?php echo $_GET['goto']; ?>',
    width: 1000
  });
	
</script>
</body>
</html>
