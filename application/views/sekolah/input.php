<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-5 text-gray-800"><?= $title; ?></h1>

    <div class="row">
        <div class="col-lg">

            <form action="<?= base_url('sekolah/input'); ?>" method="post">
                <div class="form-group row">
                    <label class="col-sm-5 col-form-label" for="nama">Nama Sekolah</label>
                    <div class="input-group col-sm-7">
                        <input type="text" class="form-control" id="nama" name="nama" value="<?= $user['name'] ?>" readonly>
                    </div>
                </div>
                <div class=" form-group row">
                    <label for="npsn" class="col-sm-5 col-form-label">NPSN</label>
                    <div class="col-sm-7">
                        <input type="text" class="form-control" id="npsn" name="npsn" value='<?= set_value('npsn'); ?>'>
                        <?= form_error('npsn', '<small class="text-danger pl-3">', '</small>'); ?>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-5 col-form-label" for="alamat">Alamat</label>
                    <div class="col-sm-7">
                        <input type="text" class="form-control" id="alamat" name="alamat" value='<?= set_value('alamat'); ?>'>
                        <?= form_error('alamat', '<small class="text-danger pl-3">', '</small>'); ?>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-5 col-form-label" for="kecamatan">kecamatan</label>
                    <div class="col-sm-7">
                        <select class="custom-select" id="kecamatan" name="kecamatan">
                            <option selected value="0">Pilih Kecamatan</option>
                            <?php foreach ($kecamatan as $k) : ?>
                                <option <?= (set_value('kecamatan') == $k) ? ' selected="selected"' : ''; ?> value="<?= $k ?>"><?= $k; ?></option>
                            <?php endforeach; ?>
                        </select>
                        <?= form_error('kecamatan', '<small class="text-danger pl-3">', '</small>'); ?>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-5 col-form-label" for="telepon">Telepon</label>
                    <div class="col-sm-7">
                        <input type="text" class="form-control" id="telepon" name="telepon" value='<?= set_value('telepon'); ?>'>
                        <?= form_error('telepon', '<small class="text-danger pl-3">', '</small>'); ?>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-5 col-form-label" for="website">Website</label>
                    <div class="col-sm-7">
                        <input type="text" class="form-control" id="website" name="website" value='<?= set_value('website'); ?>'>
                        <?= form_error('website', '<small class="text-danger pl-3">', '</small>'); ?>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-5 col-form-label" for="akreditasi">Nilai Akreditasi</label>
                    <div class="col-sm-4">
                        <select class="custom-select" id="akreditasi" name="akreditasi">
                            <option selected value="0">Pilih Akreditasi</option>
                            <?php foreach ($akreditasi as $a) : ?>
                                <option <?= (set_value('akreditasi') == $a) ? ' selected="selected"' : ''; ?> value="<?= $a ?>"><?= $a; ?></option>
                            <?php endforeach; ?>
                        </select>
                        <?= form_error('akreditasi', '<small class="text-danger pl-3">', '</small>'); ?>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-5 col-form-label" for="kuota">Kuota Penerimaan</label>
                    <div class="col-sm-2">
                        <input type="number" class="form-control" id="kuota" name="kuota" value='<?= set_value('kuota'); ?>' min=1 max=100>
                        <?= form_error('kuota', '<small class="text-danger pl-3">', '</small>'); ?>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-5 col-form-label" for="deskripsi">Informasi Singkat Sekolah</label>
                    <div class="col-sm-7">
                        <textarea rows="4" cols="50" class="form-control" id="deskripsi" name="deskripsi"><?= set_value('deskripsi'); ?></textarea>
                        <?= form_error('deskripsi', '<small class="text-danger pl-3">', '</small>'); ?>
                    </div>
                </div>

                <div class="form-group row mt-5 col-sm-7 col-sm-offset-5">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </form>
        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->