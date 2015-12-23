 <div id="tab-watermark">
    <table class="table">
        
        <tr>
        <td class="col-xs-3">
            <h5><span class="required">* </span><strong><?php echo $entry_code; ?></strong></h5>
            <span class="help"><i class="fa fa-info-circle"></i>&nbsp;为特定商店启用或禁用图片水印。</span>
        </td>
        <td class="col-xs-9">
            <div class="col-xs-4">
                <select id="Checker" name="iwatermark[Enabled]" class="form-control iWatermarkEnabled">
                  <option value="true" <?php echo (!empty($data['iwatermark']['Enabled']) && $data['iwatermark']['Enabled'] == 'true') ? 'selected=selected' : '' ?>><?php echo $text_enabled; ?></option>
                  <option value="false"  <?php echo (empty($data['iwatermark']['Enabled']) || $data['iwatermark']['Enabled'] == 'false') ? 'selected=selected' : '' ?>><?php echo $text_disabled; ?></option>
                </select>
             </div>
        </td>
        </tr>
        <tr class="iWatermarkActiveTR">
            <td class="col-xs-3">
                <h5><span class="required">* </span><strong><?php echo $entry_watermark_limit; ?></strong></h5>
                <span class="help"><i class="fa fa-info-circle"></i>&nbsp;如果你想只比较一个尺寸，可以将另一个框留空。 (例如： 100x0 or 100x&#39;&#39;)</span>
            </td>
            <td class="col-xs-9">
            	<div class="col-xs-4">
                    <select id="iWatermarkLimitSizeType" name="iwatermark[LimitSizeType]" class="form-control">
                        <option value="all"<?php echo !empty($data['iwatermark']['LimitSizeType']) && $data['iwatermark']['LimitSizeType'] == 'all' ? ' selected="selected"' : ''; ?>><?php echo $entry_all_images; ?></option>
                        <option value="bigger_than"<?php echo !empty($data['iwatermark']['LimitSizeType']) && $data['iwatermark']['LimitSizeType'] == 'bigger_than' ? ' selected="selected"' : ''; ?>><?php echo $entry_bigger_than; ?></option>
                        <option value="smaller_than"<?php echo !empty($data['iwatermark']['LimitSizeType']) && $data['iwatermark']['LimitSizeType'] == 'smaller_than' ? ' selected="selected"' : ''; ?>><?php echo $entry_smaller_than; ?></option>
                    </select>
                </div> 
                <div id="iWatermarkLimitSizes" style="display: none;">
                    <div class="col-xs-3">
                        <div class="input-group">
                            <input size="4" type="text" class="form-control" name="iwatermark[LimitSizeWidth]" value="<?php echo !empty($data['iwatermark']['LimitSizeWidth']) ? $data['iwatermark']['LimitSizeWidth'] : '' ?>">
                            <span class="input-group-addon"> x </span>
                            <input size="4" type="text" class="form-control" name="iwatermark[LimitSizeHeight]" value="<?php echo !empty($data['iwatermark']['LimitSizeHeight']) ? $data['iwatermark']['LimitSizeHeight'] : '' ?>">
                            <span class="input-group-addon"> (宽 x 高) </span>
                        </div>
                    </div>
                </div>
            </td>
        </tr>
        <tr class="iWatermarkActiveTR">
            <td class="col-xs-3"><h5><span class="required">* </span><strong><?php echo $entry_watermark_limit_categories; ?></strong></h5></td>
            <td class="col-xs-9">
                <div class="col-xs-4">
                    <select id="iWatermarkLimitCategories" name="iwatermark[LimitCategories]" class="form-control">
                        <option value="all"<?php echo !empty($data['iwatermark']['LimitCategories']) && $data['iwatermark']['LimitCategories'] == 'all' ? ' selected="selected"' : ''; ?>><?php echo $entry_all_categories; ?></option>
                        <option value="specific"<?php echo !empty($data['iwatermark']['LimitCategories']) && $data['iwatermark']['LimitCategories'] == 'specific' ? ' selected="selected"' : ''; ?>><?php echo $entry_following_categories; ?></option>
                    </select>
                </div>
                <div id="iWatermarkLimitCategory" style="display: none;" class="col-xs-3">
                	<input type="text" class="form-control" name="category" value="" /><br />
                	<div id="product-category" class="scrollbox col-xs-12">
						<?php $class = 'odd'; ?>
                        <?php foreach ($product_categories as $product_category) { ?>
                        <?php $class = ($class == 'even' ? 'odd' : 'even'); ?>
                        <div id="product-category<?php echo $product_category['category_id']; ?>" class="<?php echo $class; ?>"><i class="fa fa-minus-circle"></i> <?php echo $product_category['name']; ?>
                          <input type="hidden" name="iwatermark[LimitCategoriesList][]" value="<?php echo $product_category['category_id']; ?>" />
                        </div>
                        <?php } ?>
                    </div>
                </div>
            </td>
        </tr>
        <tr class="iWatermarkActiveTR">
            <td class="col-xs-3"><h5><span class="required">* </span><strong><?php echo $entry_watermark_limit_related; ?></strong></h5></td>
            <td class="col-xs-9">
                <div class="col-xs-4">
                    <select id="iWatermarkLimitRelated" name="iwatermark[LimitRelated]" class="form-control">
                        <option value="all"<?php echo !empty($data['iwatermark']['LimitRelated']) && $data['iwatermark']['LimitRelated'] == 'all' ? ' selected="selected"' : ''; ?>><?php echo $entry_all_related; ?></option>
                        <option value="specific"<?php echo !empty($data['iwatermark']['LimitRelated']) && $data['iwatermark']['LimitRelated'] == 'specific' ? ' selected="selected"' : ''; ?>><?php echo $entry_following_related; ?></option>
                    </select>
                </div>
                <div id="iWatermarkLimitRelatedEntry" class="col-xs-3" style="display: none;">
                	<input type="text" class="form-control" name="related" value="" /><br />
                	<div id="product-related" class="scrollbox col-xs-12">
						<?php $class = 'odd'; ?>
                        <?php foreach ($products_related as $product_related) { ?>
                        <?php $class = ($class == 'even' ? 'odd' : 'even'); ?>
                        <div id="product-related<?php echo $product_related['product_id']; ?>" class="<?php echo $class; ?>"><i class="fa fa-minus-circle"></i> <?php echo $product_related['name']; ?>
                          <input type="hidden" name="iwatermark[LimitRelatedList][]" value="<?php echo $product_related['product_id']; ?>" />
                        </div>
                        <?php } ?>
                    </div>
                </div>
            </td>
        </tr>
        <tr class="iWatermarkActiveTR">
            <td class="col-xs-3"><h5><span class="required">* </span><strong><?php echo $entry_type; ?></strong></h5></td>
            <td class="col-xs-9">
                <div class="col-xs-4">
                    <div class="radio" style="margin-left: 22px;">
                        <input type="radio" class="imgtxt" data-affects=".iWatermarkImageTR, .iWatermarkOpacityTR" id="iWatermarkTypeImage" name="iwatermark[Type]" value="image"<?php echo !empty($data['iwatermark']['Type']) && $data['iwatermark']['Type'] == 'image' ? ' checked="checked"' : '' ?>><label for="iWatermarkTypeImage"><?php echo $text_type_image; ?></label>
                        <br/><br/>
                        <input type="radio" class="imgtxt" data-affects=".iWatermarkTextTR, .iWatermarkOpacityTR" id="iWatermarkTypeText" name="iwatermark[Type]" value="text"<?php echo !empty($data['iwatermark']['Type']) && $data['iwatermark']['Type'] == 'text' ? ' checked="checked"' : '' ?>><label for="iWatermarkTypeText"><?php echo $text_type_text; ?></label>
                    </div>
                </div>
            </td>
        </tr>
        <tr class="iWatermarkActiveTR iWatermarkImageTR">
            <td class="col-xs-3">
                <h5><span class="required">* </span><strong><?php echo $entry_image; ?></strong></h5>
                <span class="help"><i class="fa fa-info-circle"></i>&nbsp;水印图片 (.png; .jpg)</span>
            </td>
            <td class="col-xs-9">
                <div class="col-xs-4">
                    <input type="hidden" name="MAX_FILE_SIZE" value="<?php echo $maxSize; ?>" /> 
                    <input type="file" class="form-control" name="iwatermark[Image]" /><span class="fileSizeInfo"><?php echo $text_max_size; ?> <?php echo $maxSizeReadable; ?><?php if ($maxSize < 1024) : ?><a class='needMoreSize' href="javascript:void(0)"><?php echo $text_max_size_learn; ?></a><?php endif; ?></span>
                </div>
            </td>
        </tr>
        <?php if (!empty($data['iwatermark']['Image']) && !empty($data['iwatermark']['ImagePath'])) : ?>
        <tr class="iWatermarkActiveTR iWatermarkImageTR">
            <td class="col-xs-3"><h5><strong><?php echo $entry_current_image; ?></strong></h5></td>
            <td class="col-xs-9">
                <div class="col-xs-4">
                    <div><img src="<?php echo $data['iwatermark']['Image'] ?>" alt="<?php echo $text_type_image; ?>" class="img-responsive"/></div>
                    <input type="hidden" name="iwatermark[Image]" value="<?php echo $data['iwatermark']['Image'] ?>" />
                    <input type="hidden" name="iwatermark[ImagePath]" value="<?php echo $data['iwatermark']['ImagePath'] ?>" />
                </div>    
            </td>
        </tr>
        <?php endif; ?>
        <tr class="iWatermarkActiveTR iWatermarkTextTR">
            <td class="col-xs-3"><h5><strong><span class="required">*</span> <?php echo $entry_text; ?></strong></h5></td>
            <td class="col-xs-9">
                <div class="col-xs-4">
                    <input type="text" class="form-control" name="iwatermark[Text]" placeholder="My Watermark" value="<?php echo !empty($data['iwatermark']['Text']) ? $data['iwatermark']['Text'] : '' ?>">
                </div>    
            </td>
        </tr>
        <tr class="iWatermarkActiveTR iWatermarkTextTR">
            <td class="col-xs-3">
                <h5><strong><span class="required">*</span> <?php echo $entry_font; ?></strong></h5>
                <span class="help"><i class="fa fa-info-circle"></i>&nbsp;可以上传自定义字体到 /vendors/iwatermark/font/ 目录下，必须为 .ttf 扩展名</span>
            </td>
            <td class="col-xs-9">
                <div class="col-xs-4">
                    <select name="iwatermark[Font]" class="form-control">
                        <?php foreach ($fonts as $font) : ?>
                        <option value="<?php echo $font; ?>"<?php echo (!empty($data['iwatermark']['Font']) && $data['iwatermark']['Font'] == $font) ? ' selected=selected ' : ''?>><?php echo $font; ?></option>
                        <?php endforeach; ?>
                    </select>
                </div>   
            </td>
        </tr>
        <tr class="iWatermarkActiveTR iWatermarkTextTR">
            <td class="col-xs-3"><h5><strong><span class="required">*</span> <?php echo $entry_font_size; ?></strong></h5></td>
            <td class="col-xs-9">
            	<div class="col-xs-4">
                    <select name="iwatermark[FontSize]" class="form-control">
                        <?php for ($s = 8; $s <= 100; $s++) : ?>
                        <option value="<?php echo $s; ?>"<?php echo (!empty($data['iwatermark']['FontSize']) && $data['iwatermark']['FontSize'] == $s) ? ' selected=selected ' : ''?>><?php echo $s; ?></option>
                        <?php endfor; ?>
                    </select>
                </div>    
            </td>
        </tr>
        <tr class="iWatermarkActiveTR iWatermarkTextTR">
            <td class="col-xs-3"><h5><strong><span class="required">*</span> <?php echo $entry_text_color; ?></strong></h5></td>
            <td class="colorWidget col-xs-9">
            	<div class="colorSelectorWrapper col-xs-4">
                	<div class="colorSelector" id="colorSelector">
                    	<div style="background-color: #<?php echo !empty($data['iwatermark']['Color']) ? $data['iwatermark']['Color'] : 'ffffff'; ?>"></div>
                	</div>
                	<div class="colorpickerHolder" id="colorpickerHolder"></div>
                	<input type="hidden" name="iwatermark[Color]" value="<?php echo !empty($data['iwatermark']['Color']) ? $data['iwatermark']['Color'] : 'ffffff'; ?>">
            	</div>
            </td>
        </tr>
        <tr class="iWatermarkActiveTR">
            <td class="col-xs-3">
                <h5><strong><span class="required">*</span> <?php echo $entry_position; ?></strong></h5>
                <span class="help"><i class="fa fa-info-circle"></i>&nbsp;水印被放置的地方。</span>
            </td>
            <td class="col-xs-9">
                <div class="col-xs-4">
                    <select name="iwatermark[Position]" class="form-control">
                        <option value="top_left" <?php echo !empty($data['iwatermark']['Position']) && $data['iwatermark']['Position'] == 'top_left' ? 'selected=selected' : ''?>><?php echo $text_top_left; ?></option>
                        <option value="top_right" <?php echo !empty($data['iwatermark']['Position']) && $data['iwatermark']['Position'] == 'top_right' ? 'selected=selected' : ''?>><?php echo $text_top_right; ?></option>
                        <option value="center" <?php echo !empty($data['iwatermark']['Position']) && $data['iwatermark']['Position'] == 'center' ? 'selected=selected' : ''?>><?php echo $text_center; ?></option>
                        <option value="bottom_left" <?php echo !empty($data['iwatermark']['Position']) && $data['iwatermark']['Position'] == 'bottom_left' ? 'selected=selected' : ''?>><?php echo $text_bottom_left; ?></option>
                        <option value="bottom_right" <?php echo !empty($data['iwatermark']['Position']) && $data['iwatermark']['Position'] == 'bottom_right' ? 'selected=selected' : ''?>><?php echo $text_bottom_right; ?></option>
                    </select>
                </div>
            </td>
        </tr>
        <tr class="iWatermarkActiveTR">
            <td class="col-xs-3"><h5><strong><span class="required">*</span> <?php echo $entry_rotation; ?></strong></h5></td>
            <td class="col-xs-9">
                <div class="col-xs-4">
                    <div class="input-group">
                        <input type="number" class="form-control" name="iwatermark[Rotation]" min="0" max="360" value="<?php echo isset($data['iwatermark']['Rotation']) ? $data['iwatermark']['Rotation'] : '0' ?>" /><span class="input-group-addon">&deg;</span>
                    </div>
                </div>
            </td>
        </tr>
        <tr class="iWatermarkActiveTR iWatermarkImageTR">
            <td class="col-xs-3">
                <h5><strong><span class="required">*</span> <?php echo $entry_image_opacity; ?></strong></h5>
                <span class="help"><i class="fa fa-info-circle"></i>&nbsp;如果水印是透明的 .png 格式文件，则最好选择此项。</span>
            </td>
            <td class="col-xs-9">
                <div class="col-xs-4">
                    <input type="checkbox" id="iWatermarkUseImageOpacity" data-affects=".iWatermarkOpacityTR" data-reversed="true" name="iwatermark[UseImageOpacity]" value="true"<?php echo !empty($data['iwatermark']['UseImageOpacity']) ? ' checked="checked"' : ''; ?>>
                </div>
            </td>
        </tr>
        <tr class="iWatermarkActiveTR iWatermarkOpacityTR">
            <td class="col-xs-3">
                <h5><strong><span class="required">*</span> <?php echo $entry_opacity; ?></strong></h5>
                <span class="help"><i class="fa fa-info-circle"></i>&nbsp;水印透明度 (0-100)。 默认值为 70.</span>
            </td>
            <td>
                <div class="col-xs-4">
                    <div class="input-group">
                        <input type="number" class="form-control" name="iwatermark[Opacity]" min="0" max="100" value="<?php echo isset($data['iwatermark']['Opacity']) ? $data['iwatermark']['Opacity'] : '70' ?>" /> <span class="input-group-addon">%</span>
                    </div>
                </div>
            </td>
        </tr>
    </table>
</div>
<script type="text/javascript">
$(document).ready(function() {
	
		var dependable = $('#iWatermarkTypeImage, #iWatermarkTypeText, #iWatermarkUseImageOpacity');
		var widt = false;
		
		var toggleiWatermarkActive = function(animated) {
			if ($('.iWatermarkEnabled').val() == 'true') {
				$('.iWatermarkActiveTR').each(function(index, element) {
					if ($(element).attr('data-hidden') != 'true') {
						if (animated) 
							$(element).fadeIn();
						else 
							$(element).show();
					}
				});
				
			} else {
				if (animated) 
					$('.iWatermarkActiveTR').fadeOut();
				else 
					$('.iWatermarkActiveTR').hide();
			}
		}
		
		$('.iWatermarkEnabled').change(function() {
			toggleiWatermarkActive(true);
		});
		
		$('#iWatermarkLimitSizeType').change(function() { 
			if ($(this).val() != 'all') $('#iWatermarkLimitSizes').fadeIn();
			else {
				$('#iWatermarkLimitSizes').fadeOut();
				$('#iWatermarkLimitSizes input').val('');
			}
		});
		
		$('#iWatermarkLimitCategories').change(function() {
			if ($(this).val() != 'all') $('#iWatermarkLimitCategory').fadeIn();
			else {
				$('#iWatermarkLimitCategory').fadeOut();
				$('#iWatermarkLimitCategory input').val('');
			}
		});
		
		$('#iWatermarkLimitRelated').change(function() {
			if ($(this).val() != 'all') $('#iWatermarkLimitRelatedEntry').fadeIn();
			else {
				$('#iWatermarkLimitRelatedEntry').fadeOut();
				$('#iWatermarkLimitRelatedEntry input').val('');
			}
		});
	
		$('#colorpickerHolder').ColorPicker({
			flat: true,
			color: '#<?php echo !empty($data['iwatermark']['Color']) ? $data['iwatermark']['Color'] : 'ffffff'; ?>',
			onSubmit: function(hsb, hex, rgb) {
				$('#colorSelector div').css('backgroundColor', '#' + hex);
			},
			onShow: function (colpkr) {
				$(colpkr).fadeIn(500);
				return false;
			},
			onHide: function (colpkr) {
				$(colpkr).fadeOut(500);
				return false;
			},
			onChange: function (hsb, hex, rgb) {
				$('#colorSelector div').css('backgroundColor', '#' + hex);
				$('input[name="iwatermark[Color]"]').val(hex);
			}
		});
		
		$('#colorSelector').bind('click', function() {
			$('#colorpickerHolder').css({height: widt ? 0 : 173}, 500);
			widt = !widt;
		});
		
		$(dependable).each(function(index, element) {
			var selector = $(element).attr('data-affects');
			var selected = $(element).is(':checked') && !$(element).is(':hidden') && $(element).attr('data-hidden') != 'true';
			if ($(element).attr('data-reversed') == 'true') selected = !selected;
			if (selected) $(selector).attr('data-hidden', false).show(); else $(selector).attr('data-hidden', true).hide();
			$(element).bind('change', function() {
				$(dependable).each(function(index, element) {
					var selected = $(element).is(':checked') && !$(element).is(':hidden') && $(element).attr('data-hidden') != 'true';
					if ($(element).attr('data-reversed') == 'true') selected = !selected;
					var selector = $(element).attr('data-affects');
					if (selected) $(selector).attr('data-hidden', false).fadeIn();
					else $(selector).attr('data-hidden', true).hide();
				});
			});
		});
		

         // Category
        $('input[name=\'category\']').autocomplete({
            'source': function(request, response) {
                $.ajax({
                    url: 'index.php?route=module/iwatermark/autocomplete_category&token=<?php echo $_SESSION['token']; ?>&filter_name=' +  encodeURIComponent(request),
                    dataType: 'json',           
                    success: function(json) {
                        response($.map(json, function(item) {
                            return {
                                label: item['name'],
                                value: item['category_id']
                            }
                        }));
                    }
                });
            },
            'select': function(item) {
                $('input[name=\'category\']').val('');
                
                $('#product-category' + item['value']).remove();
                
                $('#product-category').append('<div id="product-category' + item['value'] + '"><i class="fa fa-minus-circle"></i> ' + item['label'] + '<input type="hidden" name="iwatermark[LimitCategoriesList][]" value="' + item['value'] + '" /></div>'); 
            }
        });
		
		$('#product-category').delegate('.fa-minus-circle', 'click', function() {
            $(this).parent().remove();
        });
		
        // Related
        $('input[name=\'related\']').autocomplete({
            'source': function(request, response) {
                $.ajax({
                    url: 'index.php?route=module/iwatermark/autocomplete_product&token=<?php echo $_SESSION['token']; ?>&filter_name=' +  encodeURIComponent(request),
                    dataType: 'json',           
                    success: function(json) {
                        response($.map(json, function(item) {
                            return {
                                label: item['name'],
                                value: item['product_id']
                            }
                        }));
                    }
                });
            },
            'select': function(item) {
                $('input[name=\'related\']').val('');
                
                $('#product-related' + item['value']).remove();
                
                $('#product-related').append('<div id="product-related' + item['value'] + '"><i class="fa fa-minus-circle"></i> ' + item['label'] + '<input type="hidden" name="iwatermark[LimitRelatedList][]" value="' + item['value'] + '" /></div>');    
            }   
        });

        $('#product-related').delegate('.fa-minus-circle', 'click', function() {
            $(this).parent().remove();
        });

		
		$('#product-related div img').on('click', function() {
			$(this).parent().remove();
			
			$('#product-related div:odd').attr('class', 'odd');
			$('#product-related div:even').attr('class', 'even');	
		});
		
		toggleiWatermarkActive(false);
		$('#iWatermarkLimitSizeType').trigger('change');
		$('#iWatermarkLimitCategories').trigger('change');
		$('#iWatermarkLimitRelated').trigger('change');
	
	
	$('.needMoreSize').click(function() {
		window.open('../vendors/iwatermark/help_increase_size.php', '_blank', 'location=no,width=830,height=420,resizable=no');
	});
});
</script>