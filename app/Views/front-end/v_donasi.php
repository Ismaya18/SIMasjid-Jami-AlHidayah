<div class="col-md-4">
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title">Rekening Donasi Di Bawah Ini</h3>
            <!-- /.card-tools -->
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            <table class="table">
                <tbody>
                    <?php
                    foreach ($rek as $key => $value) { ?>
                        <tr>
                            <td>
                                <i class="fas fa-money-check fa-2x text-primary"></i>
                            </td>
                            <td>
                                <h5><b><?= $value['nama_bank'] ?></b></h5>
                                <h6><?= $value['no_rek'] ?><br></h6>
                                <h6> A.N : <?= $value['atas_nama'] ?></h6>
                            </td>
                        </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>
        <!-- /.card-body -->
    </div>
    <!-- /.card -->
</div>

<div class="col-md-8">
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title">Bukti Donasi</h3>
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
            <?php echo form_open_multipart('Home/KirimDonasi') ?>

            <div class="row">
                <div class="col-6">
                    <div class="form-group">
                        <label>Rekening Tujuan</label>
                        <select name="id_rekening" class="form-control" required>
                            <option value="">-- Pilih Rekening Tujuan --</option>
                            <?php foreach ($rek as $key => $value) { ?>
                                <option value="<?= $value['id_rekening'] ?>"><?= $value['nama_bank'] ?> | <?= $value['no_rek'] ?></option>
                            <?php } ?>
                        </select>
                    </div>
                </div>
                <div class="col-6">
                <div class="form-group">
                        <label>Pilih Jenis Donasi :</label>
                        <select name="jenis_donasi" class="form-control" required>
                        <option value="">-- Pilih Jenis Donasi --</option>
                            <option value="Masjid">Masjid</option>
                            <option value="Sosial">Sosial</option>
                        </select>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label>Nama Bank Pengirim</label>
                <input class="form-control" name="nama_bank" required>
            </div>

            <div class="form-group">
                <label>No Rekening Pengirim</label>
                <input class="form-control" name="no_rek" required>
            </div>

            <div class="form-group">
                <label>Nama Pengirim</label>
                <input class="form-control" name="nama_pengirim" required>
            </div>

            <div class="form-group">
                <label>Jumlah Donasi (Rp.)</label>
                <input type="number" class="form-control" name="jumlah" required>
            </div>

            <div class="form-group">
                <label>Bukti Transfer (Rp.)</label>
                <input type="file" class="form-control" name="bukti" accept="image/*" required>
            </div>
        </div>
        <div class="modal-footer justify-content-between">
            <button type="submit" class="btn btn-primary"><i class="fas fa-paper-plane"></i> Kirim</button>
        </div>
        <?php echo form_close() ?>
    </div>
    <!-- /.card-body -->
</div>
<!-- /.card -->
</div>