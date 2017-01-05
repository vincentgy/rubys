<?php echo $header; ?>
<div class="container columns">
    <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
    </ul>
    <div class="row"><?php echo $column_left; ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-4 col-md-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-8 col-md-9 '; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-12'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?>">
            <section id="content">
                <?php echo $content_top; ?>
                <div class="row" itemscope itemtype="http://schema.org/Product">
                    <?php if ($column_left && $column_right) { ?>
                    <?php $class = 'col-sm-12 col-md-12'; ?>
                    <?php } elseif ($column_left || $column_right) { ?>
                    <?php $class = 'col-sm-12 col-md-6 col-lg-5'; ?>
                    <?php } else { ?>
                    <?php $class = 'col-sm-6 col-md-5'; ?>
                    <?php } ?>
                    <div id="product-image" class="<?php echo $class; ?>">
                        <?php if ($thumb || $images) { ?>
                        <div id="preview-product"  class="carousel slide" data-ride="carousel" data-interval="false">
                            <div class="carousel-inner " role="listbox">
                                <?php if ($thumb) { ?>
                                <div  class="item thumbnails active"><a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>"><img src="<?php echo $thumb; ?>" itemprop="image" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></div>
                                <?php } ?>
                                <?php if ($images) { ?>
                                <?php foreach ($images as $key =>$image) { ?>
                                <div class="item thumbnails"><a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"> <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
                                </div>
                                <?php } ?>
                                <?php } ?>
                            </div>
                            <!-- Controls -->
                            <a class="left carousel-control visible-xs" href="#preview-product" role="button" data-slide="prev">
                                <i class="fa fa-chevron-left fa-5x" aria-hidden="true"></i>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="right carousel-control visible-xs" href="#preview-product" role="button" data-slide="next">
                                <i class="fa fa-chevron-right fa-5x" aria-hidden="true"></i>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                        <div id="slide-thumbs-product" class="hidden-xs">
                            <ul class="thumbnails-product list-inline">
                                <?php if ($thumb) { ?>
                                <li class="image-additional  col-sm-4 col-lg-3"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" class="img-responsive" data-target="#preview-product" data-slide-to="0" /></li>
                                <?php } ?>
                                <?php if ($images) { ?>
                                <?php foreach ($images as $key =>$image) { ?>
                                <li class="image-additional col-sm-4 col-lg-3"><img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" class="img-responsive" data-target="#preview-product" data-slide-to="<?php echo $key+1 ?>" />
                                </li>
                                <?php } ?>
                                <?php } ?>
                            </ul>
                        </div>
                        <?php } ?>
                    </div>
                    <?php if ($column_left && $column_right) { ?>
                    <?php $class = 'col-sm-12'; ?>
                    <?php } elseif ($column_left || $column_right) { ?>
                    <?php $class = 'col-sm-12 col-md-6 col-lg-7'; ?>
                    <?php } else { ?>
                    <?php $class = 'col-sm-6 col-md-7'; ?>
                    <?php } ?>
                    <div class="<?php echo $class; ?>">
                        <div class="row">
                            <?php if ($column_left && $column_right) { ?>
                            <?php $class = 'col-sm-12 col-md-6 col-lg-6'; ?>
                            <?php } elseif ($column_left || $column_right) { ?>
                            <?php $class = 'col-sm-6 col-md-12 col-lg-6'; ?>
                            <?php } else { ?>
                            <?php $class = 'col-sm-12 col-md-7'; ?>
                            <?php } ?>
                            <div id="product-desc" class="<?php echo $class; ?>">
                                <h3 itemprop="name"><?php echo $heading_title; ?></h3>

                                <?php if ($review_status) { ?>
                                <div class="rating">
                                    <p>
                                        <?php for ($i = 1; $i <= 5; $i++) { ?>
                                        <?php if ($rating < $i) { ?>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                        <?php } else { ?>
                                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                        <?php } ?>
                                        <?php } ?>
                                        <button class="btn-review btn btn-link"  type="button" ><?php echo $reviews; ?></button> / <button class="btn btn-link" data-toggle="modal" data-target="#modal-review"><?php echo $text_write; ?></button></p>

                                </div>
                                <?php } ?>

                                <ul class="list-unstyled">
                                    <?php if ($manufacturer) { ?>
                                    <li><?php echo $text_manufacturer; ?> <a href="<?php echo $manufacturers; ?>"><span itemprop="brand"><?php echo $manufacturer; ?></span></a></li>
                                    <?php } ?>
                                    <li><?php echo $text_model; ?> <?php echo $model; ?></li>
                                    <?php if ($reward) { ?>
                                    <li><?php echo $text_reward; ?> <?php echo $reward; ?></li>
                                    <?php } ?>
                                    <li><?php echo $text_stock; ?> <span itemprop="quantity"><?php echo $stock; ?></span></li>
                                    <?php if ($tags) { ?>
                                    <li><?php echo $text_tags; ?>
                                        <?php for ($i = 0; $i < count($tags); $i++) { ?>
                                        <?php if ($i < (count($tags) - 1)) { ?>
                                        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
                                        <?php } else { ?>
                                        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
                                        <?php } ?>
                                        <?php } ?>
                                    </li>
                                    <?php } ?>
                                </ul>

                                <?php if ($minimum > 1) { ?>
                                <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
                                <?php } ?>

                                <!-- AddBaidu Share Button BEGIN -->
                                <div class="bdsharebuttonbox"><a href="#" class="bds_more" data-cmd="more"></a><a title="分享到QQ空间" href="#" class="bds_qzone" data-cmd="qzone"></a><a title="分享到新浪微博" href="#" class="bds_tsina" data-cmd="tsina"></a><a title="分享到腾讯微博" href="#" class="bds_tqq" data-cmd="tqq"></a><a title="分享到人人网" href="#" class="bds_renren" data-cmd="renren"></a><a title="分享到微信" href="#" class="bds_weixin" data-cmd="weixin"></a><a title="分享到Facebook" href="#" class="bds_fbook" data-cmd="fbook"></a><a title="分享到Twitter" href="#" class="bds_twi" data-cmd="twi"></a><a title="分享到linkedin" href="#" class="bds_linkedin" data-cmd="linkedin"></a></div>
                                <script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdMiniList":false,"bdPic":"","bdStyle":"0","bdSize":"24"},"share":{},"image":{"viewList":["qzone","tsina","tqq","renren","weixin","fbook","twi","linkedin"],"viewText":"分享到：","viewSize":"16"},"selectShare":{"bdContainerClass":null,"bdSelectMiniList":["qzone","tsina","tqq","renren","weixin","fbook","twi","linkedin"]}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script>
                                <!-- AddBaidu Share Button END -->
                            </div>
                            <?php if ($column_left && $column_right) { ?>
                            <?php $class = 'col-sm-12 col-md-6 col-lg-6'; ?>
                            <?php } elseif ($column_left || $column_right) { ?>
                            <?php $class = 'col-sm-6 col-md-12 col-lg-6'; ?>
                            <?php } else { ?>
                            <?php $class = 'col-sm-12 col-md-5'; ?>
                            <?php } ?>
                            <div id="price-block"  class="<?php echo $class; ?>">
                                <?php if ($column_left && $column_right) { ?>
                                <?php $class = 'affix-none'; ?>
                                <?php } elseif ($column_left || $column_right) { ?>
                                <?php $class = 'affix-product affix-lg'; ?>
                                <?php } else { ?>
                                <?php $class = 'affix-product '; ?>
                                <?php } ?>
                                <div class="<?php echo $class; ?> well affix-top" itemtype="http://schema.org/Offer" itemscope="" itemprop="offers">
                                    <?php if ($price) { ?>
                                    <ul class="list-unstyled">
                                        <?php if (!$special) { ?>
                                        <li>
                                            <h2 class="price" itemprop="price"><?php echo $price; ?></h2>
                                        </li>
                                        <?php } else { ?>
                                        <li>
                                            <h2 class="price"  itemprop="price"><?php echo $special; ?></h2>
                                        </li>
                                        <li class="old-price"><span><s><?php echo $price; ?></s></span></li>
                                        <?php } ?>
                                        <?php if ($tax) { ?>
                                        <li><?php echo $text_tax; ?> <?php echo $tax; ?></li>
                                        <?php } ?>
                                        <?php if ($points) { ?>
                                        <li><?php echo $text_points; ?> <?php echo $points; ?></li>
                                        <?php } ?>
                                        <?php if ($discounts) { ?>
                                        <li>
                                            <hr>
                                        </li>
                                        <?php foreach ($discounts as $discount) { ?>
                                        <li><?php echo $discount['quantity']; ?><?php echo $text_discount; ?><?php echo $discount['price']; ?></li>
                                        <?php } ?>
                                        <?php } ?>
                                    </ul>
                                    <?php } ?>
                                    <div id="product">
                                        <?php if ($options) { ?>
                                        <hr>
                                        <h3><?php echo $text_option; ?></h3>
                                        <?php foreach ($options as $option) { ?>
                                        <?php if ($option['type'] == 'select') { ?>
                                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                            <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                            <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                                                <option value=""><?php echo $text_select; ?></option>
                                                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                                <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                                                    <?php if ($option_value['price']) { ?>
                                                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                                    <?php } ?>
                                                </option>
                                                <?php } ?>
                                            </select>
                                        </div>
                                        <?php } ?>
                                        <?php if ($option['type'] == 'radio') { ?>
                                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                            <label class="control-label"><?php echo $option['name']; ?></label>
                                            <div id="input-option<?php echo $option['product_option_id']; ?>">
                                                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                                                        <?php echo $option_value['name']; ?>
                                                        <?php if ($option_value['price']) { ?>
                                                        (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                                        <?php } ?>
                                                    </label>
                                                </div>
                                                <?php } ?>
                                            </div>
                                        </div>
                                        <?php } ?>
                                        <?php if ($option['type'] == 'checkbox') { ?>
                                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                            <label class="control-label"><?php echo $option['name']; ?></label>
                                            <div id="input-option<?php echo $option['product_option_id']; ?>">
                                                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                                                        <?php echo $option_value['name']; ?>
                                                        <?php if ($option_value['price']) { ?>
                                                        (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                                        <?php } ?>
                                                    </label>
                                                </div>
                                                <?php } ?>
                                            </div>
                                        </div>
                                        <?php } ?>
                                        <?php if ($option['type'] == 'image') { ?>
                                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                            <label class="control-label"><?php echo $option['name']; ?></label>
                                            <div id="input-option<?php echo $option['product_option_id']; ?>">
                                                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                                                        <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> <?php echo $option_value['name']; ?>
                                                        <?php if ($option_value['price']) { ?>
                                                        (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                                        <?php } ?>
                                                    </label>
                                                </div>
                                                <?php } ?>
                                            </div>
                                        </div>
                                        <?php } ?>
                                        <?php if ($option['type'] == 'text') { ?>
                                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                            <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                                        </div>
                                        <?php } ?>
                                        <?php if ($option['type'] == 'textarea') { ?>
                                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                            <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                            <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
                                        </div>
                                        <?php } ?>
                                        <?php if ($option['type'] == 'file') { ?>
                                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                            <label class="control-label"><?php echo $option['name']; ?></label>
                                            <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
                                            <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
                                        </div>
                                        <?php } ?>
                                        <?php if ($option['type'] == 'date') { ?>
                                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                            <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                            <div class="input-group date">
                                                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                                                <span class="input-group-btn">
                                                    <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                                                </span></div>
                                        </div>
                                        <?php } ?>
                                        <?php if ($option['type'] == 'datetime') { ?>
                                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                            <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                            <div class="input-group datetime">
                                                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                                                <span class="input-group-btn">
                                                    <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                                                </span></div>
                                        </div>
                                        <?php } ?>
                                        <?php if ($option['type'] == 'time') { ?>
                                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                            <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                            <div class="input-group time">
                                                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                                                <span class="input-group-btn">
                                                    <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                                                </span></div>
                                        </div>
                                        <?php } ?>
                                        <?php } ?>
                                        <?php } ?>
                                        <?php if ($recurrings) { ?>
                                        <hr>
                                        <h3><?php echo $text_payment_recurring ?></h3>
                                        <div class="form-group required">
                                            <select name="recurring_id" class="form-control">
                                                <option value=""><?php echo $text_select; ?></option>
                                                <?php foreach ($recurrings as $recurring) { ?>
                                                <option value="<?php echo $recurring['recurring_id'] ?>"><?php echo $recurring['name'] ?></option>
                                                <?php } ?>
                                            </select>
                                            <div class="help-block" id="recurring-description"></div>
                                        </div>
                                        <?php } ?>
                                        <div class="form-group">
                                            <label class="control-label" for="input-quantity"><?php echo $entry_qty; ?></label>
                                            <input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control" />
                                            <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                                            <br />
                                            <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary btn-lg btn-block btn-custom"><?php echo $button_cart; ?></button>
                                        </div>

                                        <button type="button"  class="btn btn-link" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product_id; ?>');"><i class="fa fa-heart"></i><?php echo $button_wishlist; ?></button>
                                        <button type="button"  class="btn btn-link" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product_id; ?>');"><i class="fa fa-exchange"></i><?php echo $button_compare; ?></button>



                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <?php if ($column_left && $column_right) { ?>
                    <?php $class = 'col-sm-12 col-md-12'; ?>
                    <?php } elseif ($column_left || $column_right) { ?>
                    <?php $class = 'col-md-12 col-lg-8'; ?>
                    <?php } else { ?>
                    <?php $class = 'col-sm-12 col-md-9'; ?>
                    <?php } ?>
                    <div class="<?php echo $class; ?>">
                        <div class="panel-group" id="accordion">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                            <?php echo $tab_description; ?>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseOne" class="panel-collapse collapse in">
                                    <div class="panel-body" itemprop="description">
                                        <?php echo $description; ?>
                                    </div>
                                </div>
                            </div>

                            <?php if ($attribute_groups) { ?>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" class="collapsed">
                                            <?php echo $tab_attribute; ?>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <table class="table table-bordered">
                                            <?php foreach ($attribute_groups as $attribute_group) { ?>
                                            <thead>
                                                <tr>
                                                    <td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                                                <tr>
                                                    <td><?php echo $attribute['name']; ?></td>
                                                    <td><?php echo $attribute['text']; ?></td>
                                                </tr>
                                                <?php } ?>
                                            </tbody>
                                            <?php } ?>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <?php } ?>
                            <?php if ($review_status) { ?>
                            <div  class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTree" class="collapsed">
                                            <?php echo $tab_review; ?>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseTree" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <div id="review"></div>
                                        <!-- Button trigger modal -->
                                        <button class="btn btn-default btn-custom" data-toggle="modal" data-target="#modal-review">
                                            <?php echo $text_write; ?>
                                        </button>

                                    </div>
                                </div>
                            </div>
                            <?php } ?>

                            <?php if ($products) { ?>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour">
                                            <?php echo $text_related; ?>
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseFour" class="panel-collapse collapse in">
                                    <div class="panel-body">
                                        <div class="row">
                                            <?php $i = 0; ?>
                                            <?php foreach ($products as $product) { ?>
                                            <?php if ($column_left && $column_right) { ?>
                                            <?php $class = ' col-md-6 col-sm-12 '; ?>
                                            <?php } elseif ($column_left || $column_right) { ?>
                                            <?php $class = 'col-lg-4 col-sm-6 col-xs-12'; ?>
                                            <?php } else { ?>
                                            <?php $class = 'col-lg-3 col-md-4 col-xs-6'; ?>
                                            <?php } ?>
                                            <article class="product-item <?php echo $class; ?>">
                                                <a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>" class="product-thumb transition">
                                                    <div class="image"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></div>
                                                    <div class="caption">
                                                        <h4><?php echo $product['name']; ?></h4>
                                                        <p class="description"><?php echo $product['description']; ?></p>

                                                        <?php if ($product['price']) { ?>
                                                        <p class="price">
                                                            <?php if (!$product['special']) { ?>
                                                            <?php echo $product['price']; ?>
                                                            <?php } else { ?>
                                                            <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                                                            <?php } ?>
                                                            <?php if ($product['tax']) { ?>
                                                            <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                                                            <?php } ?>
                                                        </p>
                                                        <?php } ?>
                                                        <?php if ($product['rating']) { ?>
                                                        <div class="rating">
                                                            <?php for ($i = 1; $i <= 5; $i++) { ?>
                                                            <?php if ($product['rating'] < $i) { ?>
                                                            <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                            <?php } else { ?>
                                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                            <?php } ?>
                                                            <?php } ?>
                                                        </div>
                                                        <?php } ?>

                                                    </div>
                                                </a>
                                                <div class="button-group">
                                                    <button class="btn btn-primary btn-custom" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><?php echo $button_cart; ?></button><br/>
                                                    <div class="btn-group">
                                                        <button class="btn btn-default btn-wishlist" type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
                                                        <button class="btn btn-default btn-compare" type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
                                                    </div>
                                                </div>
                                            </article>
                                            <?php } ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <?php } ?>
                        </div>
                        <?php echo $content_bottom; ?>
                    </div>
                </div>

                <!-- Modal review-->
                <div class="modal fade" id="modal-review" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                <h4 class="modal-title" id="myModalLabel"><?php echo $text_write; ?></h4>
                            </div>
                            <div class="modal-body">
                                <form class="form-horizontal">
                                    <?php if ($review_guest) { ?>
                                    <div class="form-group required">
                                        <div class="col-sm-12">
                                            <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                                            <input type="text" name="name" value="" id="input-name" class="form-control" />
                                        </div>
                                    </div>
                                    <div class="form-group required">
                                        <div class="col-sm-12">
                                            <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                                            <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                                            <div class="help-block"><?php echo $text_note; ?></div>
                                        </div>
                                    </div>
                                    <div class="form-group required">
                                        <div class="col-sm-12">
                                            <label class="control-label"><?php echo $entry_rating; ?></label>
                                            &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                                            <input type="radio" name="rating" value="1" />
                                            &nbsp;
                                            <input type="radio" name="rating" value="2" />
                                            &nbsp;
                                            <input type="radio" name="rating" value="3" />
                                            &nbsp;
                                            <input type="radio" name="rating" value="4" />
                                            &nbsp;
                                            <input type="radio" name="rating" value="5" />
                                            &nbsp;<?php echo $entry_good; ?></div>
                                    </div>
                                    <?php echo $captcha; ?>
                                    <div class="form-group confirmation">
                                        <div class="col-sm-12"> <img src="index.php?route=tool/captcha" alt="" id="captcha" /> </div>
                                    </div>
                                    <div class="buttons">
                                        <div class="pull-right">
                                            <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-custom"><?php echo $button_continue; ?></button>
                                        </div>
                                    </div>
                                    <?php } else { ?>
                                    <?php echo $text_login; ?>
                                    <?php } ?>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

            </section>
            <?php echo $column_right; ?>
        </div>
    </div>
</div>
<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();

			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script>
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {
				$('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				$('#cart-total').html(json['total']);

                $('.bt-cart-mobile').addClass('incart');

				$('html, body').animate({ scrollTop: 0 }, 'slow');

				$('#cart > ul').load('index.php?route=common/cart/info ul li');
			}
		},
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
	});
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);

			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input').attr('value', json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
  e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : ''),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#modal-review .modal-body').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#modal-review .modal-header').prepend('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
});

$(document).ready(function() {
	$('.thumbnails').magnificPopup({
		type:'image',
		delegate: 'a',
		gallery: {
			enabled:true
		}
	});
});
//--></script>
<?php echo $footer; ?>
