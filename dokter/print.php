<?php include_once('../_header.php'); ?>
<style>   
    @media print
    {
    .noprint {display:none;}
    }
</style>

<h4>
  
            <small>Data Dokter</small>
            <div class="pull-right">
                <div class="noprint">
                <button onClick="window.print();" class="btn btn-success btn-xs"><i class="glyphicon glyphicon-plus"></i> Print</a></button>
            </div>
            </div>
        </h4>
        <form method="post" name="proses">
            <div class="table-responsive">
                <table class="table table-bordered table-striped table-hover" id="dokter">
                    <thead>
                        <tr>
                            
                            
                            <th>No.</th>
                            <th>Nama Dokter</th>
                            <th>Spesialis</th>
                            <th>Alamat</th>
                            <th>No. Telepon</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                    <?php
                        $no = 1;
                        $sql_poli = mysqli_query($con, "SELECT * FROM tb_dokter") or die(mysqli_error($con));
                        while($data = mysqli_fetch_array($sql_poli)){ ?>
                            <tr>
                                
                                <td><?= $no++; ?>.</td>
                                <td><?= $data['nama_dokter']; ?></td>
                                <td><?= $data['spesialis']; ?></td>
                                <td><?= $data['alamat']; ?></td>
                                <td><?= $data['no_telp']; ?></td>
                                
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