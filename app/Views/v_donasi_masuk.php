<div class="col-md-12">
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title">Data <?= $judul ?></h3>

            <div class="card-tools">

            </div>
            <!-- /.card-tools -->
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            <?php
            if (session()->getFlashdata('pesan')) {
                echo '<div class="alert alert-primary">';
                echo session()->getFlashdata('pesan');
                echo '</div>';
            }
            ?>
            <div class="table-responsive">
                <table class="table" id="example1">
                    <thead>
                        <tr>
                            <th width="50px">No</th>
                            <th>Rekening Tujuan</th>
                            <th>Rekening Pengirim</th>
                            <th>Jumlah</th>
                            <th>Bukti</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $no = 1;
                        foreach ($donasi as $key => $value) { ?>
                            <tr>
                                <td><?= $no++ ?></td>
                                <td>
                                    <p>
                                    <h5><b><?= $value['nama_bank_tujuan'] ?></b></h5>
                                    <?= $value['no_rek_tujuan'] ?> <br>
                                    </p>
                                </td>
                                <td>
                                    <p>
                                    <h5><b><?= $value['nama_bank_pengirim'] ?></b></h5>
                                    <?= $value['no_rek_pengirim'] ?> <br>
                                    A.N : <?= $value['nama_pengirim'] ?> <br>
                                    Tanggal : <?= $value['tgl'] ?>
                                    </p>
                                </td>
                                <td>Rp. <?= number_format($value['jumlah'], 0) ?> <br>
                                    <?= $value['jenis_donasi'] == 'Masjid' ? '<span class="right badge badge-primary">Masjid</span>' : '<span class="right badge badge-danger">Sosial</span>' ?>
                                </td>
                                <td>
                                    <img src="<?= base_url('bukti/' . $value['bukti']) ?>" width="350px">
                                </td>
                            </tr>
                        <?php } ?>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- /.card-body -->
    </div>
    <!-- /.card -->
</div>