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
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?><?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<div class="side-bar">
         <a href="" class="icon-chat">微信<div class="chat-tips"><i></i><img style="width:138px;height:138px;" src="catalog/view/theme/default/image/wechat.png" alt="微信扫一扫，客服等你找"></div></a>
         <a href="mailto:admin@admin.com" class="icon-mail">mail</a>
</div>
<?php echo $footer; ?>
