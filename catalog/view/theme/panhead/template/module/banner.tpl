<div id="banner<?php echo $module; ?>" class="oc-banner">
    <div class="row">
        <?php foreach ($banners as $banner) { ?>
        <?php if ($banner['link']) { ?>
        <div class="col-sm-4 ">
            <a href="<?php echo $banner['link']; ?>" class="img-banner"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
                <div class="baner_title"><?php echo $banner['title']; ?></div>
            </a>
        </div>
        <?php } else { ?>
        <div class="col-sm-4 ">
            <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-banner img-responsive" />
            <div class="title-banner"><?php echo $banner['title']; ?></div>
        </div>
        <?php } ?>
        <?php } ?>
    </div>
</div>

