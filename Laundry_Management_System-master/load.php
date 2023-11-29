<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>load</title>
    <style>
      .loader{
         position: fixed;
         top: 0;
         left: 0;
         width: 100%;
         height: 100%;
         display: flex;
         justify-content: center;
         align-items: center;
         
      }

      .loader img{
         width: 100%;
         height: 100%;
      }
   </style>

   <script>
      window.addEventListener('load', function() {
   document.querySelector(".loader").style.display="none";
 });

   </script>
</head>
<body>
    
  <!--Loading Animation-->
  <div class="loader" id="loading-animation">
      <img src="./images/loading.webp">
  </div>
  
</body>
</html>