<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */

?>

<footer class="wow fadeIn animated">
                <div class="footer-top">
                  <div class="container">
                    <div class="row">
                      <div class="col-md-4 col-sm-4">
                        <div class="foot-links">
                          <h4>About Us</h4>
                          <p>EffortlessBnB is an independent Airbnb <br>property
                            management service and is not <br>affiliated with Airbnb</p>
                            <ul class="footer-social">
                                 <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                            </ul>
                          </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                          <div class="foot-links">
                            <h4>Quick links</h4>
                            <ul class="links">
                              <li><a href="#">About </a></li>
                              <li><a href="#">Careers</a></li>
                              <li><a href="#">Blog</a></li>
                            </ul>
                          </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                          <div class="foot-links contact-detail">
                            <h4>Contact Info</h4>
                            <ul class="contact-de">
                              <li><label>Email:</label><span><a href="#">Info@effortlessBnB.com</a></span></li>
                              <li><label>Call:</label><span>+1-00-123-456-789 </span></li>
                              <li><label>Office:</label><span>Duis autem vel eum iriure dolor in hendrerit in</span></li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="copyright">
                   <p>Copyright © INFO@EFFORTLESSBNB.COM. All rights reserved.</p> 
                 </div>

               </footer>

	<?php /*?>	</div><!-- #content -->

		<footer id="colophon" class="site-footer" role="contentinfo">
			<div class="wrap">
				<?php
				get_template_part( 'template-parts/footer/footer', 'widgets' );

				if ( has_nav_menu( 'social' ) ) : ?>
					<nav class="social-navigation" role="navigation" aria-label="<?php _e( 'Footer Social Links Menu', 'twentyseventeen' ); ?>">
						<?php
							wp_nav_menu( array(
								'theme_location' => 'social',
								'menu_class'     => 'social-links-menu',
								'depth'          => 1,
								'link_before'    => '<span class="screen-reader-text">',
								'link_after'     => '</span>' . twentyseventeen_get_svg( array( 'icon' => 'chain' ) ),
							) );
						?>
					</nav><!-- .social-navigation -->
				<?php endif;

				get_template_part( 'template-parts/footer/site', 'info' );
				?>
			</div><!-- .wrap -->
		</footer><!-- #colophon -->
	</div><!-- .site-content-contain -->
</div><!-- #page --><?php */?>
<?php wp_footer(); ?>
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>   
                <script src="<?php echo esc_url( get_template_directory_uri() ); ?>/js/bootstrap.min.js"></script>
                <script src="<?php echo esc_url( get_template_directory_uri() ); ?>/js/top-slider.js"></script>
                <script src="<?php echo esc_url( get_template_directory_uri() ); ?>/js/wow.js"></script>
                <script src="<?php echo esc_url( get_template_directory_uri() ); ?>/js/owl.carousel.min.js"></script>
               <script type="text/javascript">
               jQuery(window).scroll(function() {
                if (jQuery(this).scrollTop() > 1){
                  jQuery('header').addClass("sticky");
                }
                else{
                  jQuery('header').removeClass("sticky");
                }
              });
               </script>
               <script type="text/javascript">
               jQuery(document).ready(function() {
                 jQuery("#owl-example").owlCarousel({
                   autoPlay : 3000,
                   stopOnHover : true,
                   pagination : true,
                 // autoHeight : true,
                 transitionStyle:"fade",
                 items :3, //10 items above 1000px browser width
                 itemsDesktop : [1300,3], //5 items between 1000px and 901px
                 itemsDesktopLarge : [1000,2], // betweem 900px and 601px
                 itemsDesktopSmall : [900,2], // betweem 900px and 601px
                 itemsTablet: [600,1], //2 items between 600 and 0
                 itemsMobile : false // itemsMobile disabled - inherit from itemsTablet option
                 });

 jQuery("#owl-example-2").owlCarousel({
                   autoPlay : 3000,
                   stopOnHover : true,
                   pagination : false,
                 // autoHeight : true,
                 transitionStyle:"fade",
                 items :7, //10 items above 1000px browser width
                 itemsDesktop : [1300,7], //5 items between 1000px and 901px
                 itemsDesktopLarge : [1000,5], // betweem 900px and 601px
                 itemsDesktopSmall : [900,5], // betweem 900px and 601px
                 itemsTablet: [600,3], //2 items between 600 and 0
                 itemsMobile : false // itemsMobile disabled - inherit from itemsTablet option
                 });

                 jQuery('.stop').on('click', function() {
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
               })
               </script>
<?php wp_footer();?> 
</body>
</html>
