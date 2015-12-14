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
                <label class="control-label" for="input-search"><?php echo $entry_search; ?></label>
                <div class="row">
                    <div class="col-sm-4">
                        <input type="text" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_keyword; ?>" id="input-search" class="form-control" />
                    </div>
                    <div class="col-sm-3">
                        <select name="category_id" class="form-control">
                            <option value="0"><?php echo $text_category; ?></option>
                            <?php foreach ($categories as $category_1) { ?>
                            <?php if ($category_1['category_id'] == $category_id) { ?>
                            <option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
                            <?php } ?>
                            <?php foreach ($category_1['children'] as $category_2) { ?>
                            <?php if ($category_2['category_id'] == $category_id) { ?>
                            <option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
                            <?php } ?>
                            <?php foreach ($category_2['children'] as $category_3) { ?>
                            <?php if ($category_3['category_id'] == $category_id) { ?>
                            <option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
                            <?php } ?>
                            <?php } ?>
                            <?php } ?>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="col-sm-3">
                        <label class="checkbox-inline">
                            <?php if ($sub_category) { ?>
                            <input type="checkbox" name="sub_category" value="1" checked="checked" />
                            <?php } else { ?>
                            <input type="checkbox" name="sub_category" value="1" />
                            <?php } ?>
                            <?php echo $text_sub_category; ?></label>
                    </div>
                </div>
                <p>
                    <label class="checkbox-inline">
                        <?php if ($description) { ?>
                        <input type="checkbox" name="description" value="1" id="description" checked="checked" />
                        <?php } else { ?>
                        <input type="checkbox" name="description" value="1" id="description" />
                        <?php } ?>
                        <?php echo $entry_description; ?></label>
                </p>
                <input type="button" value="<?php echo $button_search; ?>" id="button-search" class="btn btn-primary" />
                <h2><?php echo $text_search; ?></h2>
                <?php if ($products) { ?>
                <p><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></p>
                <div class="well well-sm clearfix">
                    <div class="col-sm-3 col-md-4 hidden-xs">
                        <div class="btn-group">
                            <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
                            <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
                        </div>
                    </div>
                    <div class="col-sm-2 col-md-2 form-horizontal">
                        <label class="control-label" for="input-sort"><?php echo $text_sort; ?></label>
                    </div>
                    <div class="col-sm-3 col-md-3 text-right">
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
                    <div class="col-sm-2 col-md-1 form-horizontal">
                        <label class="control-label" for="input-limit"><?php echo $text_limit; ?></label>
                    </div>
                    <div class="col-sm-2 col-md-2 text-right">
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
                <?php } ?>
                <?php echo $content_bottom; ?>
            </section>
        </div>
        <?php echo $column_right; ?>
    </div>
</div>
<?php echo $footer; ?> 
<script type="text/javascript"><!--
    $('#button-search').bind('click', function() {
    url = 'index.php?route=product/search';

    var search = $('#content input[name=\'search\']').prop('value');

    if (search) {
        url += '&search=' + encodeURIComponent(search);
    }

    var category_id = $('#content select[name=\'category_id\']').prop('value');

    if (category_id > 0) {
        url += '&category_id=' + encodeURIComponent(category_id);
    }

    var sub_category = $('#content input[name=\'sub_category\']:checked').prop('value');

    if (sub_category) {
        url += '&sub_category=true';
    }

    var filter_description = $('#content input[name=\'description\']:checked').prop('value');

    if (filter_description) {
        url += '&description=true';
    }

    location = url;
});

    $('#content input[name=\'search\']').bind('keydown', function(e) {
        if (e.keyCode == 13) {
            $('#button-search').trigger('click');
        }
    });

    $('select[name=\'category_id\']').on('change', function() {
        if (this.value == '0') {
            $('input[name=\'sub_category\']').prop('disabled', true);
        } else {
            $('input[name=\'sub_category\']').prop('disabled', false);
        }
    });

    $('select[name=\'category_id\']').trigger('change');
    --></script>