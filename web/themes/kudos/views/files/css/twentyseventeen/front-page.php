<?php
/**
 * Template Name: Home
 */
get_header();
?>

 
 <div class="slider">
            <div id="bootstrap-touch-slider" class="carousel bs-slider fade  control-round indicators-line" data-ride="carousel" data-pause="hover" data-interval="5000" >
            <!-- Indicators -->
            <ol class="carousel-indicators">
              <li data-target="#bootstrap-touch-slider" data-slide-to="0" class="active"></li>
              <li data-target="#bootstrap-touch-slider" data-slide-to="1"></li>
              <li data-target="#bootstrap-touch-slider" data-slide-to="2"></li>
            </ol>
            <!-- Wrapper For Slides -->
            <div class="carousel-inner" role="listbox">
              <!-- Third Slide -->
              <div class="item active">
                <!-- Slide Background -->
                <img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/slide-img.jpg" alt="Bootstrap Touch Slider"  class="slide-image"/>
                <div class="bs-slider-overlay"></div>
                <div class="container">
                  <div class="row">
                    <!-- Slide Text Layer -->
                    <div class="slide-text slide_style_center">
                      <h1 data-animation="wow animated  zoomIn">Welcome to<br> Effortlessbnb</h1>
                      <p data-animation="wow animated  zoomIn">Comprehensive Management of Your Property on Airbnb</p>
                     <!-- <a href="javascript:void(0)"  class="btn btn-default" data-animation="animated  fadeInRight">GO TO CALCULATOR</a> -->
                    </div>
                  </div>
                </div>
              </div>
              <!-- End of Slide -->
              <!-- Second Slide -->
              <div class="item">
                <!-- Slide Background -->
                <img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/slide-img-2.jpg" alt="Bootstrap Touch Slider"  class="slide-image"/>
                <div class="bs-slider-overlay"></div>
                <!-- Slide Text Layer -->
                <div class="slide-text slide_style_center">
                  <h1 data-animation="wow animated  zoomIn">Welcome to<br> Effortlessbnb</h1>
                  <p data-animation="wow animated  zoomIn">Comprehensive Management of Your Property on Airbnb</p>
                 <!-- <a href="javascript:void(0)"  class="btn btn-default" data-animation="animated  fadeInDown">GO TO CALCULATOR</a>-->
                </div>
              </div>
              <!-- End of Slide -->
              <!-- Third Slide -->
              <div class="item">
                <!-- Slide Background -->
                <img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/slide-img-3.jpg" alt="Bootstrap Touch Slider"  class="slide-image"/>
                <div class="bs-slider-overlay"></div>
                <!-- Slide Text Layer -->
                <div class="slide-text slide_style_center">
                  <h1 data-animation="wow animated  zoomIn">Welcome to<br> Effortlessbnb</h1>
                  <p data-animation="wow animated  zoomIn">Comprehensive Management of Your Property on Airbnb</p>
             <!-- <a href="javascript:void(0)"  class="btn btn-default" data-animation="animated  fadeInDown">GO TO CALCULATOR</a> -->
                </div>
              </div>
              <!-- End of Slide -->

            </div><!-- End of Wrapper For Slides -->
             <div class="calc-bkg">
              <div class="container">
                <h2>Calculator</h2>
                <div class="calculator-wrap">
                  <form>
                    <div class="form-group">
                      <div class="styled-select">
                        <select>
                          <option>Select Your Area</option>
                          <option>The second option</option>
                        </select>
                      </div>
                    </div>
                    <div class="form-group">
                      <input type="email" value="" placeholder="Email address" class="input-lg" name="email_address">
                    </div>
                    <div class="form-group">
                      <div class="styled-select">
                        <select>
                          <option>1  Bedrooms</option>
                          <option>The second option</option>
                        </select>
                      </div>
                    </div>
                    <div class="form-group">
                      <button class="btn button" type="submit">Submit</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
            <!-- Left Control -->
            <a class="left carousel-control" href="#bootstrap-touch-slider" role="button" data-slide="prev">
              <span class="fa fa-angle-left" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <!-- Right Control -->
            <a class="right carousel-control" href="#bootstrap-touch-slider" role="button" data-slide="next">
              <span class="fa fa-angle-right" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>

        </div>
 
 
 
 
 <main>
          <section class="what-we-provide wow fadeInUp">
            <div class="container">
              <h2>What We Provide</h2>
              <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh<br> euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </p>
              <div class="row">
                <div class="col-md-6 col-sm-6 wow fadeInLeft animated">
                  <div class="what-provide-wrapper">
                    <a href="#">
                      <span class="icon icon-bg-1"></span>
                      <div class="text-wrap">
                        <h3>Simple</h3>
                        <p>We visit your property and create the perfect listing. After that you just need to tell us the dates you are away</p>
                      </div>
                    </a>
                  </div>
                </div>
                <div class="col-md-6 col-sm-6 wow fadeInRight animated">
                  <div class="what-provide-wrapper">
                    <a href="#">
                      <span class="icon icon-bg-2"></span>
                      <div class="text-wrap">
                        <h3>Comprehensive</h3>
                        <p>We manage every aspect of your rental from pricing, guest interaction, cleaning to payment</p>
                      </div>
                    </a>
                  </div>
                </div>
                <div class="col-md-6 col-sm-6 wow fadeInLeft animated">
                  <div class="what-provide-wrapper">
                    <a href="#">
                      <span class="icon icon-bg-3"></span>
                      <div class="text-wrap">
                        <h3>Secure</h3>
                        <p>24/7 support provides piece of mind when away from your property. We are the point of contact for guests if they have any issues</p>
                      </div>
                    </a>
                  </div>
                </div>
                <div class="col-md-6 col-sm-6 wow fadeInRight animated">
                  <div class="what-provide-wrapper">
                    <a href="#">
                      <span class="icon icon-bg-4"></span>
                      <div class="text-wrap">
                        <h3>Rewarding</h3>
                        <p>Our unique market insights and our professional approach  helps you increase your income</p>
                      </div>
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </section>

          <section class="hassle-free">
            <div class="container">
              <h2>Our hassle free process</h2>
              <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh <br>euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </p>
              <div class="row">
                <div class="col-md-3 col-sm-6 wow fadeInUp animated"><div class="hassle-wrap">
                  <span class="hassle-icon"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/hassle-icon-1.png"></span>
                  <h3>Get In Touch</h3>
                  <p>Let us know when you’re free to meet and we will arrange an appointment to visit you
                    and your property </p>
                  </div>
                </div>
                <div class="col-md-3 col-sm-6 wow fadeInUp animated"><div class="hassle-wrap">
                  <span class="hassle-icon"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/hassle-icon-2.png"></span>
                  <h3>Give Us a Tour</h3>
                  <p>From experience we know what information guests will want. We ask the right questions so you only have to answer them once
                  </p>
                </div>
              </div>
              <div class="col-md-3 col-sm-6 wow fadeInUp animated"><div class="hassle-wrap">
                <span class="hassle-icon"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/hassle-icon-3.png"></span>
                <h3>Set The Dates</h3>
                <p>Just let us know when your property is free and we will ensure that it is available for rent on Airbnb
                </p>
              </div>
            </div>
            <div class="col-md-3 col-sm-6 wow fadeInUp animated"><div class="hassle-wrap">
              <span class="hassle-icon"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/hassle-icon-4.png"></span>
              <h3>Watch It Roll In</h3>
              <p>From experience we know what information guests will want. We ask the right questions so you only have to answer them once</p>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="testimonials">
      <div class="container">
        <h2>Testimonials</h2>
        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh <br>euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </p>
        <div class="row">
          <div class="col-md-12">
            <div id="owl-example" class="owl-carousel wow fadeInUp animated">
              <div class="item">
                <div class="testi-wrap">
                  <h3>Consectetuer adipiscing</h3>
                  <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy
                    nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </p>
                    <div class="client">
                      <span class="author-img">
                       <img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/author-img.jpg">
                      </span>
                      <h4>John Smith</h4>
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="testi-wrap">
                    <h3>Consectetuer adipiscing</h3>
                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy
                      nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </p>
                      <div class="client">
                        <span class="author-img">
                          <img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/author-img.jpg">
                        </span>
                        <h4>John Smith</h4>
                      </div>
                    </div>
                  </div>
                  <div class="item">
                    <div class="testi-wrap">
                      <h3>Consectetuer adipiscing</h3>
                      <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy
                        nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </p>
                        <div class="client">
                          <span class="author-img">
                            <img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/author-img.jpg">
                          </span>
                          <h4>John Smith</h4>
                        </div>
                      </div>
                    </div>
                    <div class="item">
                      <div class="testi-wrap">
                        <h3>Consectetuer adipiscing</h3>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy
                          nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </p>
                          <div class="client">
                            <span class="author-img">
                              <img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/author-img.jpg">

                            </span>
                            <h4>John Smith</h4>
                          </div>
                        </div>
                      </div>
                      <div class="item">
                        <div class="testi-wrap">
                          <h3>Consectetuer adipiscing</h3>
                          <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy
                            nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </p>
                            <div class="client">
                              <span class="author-img">
                                <img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/author-img.jpg">
                              </span>
                              <h4>John Smith</h4>
                            </div>
                          </div>
                        </div>
                        <div class="item">
                          <div class="testi-wrap">
                            <h3>Consectetuer adipiscing</h3>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy
                              nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </p>
                              <div class="client">
                                <span class="author-img">
                                <img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/author-img.jpg">
                                </span>
                                <h4>John Smith</h4>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>


                  </div>
                </section>
               <!-- 
