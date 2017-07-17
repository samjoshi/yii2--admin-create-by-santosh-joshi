<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */

?>

<!DOCTYPE html>
<!--[if lt IE 7]>   <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>     <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>     <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
  <!--<![endif]-->
  <!--[if IE]>
  <link rel="stylesheet"  href="css/ie8.css">
  <![endif]-->
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="SKYPE_TOOLBAR" content="SKYPE_TOOLBAR_PARSER_COMPATIBLE" />
    <meta name="format-detection" content="telephone=no">
    <title>:: Effortlessbnb ::</title>
    <link href="<?php echo esc_url( get_template_directory_uri() ); ?>/css/bootstrap.css" rel="stylesheet">
    <link href="<?php echo esc_url( get_template_directory_uri() ); ?>/css/font-awesome.min.css" rel="stylesheet">
    <link href="<?php echo esc_url( get_template_directory_uri() ); ?>/css/stylesheet.css" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo esc_url( get_template_directory_uri() ); ?>/css/owl.carousel.css">
    <link rel="stylesheet" href="<?php echo esc_url( get_template_directory_uri() ); ?>/css/slider-top.css">
    <link rel="stylesheet" href="<?php echo esc_url( get_template_directory_uri() ); ?>/css/animate.min.css">
    <script src="<?php echo esc_url( get_template_directory_uri() ); ?>/js/html5shiv.js"></script>
    <script src="<?php echo esc_url( get_template_directory_uri() ); ?>/js/html5shiv-printshiv.js"></script>
    <?php wp_head(); ?>
  </head>
  <body >
    <!--[if lt IE 9]>
    <script src="dist/html5shiv.js"></script>
    <![endif]-->


<div class="panel_buttons">
 <ul>
  <li><span class="icons"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/chat-icon.png"></span>
  <span class="click">
    Presale Chat
  </span>
  </li>
   <li><span class="icons"><i class="fa fa-youtube-play" aria-hidden="true"></i></span>
  <span class="click">
   Video Tutorials
  </span>
   </li>
   <li><span class="icons"><i class="fa fa-envelope-open-o" aria-hidden="true"></i></span>
  <span class="click">
   Email
  </span>

   </li>
 </ul> 
</div>

    <header>
      <div class="container-fluid">
        <div class="row">
          <div class="logo col-md-2"><a href="#"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/logo.png"></a></div>
          <nav class="navbar col-md-10">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
            </div>
            <div class="navigation">
            <div id="navbar" class="collapse navbar-collapse">
           <?php 
				wp_nav_menu( $args = array('menu'=> 'Main Menu' ,'items_wrap' => '<ul id="%1$s" class="nav navbar-nav">%3$s</ul>') );
			?>
            </div>
            </div>

            <ul class="social">
              <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
              <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
              <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
              <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
            </ul>
          </nav>
        </div>
      </div>
    </header>
    
