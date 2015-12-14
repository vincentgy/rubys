</div>
<footer>
  <div class="container">
    <div class="row footer-area">
      <div class="column-aboutus col-sm-4">
       <h5>About Us</h5>
      
        <p>
          Lorem ipsum dolor sit amet consectetur adipiscing nulla facilisis interdum venenatis nullam vulputate.Praesent quis ante dapibus tellus mollis dapibus ullamcorper sit amet erat,Praesent quis ante dapibus tellus mollis dapibus...
        </p>
        <p>
        Modern versions of assistive technologies will announce CSS generated content, as well as specific Unicode characters. To avoid unintended and confusing output in screen readers (particularly when icons are used purely for decoration), we hide them with the aria-hidden="true" attribute.
      </p>
      </div>

      <?php if ($informations) { ?>
      <div class="col-sm-2">
        <h5><?php echo $text_information; ?></h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><i class="glyphicon glyphicon-chevron-right"></i><?php echo $information['title']; ?></a></li>
          <?php } ?>
            <li><a href="<?php echo $contact; ?>"><i class="glyphicon glyphicon-chevron-right"></i><?php echo $text_contact; ?></a></li>
        </ul>
      </div>
      <?php } ?>
      
      <div class="col-sm-2">
        <h5><?php echo $text_extra; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><i class="glyphicon glyphicon-chevron-right"></i><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><i class="glyphicon glyphicon-chevron-right"></i><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><i class="glyphicon glyphicon-chevron-right"></i><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><i class="glyphicon glyphicon-chevron-right"></i><?php echo $text_special; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><i class="glyphicon glyphicon-chevron-right"></i><?php echo $text_sitemap; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-2">
        <h5><?php echo $text_account; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><i class="glyphicon glyphicon-chevron-right"></i><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><i class="glyphicon glyphicon-chevron-right"></i><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><i class="glyphicon glyphicon-chevron-right"></i><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><i class="glyphicon glyphicon-chevron-right"></i><?php echo $text_newsletter; ?></a></li>
           <li><a href="<?php echo $return; ?>"><i class="glyphicon glyphicon-chevron-right"></i><?php echo $text_return; ?></a></li>
        </ul>
      </div>
       <div class="col-sm-2">
        
        <h5>Contact Us</h5> 
        <ul class="column-contacts">
          <li><i class="fa fa-map-marker"></i>Tuen Mun Central Square, 22 Hoi Wing Road, Tuen Mun, Hong Kong</li>
          <li><i class="fa fa-phone-square"></i>(+666) 77 888 999</li>
          <li><i class="fa fa-tablet"></i>(+777) 88 999 000</li>
           
        </ul>

        <!-- Begin social icons //-->
        <ul class="social-icons">
          <li><a class="facebook" target="_blank" href="http://www.your-facebook-address.com" oldtitle="Facebook" title=""><i class="fa fa-facebook"></i></a></li>
          <li><a class="twitter" target="_blank" href="http://www.your-twitter-address.com" oldtitle="Twitter" title=""><i class="fa fa-twitter"></i></a></li>         
          <li><a class="google" target="_blank" href="http://www.your-google-address.com" oldtitle="Google" title=""><i class="fa fa-google"></i></a></li>
        
        </ul>
        <!-- End social icons //-->

     
      </div>
    </div> 

    <!-- Begin footer mobile //-->
  <div id="footer-mobile">
     <div class="column-aboutus footer-menu-mobile">
       <h5>About Us</h5>
       <div class="footer-menu-mobile-nav">
          
        <p>
          Lorem ipsum dolor sit amet consectetur adipiscing nulla facilisis interdum venenatis nullam vulputate.Praesent quis ante dapibus tellus mollis dapibus ullamcorper sit amet erat,Praesent quis ante dapibus tellus mollis dapibus...
        </p>
        <p>
        Modern versions of assistive technologies will announce CSS generated content, as well as specific Unicode characters. To avoid unintended and confusing output in screen readers (particularly when icons are used purely for decoration), we hide them with the aria-hidden="true" attribute.
      </p>
      </div>
      </div>

      <?php if ($informations) { ?>
      <div class="footer-menu-mobile">
        <h5><?php echo $text_information; ?></h5>
        <div class="footer-menu-mobile-nav">
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
            <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
        </ul>
      </div>
      </div>
      <?php } ?>
       <div class="footer-menu-mobile">
        <h5><?php echo $text_extra; ?></h5>
        <div class="footer-menu-mobile-nav">
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
        </div>
      </div>
     <div class="footer-menu-mobile">
        <h5><?php echo $text_account; ?></h5>
         <div class="footer-menu-mobile-nav">
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
           <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
        </ul>
      </div>
      </div>
       <div class="column-contacts footer-menu-mobile">
        
        <h5>Contact Us</h5>
        <div class="footer-menu-mobile-nav">
       <ul>
          <li><i class="fa fa-map-marker"></i>Tuen Mun Central Square, 22 Hoi Wing Road, Tuen Mun, Hong Kong</li>
          <li><i class="fa fa-phone-square"></i>(+666) 77 888 999</li>
          <li><i class="fa fa-tablet"></i>(+777) 88 999 000</li>
           
        </ul>

        <!-- Begin social icons //-->
        <ul class="social-icons">
          <li><a class="facebook" target="_blank" href="http://www.your-facebook-address.com" oldtitle="Facebook" title=""><i class="fa fa-facebook"></i></a></li>
          <li><a class="twitter" target="_blank" href="http://www.your-twitter-address.com" oldtitle="Twitter" title=""><i class="fa fa-facebook"></i></a></li>         
          <li><a class="google" target="_blank" href="http://www.your-google-address.com" oldtitle="Google" title=""><i class="fa fa-facebook"></i></a></li>
        
        </ul>
        <!-- End social icons //-->
        </div>
     
      </div>
  </div> <!-- End mobile //-->

  </div>
  
   <div id="powered"><div class="container">
    <div class="power left"><?php echo $powered; ?></div>
    <div class="payment right">
    <img src="catalog/view/theme/shopyfashion/image/payments.png" alt="payments" oldtitle="payments" title="" aria-describedby="ui-tooltip-27">
  </div>
  </div> 
  </div>

</footer>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//--> 

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

</body></html>