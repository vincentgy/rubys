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
                <h1><?php echo $heading_title; ?></h1>
                <?php if ($products) { ?>
                <p><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></p>
                <div class="well well-sm clearfix">
                    <div class="col-md-4 hidden-xs">
                        <div class="btn-group">
                            <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
                            <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
                        </div>
                    </div>
                    <div class="col-md-2 form-horizontal">
                        <label class="control-label" for="input-sort"><?php echo $text_sort; ?></label>
                    </div>
                    <div class="col-md-3 text-right">
                        <select id="input-sort" class="form-control" onchange="location = this.value;">
                            <?php foreach ($sorts as $sorts) { ?>
                            <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                            <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                            <?php } ?>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="col-md-1 form-horizontal">
                        <label class="control-label" for="input-limit"><?php echo $text_limit; ?></label>
                    </div>
                    <div class="col-md-2 text-right">
                        <select id="input-limit" class="form-control" onchange="location = this.value;">
                            <?php foreach ($limits as $limits) { ?>
                            <?php if ($limits['value'] == $limit) { ?>
                            <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                            <?php } ?>
                            <?php } ?>
                        </select>
                    </div>
                </div>
                <br />
                <div class="row row-list product-layout">
                    <?php foreach ($products as $product) { ?>
                    <article class="product-item product-list col-xs-6 col-sm-12">
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
                <div class="well well-sm clearfix">
                    <div class="col-sm-6 col-xs-12 text-left"><?php echo $pagination; ?></div>
                    <div class="col-sm-6 col-xs-12 text-right showing"><?php echo $results; ?></div>
                </div>
                <?php } else { ?>
                <p><?php echo $text_empty; ?></p>
                <div class="buttons">
                    <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary btn-custom"><?php echo $button_continue; ?></a></div>
                </div>
                <?php } ?>
                <?php echo $content_bottom; ?>
            </section>
        </div>
        <?php echo $column_right; ?>
    </div>
</div>
<?php echo $footer; ?> 