<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-featured" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-featured" class="form-horizontal">
        <input type="hidden" name="module" value="<?php echo $module;?>" />
        
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-image"><?php echo $entry_source; ?></label>
            <div class="col-sm-10">
              <a href="" id="thumb-image" data-toggle="image" class="img-thumbnail"><img src="<?php echo $source_thumb; ?>" alt="" title="" data-placeholder="<?php echo $entry_source; ?>" /></a>
              <input type="hidden" name="pim_Watermark[source]" value="<?php echo $source; ?>" id="input-image" />
            </div>
          </div>          
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-width"><?php echo $entry_marginRight; ?></label>
            <div class="col-sm-10">
              <input type="text" name="pim_Watermark[marginRight]" value="<?php echo isset($marginRight)?$marginRight:'5'; ?>" placeholder="<?php echo $entry_marginRight; ?>" id="input-width" class="form-control" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-height"><?php echo $entry_marginBottom; ?></label>
            <div class="col-sm-10">
              <input type="text" name="pim_Watermark[marginBottom]" value="<?php echo isset($marginBottom)?$marginBottom:'5'; ?>" placeholder="<?php echo $entry_marginBottom; ?>" id="input-height" class="form-control" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-height"><?php echo $entry_quality; ?></label>
            <div class="col-sm-10">
              <input type="text" name="pim_Watermark[quality]" value="<?php echo isset($quality)?$quality:'90'; ?>" placeholder="<?php echo $entry_quality; ?>" id="input-height" class="form-control" />
            </div>
          </div>  
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-height"><?php echo $entry_transparency; ?></label>
            <div class="col-sm-10">
              <input type="text" name="pim_Watermark[transparency]" value="<?php echo isset($transparency)?$transparency:'10'; ?>" placeholder="<?php echo $entry_transparency; ?>" id="input-height" class="form-control" />
            </div>
          </div>  
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-height"><?php echo $entry_targetMinPixel; ?></label>
            <div class="col-sm-10">
              <input type="text" name="pim_Watermark[targetMinPixel]" value="<?php echo isset($targetMinPixel)?$targetMinPixel:'200'; ?>" placeholder="<?php echo $entry_targetMinPixel; ?>" id="input-height" class="form-control" />
            </div>
          </div>                              
        </form>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>