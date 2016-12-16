<section class="content-header">
    <h1>
        <?php echo strtoupper(lang('edit_user_heading'));?>
        <small><?php echo lang('edit_user_subheading');?></small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-suitcase"></i>Seting</a></li>
        <li class="active"><?php echo lang('edit_user_heading');?></li>
    </ol>
</section>
<section class="content">
    <div class="row">
        <!-- left column -->
        <div class="col-md-12">
            <!-- general form elements -->
            <div class="box box-primary">
                <div class="box-header">
                <div class="col-md-5">
                <?php echo form_open(uri_string()); ?> 
                  <div class="text-red"><?php echo $message;?></div>                   
                    <div class="box-body">
                        <div class="form-group">
                            <label for="example">Nama Depan</label>
                            <?php echo form_input($first_name);?>
                        </div>                                           
                        <div class="form-group">
                            <label for="example">Nama Belakang</label>
                            <?php echo form_input($last_name);?>
                        </div> 
                        <div class="form-group">
                            <label for="example">Nama Pengguna</label>
                            <?php echo form_input($username);?>
                        </div> 
                        <div class="form-group">
                            <label for="example">Nama Perusahaan</label>
                            <?php echo form_input($company);?>
                        </div> 
                        <div class="form-group">
                            <label for="example">Telpn</label>
                            <?php echo form_input($phone);?>
                        </div> 
                        <div class="form-group">
                            <?php echo lang('edit_user_password_label', 'password');?> <br />
                            <?php echo form_input($password);?>
                        </div> 
                        <div class="form-group">
                            <?php echo lang('edit_user_password_confirm_label', 'password_confirm');?><br />
                            <?php echo form_input($password_confirm);?>
                        </div> 
                                                              
                    </div>
                    <?php echo form_hidden('id', $user->id);?>
                    <?php echo form_hidden($csrf); ?>
                    <div class="box-footer">
                        <button type="submit" name="submit" class="btn btn-primary"><i class="glyphicon glyphicon-hdd"></i> Simpan</button>
                        <a href="javascript:history.back()" class="btn btn-primary">Kembali</a>
                    </div>
                <?php echo form_close();?>
                </div>
                </div>
            </div>
        </div>
    </div>
</section>