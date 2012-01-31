<html>
<head>
  <script src="http://127.0.0.1:8080/js/jquery-1.7.1.min.js"></script>
  <script src="http://127.0.0.1:8080/js/jquery-ui-1.8.17.custom.min.js"></script>
  <script src="http://127.0.0.1:8080/js/jquery.tmpl.min.js"></script>
  <script src="http://127.0.0.1:8080/js/jquery.cookie.js"></script>
  <script src="http://127.0.0.1:8080/js/mainspring.js"></script>
</head>
<body>

<div id="connect_tv_container">
</div>

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
