<?php echo $header; ?>
<div class="container">

  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>
      <div class="well">

          <div class="row">

            <div class="contact-block col-sm-3 telephone">
              <h4><?php echo $text_telephone; ?> <i class="fa fa-mobile" aria-hidden="true"></i></h4>
              <a href="tel:+380987070067">+38(098)707-00-67</a>
              <a href="tel:+380957070067">+38(095)707-00-67</a>              
              <a href="tel:+380737070067">+38(073)707-00-67</a>
              <a href="tel:+48717166020">+48(717)16-60-20</a>
              <a href="tel:+48588811474">+48(588)81-14-74</a>
              <a href="tel:+48616492092">+48(616)49-20-92</a>              
            </div>

            <div class="contact-block col-sm-3">
              <h4>VIBER <img src="../image/catalog/other/viber.png"></h4>
              <a href="tel:+380677661876">+38(067)766-18-76</a>
            </div>

            <div class="contact-block col-sm-3">
              <h4>SKYPE <i class="fa fa-skype" aria-hidden="true"></i></h4> 
               <a href="callto:panbus">PanBus.com.ua</a>
            </div>            

            <div class="contact-block col-sm-3">
              <h4><?php echo $entry_email; ?> <i class="fa fa-envelope" aria-hidden="true"></i></h4>
              <a href="mailto:info@panbus.com.ua">pan_bus@ukr.net</a>
            </div>

          </div>
          <div class="row">
            <?php if ($address) { ?>
            <div class="contact-block col-sm-3">
              <h4><?php echo $text_address; ?></h4>
              <?php echo $address; ?>
            </div>
            <?php } ?>
            
            <?php if ($open) { ?>
            <div class="contact-block col-sm-4">
              <h4><?php echo $text_open; ?></h4>
              <?php echo $open; ?>
            </div>
            <?php } ?>

            <?php if ($comment) { ?>
            <div class="contact-block col-sm-12">
              <h4><?php echo $text_comment; ?></h4>
              <?php echo $comment; ?>
            </div>
            <?php } ?>
          </div>



      </div>


      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
