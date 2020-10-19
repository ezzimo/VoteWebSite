<?php
session_start();
 ?>
<html>
<head>
    <title>Show Image from JSON using jQuery</title>
    <link rel="icon" href="Aji_Nfahmou/logo.png">
    <script type="text/javascript" src="jquery.min.js"></script>
    <link rel="stylesheet" href="style.css">
    <!-- CSS only -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

</head>
<body style="background-color: #2c3e1d;">
  <header class="container main" >
    <div class="header">
      <div class="logo">
        <img src="Aji_Nfahmou/logo.png" id="imgLogo">
      </div>
       <p><h1>أجي نفهمو</h1></p>
       <!-- <p><h4>الصور المشاركة في مسابقة أجي نفهمو</h4></p> -->
     </div>
  </header>
  <hr>
  <div class="">
     <div class="container main" >
      <div id='showData'></div>
    </div>
  </div>
  <div class="">
    <form class="Vote" action="VoteData.php">
      <p> <button type="button" class="btn btn-success btn-block" onclick="SendInfo()"><bdo dir="rtl">تصويت</bdo></p>
    </form>
  </div>


</body>
<script>
      Image_link = [];
      var User_Info;
      function updateImg() {
        window.console && console.log('Requesting JSON');
        User_Info = {
          Prenom:'<?php echo ($_SESSION)["Prenom"];?>',
          Nom:'<?php echo ($_SESSION)["Nom"]; ?>',
          Telephone:'<?php echo ($_SESSION)["Telephone"];?>',
          addresse:'<?php echo ($_SESSION)["Addresse"];?>',
          Region:'<?php echo ($_SESSION)["Region"];?>'
        };
        console.log(User_Info);
        $.getJSON('json.php', function(data) {
          window.console && console.log('JSON Recieved'); // confirme la reception des données du json dans le log
          window.console && console.log(data); // affiche les données dans le log
          //Using Javascript (createElement & queryselector & appendChild) rather than JQuery to creat tags for more optimisation
          $.each(data.PicturesData, function(index, value) {
              window.console && console.log(value['picture_link']);
              let img = document.createElement('img');
              img.src = value['picture_link'];
              img.id = value['picture_id'];
              img.alt = value['picture_id'];
              img.width = "420";
              img.height = "450";
              img.setAttribute('onclick','imgClick(this)');
              window.console && console.log("Image tag creer:", img);
              let div_img_bloc = document.createElement('div');
              div_img_bloc.className = 'img-block';
              let div_img_box = document.createElement('div');
              div_img_box.className = 'img-box';
             const liste_Img = document.querySelector('#showData');
              div_img_bloc.appendChild(img);
              div_img_box.appendChild(div_img_bloc);
              liste_Img.appendChild(div_img_box);
            });
        });
        return User_Info;
      };

    $(document).ready(function (){
        $.ajaxSetup({ cache: false });
        updateImg();
    });
    var selectedImg = 0
    var selectedImgId = []
    function imgClick(obj) {
      if (selectedImg < 3 && !(selectedImgId.some(imgId => imgId === obj.id))) {
        window.console && console.log("Image id clicked on is ", obj.id, " img link: ", obj.src);
        obj.style.border = '2px solid #fa9819';
        obj.style.filter = 'drop-shadow(12px 12px 8px #fa9819)';
        selectedImg = selectedImg + 1;
        selectedImgId.push(obj.id);
      } else if (selectedImgId.some(imgId => imgId === obj.id)) {
        window.console && console.log("Unselected Img id is ", obj.id, " img link: ", obj.src);
        obj.style.border = '2px solid grey';
        obj.style.filter = 'drop-shadow(12px 12px 8px black)';
        selectedImg = selectedImg - 1;
        const IndexselectedImgId =  selectedImgId.indexOf(obj.id)
        if (IndexselectedImgId > -1) {
          selectedImgId.splice(IndexselectedImgId, 1)
        }
        window.console && console.log("selected id ", selectedImgId);
      } else if (selectedImg >= 3) {
        window.console && console.log("le nombre max de image est selectionné déja");
      }
      window.console && console.log("selected id ", selectedImgId)
      window.console && console.log("selected id ", selectedImg)
      window.console && console.log(selectedImgId.some(imgId => imgId == obj.id))
      window.console && console.log(User_Info);

      }
      function SendInfo(){
        var form, url, User_Info_to_Send;
        if (selectedImg == 3) {
          form = $('form');
          url = form.attr('action');
          User_Info_to_Send = {'User Info= ':User_Info,' voted ':selectedImgId};
          console.log(User_Info_to_Send);
        } else {
          alert('عليك إختيار ثلاث صور');
        }
        $.ajax({
          url:url,
          data:{'Info': User_Info_to_Send},
          type:'POST',
          success:function(data){
            alert('شكرا لمشاركتكم');
            console.log(User_Info_to_Send);
            window.location.replace("UsersLogin.php");
          }
        })
      }
  </script>
  </html>