modify by mahi
               <section class="client-logo wow fadeInLeft animated">
                  <div class="container">
                    <h2>As featured on</h2>
                  <div id="owl-example-2" class="owl-carousel wow fadeInUp animated">
                      <div class="item"><img src="images/client-logo-1.jpg"></div>
                      <div class="item"><img src="images/client-logo-2.jpg"></div>
                      <div class="item"><img src="images/client-logo-3.jpg"></div>
                      <div class="item"><img src="images/client-logo-4.jpg"></div>
                      <div class="item"><img src="images/client-logo-5.jpg"></div>
                      <div class="item"><img src="images/client-logo-6.jpg"></div>
                      <div class="item"><img src="images/client-logo-7.jpg"></div>
                      <div class="item"><img src="images/client-logo-1.jpg"></div>
                      <div class="item"><img src="images/client-logo-2.jpg"></div>
                      <div class="item"><img src="images/client-logo-3.jpg"></div>
                      <div class="item"><img src="images/client-logo-4.jpg"></div>
                      <div class="item"><img src="images/client-logo-5.jpg"></div>
                      <div class="item"><img src="images/client-logo-6.jpg"></div>
                      <div class="item"><img src="images/client-logo-7.jpg"></div>
                  </div>
                  </div>
                </section> -->


              </main>
              
              
              
 
 
 
 
 
 
 
 
