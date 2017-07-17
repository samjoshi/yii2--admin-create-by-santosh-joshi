<footer class="wow fadeIn animated">
  <div class="footer-top">
    <div class="container">
      <div class="row">
        <div class="col-md-4 col-sm-4">
          <div class="foot-links">
            <div class="foot-logo"><img src="<?php echo Yii::$app->request->baseUrl; ?>/themes/kudos/views/files/images/logo.png"></div>
            <p>Sensible Addictions was started by two people who shared a dream and a vision: To provide high-quality products at reasonable prices ......</p>
            <p><i class="fa fa-map-marker" aria-hidden="true"></i> 129 Spring Street | Newton, NJ 07860</p>
            <p> <i class="fa fa-phone" aria-hidden="true"></i> 91 5476457689</p>
            <ul class="footer-social">
              <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
              <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
              <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
            </ul>
          </div>
        </div>
        <div class="col-md-2 col-sm-2">
          <div class="foot-links">
            <h4>MENU</h4>
            <ul class="links">
              <li><a href="#">Home </a></li>
              <li><a href="#">About Us</a></li>
              <li><a href="#">Contact us</a></li>
              <li><a href="#">Help</a></li>
            </ul>
          </div>
        </div>
        <div class="col-md-6 col-sm-6">
          <div class="foot-links">
            <h4>CATEGORIES</h4>
            <ul class="links cate">
              <li><a href="#"> Movements </a></li>
              <li><a href="#"> Outdoors </a></li>
              <li><a href="#"> Tech </a></li>
              <li><a href="#"> Family </a></li>
              <li><a href="#"> Health </a></li>
              <li><a href="#"> Sports</a></li>
              <li><a href="#"> Learning </a></li>
              <li><a href="#"> Photography </a></li>
              <li><a href="#">Food & Drink </a></li>
              <li><a href="#"> Writing </a></li>
              <li><a href="#"> Language & Culture </a></li>
              <li><a href="#"> Music </a></li>
              <li><a href="#"> Film </a></li>
              <li><a href="#"> Sci-Fi & Games </a></li>
              <li><a href="#"> Beliefs </a></li>
              <li><a href="#"> Arts </a></li>
              <li><a href="#"> Book Clubs </a></li>
              <li><a href="#">Dance</a></li>
              <li><a href="#">Hobbies & Crafts</a></li>
              <li><a href="#">Fashion & Beauty</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
  </div>
  <div class="copyright">
    <p> © 2017 Kudos <a href="#">Privacy</a><a href="#"> Terms</a> </p>
  </div>
</footer>

<!--------------------------------- footer part End --------------------------------------> 


<script src="<?php echo Yii::$app->request->baseUrl; ?>/themes/kudos/views/files/js/bootstrap.min.js"></script> 
<script type="text/javascript" src="<?php echo Yii::$app->request->baseUrl; ?>/themes/kudos/views/files/js/top-slider.js"></script> 
<script type="text/javascript" src="<?php echo Yii::$app->request->baseUrl; ?>/themes/kudos/views/files/js/wow.js"></script> 
<script src="<?php echo Yii::$app->request->baseUrl; ?>/themes/kudos/views/files/js/owl.carousel.min.js"></script> 
<script type="text/javascript">

               $(window).scroll(function() {
                if ($(this).scrollTop() > 1){
                  $('header').addClass("sticky");
                }
                else{
                  $('header').removeClass("sticky");
                }
              });

var j = jQuery.noConflict();
        j(document).ready(function() {
         j("#theCarousel").owlCarousel({
                   autoPlay : 3000,
                   stopOnHover : true,
                   pagination : false,
                 // autoHeight : true,
                 transitionStyle:"fade",
                 items :3, //10 items above 1000px browser width
                 itemsDesktop : [1300,12], //5 items between 1000px and 901px
                 itemsDesktopLarge : [1000,3], // betweem 900px and 601px
                 itemsDesktopSmall : [900,3], // betweem 900px and 601px
                 itemsTablet: [600,1], //2 items between 600 and 0
                 itemsMobile : false // itemsMobile disabled - inherit from itemsTablet option
                 });

                 j('.stop').on('click', function() {
                   owl.trigger('stop.owl.autoplay')
                 })
                 /* ----------------------------------------------------------- */
                 /*  13. WOW ANIMATION
                 /* ----------------------------------------------------------- */
                   wow = new WOW(
                       {
                         animateClass: 'animated',
                         offset:       100,
                         callback:     function(box) {
                           console.log("WOW: animating <" + box.tagName.toLowerCase() + ">")
                         }
                       }
                     );
                     wow.init();
                     /* ----------------------------------------------------------- */
                     /*  13. WOW ANIMATION
                     /* ----------------------------------------------------------- */
               });
 j(document).ready(function() {
              var owl = j('.owl-carousel');
              owl.owlCarousel({
                margin: 10,
                nav: true,
                loop: true,
                responsive: {
                  0: {
                    items: 1
                  },
                  768: {
                    items: 3
                  },
                  1000: {
                    items: 3
                  }
                }
              })
            })
      
          </script>
</body>
</html>