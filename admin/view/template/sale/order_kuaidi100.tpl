<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-order" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
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
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_form; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-order" class="form-horizontal">
          <ul class="nav nav-tabs">
            <li class="active"><a href="#tab-general" data-toggle="tab"><?php echo $tab_general; ?></a></li>
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="tab-general">
              <div class="row">
                
                <div class="col-sm-10">
                  <div class="tab-content">
                    <div class="tab-pane active" id="tab-order">
                      <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-country"><?php echo $entry_kuaidi_company; ?></label>
                        <div class="col-sm-10">
                          <select name="kuaidi_company_id" id="input-kuaidi-company" class="form-control">
                            <option value=""><?php echo $text_select; ?></option>
                            <?php foreach ($kuaidi_companies as $kuaidi_company) { ?>
                            <?php if ($kuaidi_company['kuaidi_company_id'] == $kuaidi_company_id) { ?>
                            <option value="<?php echo $kuaidi_company['kuaidi_company_id']; ?>" selected="selected"><?php echo $kuaidi_company['name']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $kuaidi_company['kuaidi_company_id']; ?>"><?php echo $kuaidi_company['name']; ?></option>
                            <?php } ?>
                            <?php } ?>
                          </select>
                          
                          <?php if ($error_kuaidi_company) { ?>
                          <div class="text-danger"><?php echo $error_kuaidi_company; ?></div>
                          <?php } ?>
                          
                        </div>
                      </div>
                      
                      <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-kuaidi-number"><?php echo $entry_kuaidi_number; ?></label>
                        <div class="col-sm-10">
                          <input type="text" name="kuaidi_number" value="<?php echo $kuaidi_number; ?>" placeholder="<?php echo $entry_kuaidi_number; ?>" id="input-kuaidi-number" class="form-control" />
                          <?php if ($error_kuaidi_number) { ?>
                          <div class="text-danger"><?php echo $error_kuaidi_number; ?></div>
                          <?php } ?>
                        </div>
                      </div>
                  
                  
                      
                    
                  </div>
                </div>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>