<?php /*?> 
<div class="slide">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" data-interval="3000">
          <div class="carousel-inner" role="listbox">
            
			<?php
        $args = array( 'post_type' => 'slider_image', 'post_status' => 'publish', 'posts_per_page' => -1, 'order' => 'DESC'  );
        $loop = new WP_Query( $args );
        $i = 0;
        while ( $loop->have_posts() ) : $loop->the_post(); 
			$url = wp_get_attachment_url( get_post_thumbnail_id($post->ID) );
			$thumburl = get_the_post_thumbnail( $post->ID, 'full' );
			
			$externalUrl = get_post_meta( $post->ID,'imageurls',true );
			 
			?>
	        
			
			<div class="item <?php echo ($i==0)?'active':''; ?>">
              <?php echo $thumburl; ?>
              <div class="carousel-caption">
                
				<?php
					the_content();
		 
				?>  
                <a href="<?php echo $externalUrl; ?>" class="btn button">Show Me How</a>
              </div>
            </div>
			
			<?php
            $i++;
        endwhile;  
		wp_reset_query();       
  		?>
			
			
			
            
			
			
			
          </div>
          <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>
      
	  
	  <main>
	  
	  
      <section class="what-we-do animate" data-animation="fadeInUp">
        <div class="we-bg">
          <div class="container" style="text-align:center;">
<?php
$my_postid = 39;//This is page id or post id
$content_post = get_post($my_postid);
$content = $content_post->post_content; 
?>

            <div clasds="row">
			
			  	 
              <div class="col-md-3 col-sm-6">
                <div class="box-zone">
                  <div class="img-sec">                   
					 <a href="<?php echo get_permalink(41); ?>" class="more">
					<?php echo get_the_post_thumbnail( 41, 'custom_size_page' ); ?>  
					</a>
                    <div class="title">
                      <a href="<?php echo get_permalink(41); ?>" class="more"><h3>Retirement</h3><span class="glyphicon glyphicon-menu-right"></span></a>
                    </div>
                  </div>
                </div>
              </div>
			  	
			 
			  
              <div class="col-md-3 col-sm-6">
                <div class="box-zone">
                  <div class="img-sec">
                     <a href="<?php echo get_permalink(44); ?>" class="more">
					<?php echo get_the_post_thumbnail( 44, 'custom_size_page' ); ?>  </a>
                    <div class="title">
                      <a href="<?php echo get_permalink(44); ?>" class="more"> <h3>Travel</h3><span class="glyphicon glyphicon-menu-right"></span></a>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-3 col-sm-6">
                <div class="box-zone">
                  <div class="img-sec"><a href="<?php echo get_permalink(47); ?>" class="more">
                    <?php echo get_the_post_thumbnail( 47, 'custom_size_page' ); ?>  </a>
                    <div class="title">
                      <a href="<?php echo get_permalink(47); ?>" class="more"><h3>Family</h3><span class="glyphicon glyphicon-menu-right"></span></a>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-3 col-sm-6">
                <div class="box-zone">
                  <div class="img-sec">
                  <a href="<?php echo get_permalink(50); ?>" class="more">
                    <?php echo get_the_post_thumbnail( 50, 'custom_size_page' ); ?>  </a>
                    <div class="title">
                      <a href="<?php echo get_permalink(50); ?>" class="more"><h3>Lifestyle</h3><span class="glyphicon glyphicon-menu-right"></span></a>
                    </div>
                  </div>
                </div>
              </div>
            
			
			</div>
          
		  <?php
$my_postid = 87;//This is page id or post id
$content_post = get_post($my_postid);
 
$contentN = get_post_meta( 87,'professional_text',true );
?>
			<h2 class="tag-line-cls">Live "your" Lifestyle As a Professional Digital Entrepreneur</h2>
            <p class="tag-pcls">Creating a realistic pathway to achieving what you've always desired!</p>
			<a href="<?php echo site_url(); ?>/professinal-digital-entrepreneur" class="btn button">Learn More </a>
			<a href="<?php echo site_url(); ?>/professinal-digital-entrepreneur" class="btn button">Get Started</a>
		  
		  </div>
        </div>
      </section>
      
	  
     
      
	  
	  
	  
	  
	  <section class="about-me animate" style="float:none;" data-animation="fadeInUp">
        <div class="tranp-bg">
          <div class="container">
            <div class="title-left">
              <h3>ABOUT <br>ME</h3>
            </div>
            <div class="right-content">
              <?php
$my_postid = 7;//This is page id or post id
$content_post = get_post($my_postid);
$content = $content_post->post_content;
$content = apply_filters('the_content', $content);
$content = str_replace(']]>', ']]&gt;', $content);
echo $content;
?>
            </div>
          </div>
        </div>
      </section>
      
	  
	  
	  
	  <section class="follow-us animate" data-animation="fadeInUp">
        <div class="container">
          <h3>FOLLOW US </h3>
          <ul class="links">
            <li><a href="<?php echo get_option('kic_fb_url'); ?>"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
            <li><a href="<?php echo get_option('kic_linkdin_url'); ?>"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
            <li><a href="<?php echo get_option('kic_instagrame_url'); ?>"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
            <li><a href="<?php echo get_option('kic_twitter_url'); ?>"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
          </ul>
        </div>
      </section>
     

	 </main><?php */?>
<?php get_footer(); ?>