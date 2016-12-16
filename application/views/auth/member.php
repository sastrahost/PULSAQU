<section class="content-header">
    <h1>
        <?php echo strtoupper(lang('index_heading'));?>
        <small><?php echo lang('index_subheading');?></small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-suitcase"></i>Seting</a></li>
        <li class="active"><?php echo lang('index_heading');?></li>
    </ol>
</section>
<section class="content">   

    <div class="row">
        <div class="col-md-12">
            <div class="box box-primary">
                <div class='box-header with-border'>
                    <h3 class='box-title'><a href="<?php echo base_url('auth/create_user'); ?>" class="btn btn-primary btn-small">
                            <i class="glyphicon glyphicon-plus"></i> <?php echo lang('index_create_user_link');?></a></h3>
                            <label calss='control-label' ></label>
                </div>
                <div class="box-body table-responsive">
                    <table id="mytable" class="table table-bordered table-striped" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>No.</th>
                                <th>Nama User</th>
                                <th>Nama Lengkap</th>
                                <th>Alamat Email</th>
                                <th>Nama Perusahaan</th> 
                                <th>Telpn</th>   
                                <th>Status</th>                                                           
                                <th>Edit</th>  
                                <th>Delete</th>                                
                            </tr>
                        </thead>
                       <?php
                       $no=1;                  
                       foreach ($tb_users as $user){ 
                           echo"
                               <tr>
                               <td>$no</td>
                               <td>".$user->username."</td>
                               <td>".strtoupper($user->first_name),' ',strtoupper($user->last_name)."</td>
                               <td>".$user->email."</td>
                               <td>".strtoupper($user->company)."</td> 
                               <td>".$user->phone."</td>
                               ";?>                             
                               <td><?php echo ($user->active) ? anchor("auth/deactivate/".$user->id, lang('index_active_link')) : anchor("auth/activate/". $user->id, lang('index_inactive_link'));?></td>
                               <?php echo"
                               <td>" . anchor('auth/edit_user/'.$user->id, '<i class="btn btn-info btn-sm glyphicon glyphicon-edit" data-toggle="tooltip" title="Edit"></i>') . "</td>
                               <td>" . anchor('auth/delete/' . $user->id, '<i class="btn-sm btn-info glyphicon glyphicon-trash" data-toggle="tooltip" title="Delete"></i>', array('onclick' => "return confirm('Data Akan di Hapus?')")) . "</td>

                               </tr>";
                           $no++;
                       }
                       ?>
                    </Table> 
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div>
    </div>
</section><!-- /.content -->
<script src="<?php echo base_url('assets/js/jquery-1.12.0.min.js') ?>"></script>
<script src="<?php echo base_url('assets/js/plugins/datatables/jquery.dataTables.min.js'); ?>"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("#mytable").dataTable();
    });
</script>