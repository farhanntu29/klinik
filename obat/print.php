<?php include_once('../_header.php'); ?>
<style>   
    @media print
    {
    .noprint {display:none;}
    }
</style>

<h4>
  
            <small>Data Obat</small>
            <div class="pull-right">
                <div class="noprint">
                <button onClick="window.print();" class="btn btn-success btn-xs"><i class="glyphicon glyphicon-plus"></i> Print</a></button>
            </div>
            </div>
        </h4>
        <form method="post" name="proses">
            <div class="table-responsive">
                <table class="table table-bordered table-striped table-hover" id="obat">
                    <thead>
                        <tr>
                            
                            
                            <th>No.</th>
                            <th>Nama Obat</th>
                            <th>Keterangan</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                    <?php
                        $no = 1;
                        $sql_poli = mysqli_query($con, "SELECT * FROM tb_obat") or die(mysqli_error($con));
                        while($data = mysqli_fetch_array($sql_poli)){ ?>
                            <tr>
                                
                                <td><?= $no++; ?>.</td>
                                <td><?= $data['nama_obat']; ?></td>
                                <td><?= $data['ket_obat']; ?></td>
                              
                                
                            </tr>
                        <?php
                        }
                        ?>
                    </tbody>
                </table>
            </div>
            </div>
            </div>
            </div>
            
        </form>

        

    </div>