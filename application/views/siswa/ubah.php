<!-- Begin Page Content -->
<div class="container-fluid">
    <!-- Page Heading -->
    <h1 class=" h3 mb-5 text-gray-800"><?= $title; ?></h1>

    <div class="row">
        <div class="col-lg">
            <form action="<?= base_url('siswa/ubah'); ?>" method="post">
                <div class="form-group row">
                    <label for="nm_lengkap" class="col-sm-5 col-form-label">Nama Lengkap</label>
                    <div class="col-sm-7">
                        <input type="text" class="form-control d-inline" id="nm_lengkap" name="nm_lengkap" value="<?= $siswa['nm_lengkap']; ?>">
                        <?= form_error('nm_lengkap', '<small class="text-danger pl-3">', '</small>'); ?>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="nisn" class="col-sm-5 col-form-label">NISN</label>
                    <div class="col-sm-7">
                        <input type="text" class="form-control" id="nisn" name="nisn" value="<?= $siswa['nisn']; ?>">
                        <?= form_error('nisn', '<small class="text-danger pl-3">', '</small>'); ?>
                    </div>
                </div>
                <div class=" form-group row">
                    <label class="col-sm-5 col-form-label" for="tmp_lahir">Tempat Lahir</label>
                    <div class="col-sm-7">
                        <input type="text" class="form-control" id="tmp_lahir" name="tmp_lahir" value='<?= $siswa['tmp_lahir']; ?>'>
                        <?= form_error('tmp_lahir', '<small class="text-danger pl-3">', '</small>'); ?>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-5 col-form-label" for="tgl_lahir">Tanggal Lahir</label>
                    <div class="col-sm-7">
                        <input type="date" class="date form-control" id="tgl_lahir" name="tgl_lahir" value="<?= $siswa['tgl_lahir']; ?>">
                        <?= form_error('tgl_lahir', '<small class="text-danger pl-3">', '</small>'); ?>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-5 col-form-label" for="agama">Agama</label>
                    <div class="col-sm-7">
                        <select class="custom-select" id="agama" name="agama">
                            <?php foreach ($agama as $a) : ?>
                                <option <?= ($siswa['agama'] == $a) ? 'selected="selected"' : ''; ?>><?= $a; ?></option>
                            <?php endforeach; ?>
                        </select>
                        <?= form_error('agama', '<small class="text-danger pl-3">', '</small>'); ?>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-5 col-form-label" for="asal_sekolah">Asal Sekolah</label>
                    <div class="col-sm-7">
                        <input type="text" class="form-control" id="asal_sekolah" name="asal_sekolah" value='<?= set_value('asal_sekolah'); ?>'>
                        <?= form_error('asal_sekolah', '<small class="text-danger pl-3">', '</small>'); ?>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-5 col-form-label">Jenis Kelamin</label>
                    <div class="col-sm-7">
                        <div class="form-check-inline">
                            <input class="form-check-input" type="radio" id="gender_laki" name="gender" value="1">
                            <label class="form-check-label" for="gender_laki">Laki-Laki</label>
                        </div>
                        <div class="form-check-inline">
                            <input class="form-check-input" type="radio" id="gender_prp" name="gender" value="0">
                            <label class="form-check-label" for="gender_prp">Perempuan</label>
                        </div>
                        <?= form_error('gender', '<small class="text-danger pl-3">', '</small>'); ?>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-5 col-form-label" for="nm_ortu">Nama Orang Tua</label>
                    <div class="col-sm-7">
                        <input type="text" class="form-control" id="nm_ortu" name="nm_ortu" value='<?= $siswa['nm_ortu']; ?>'>
                        <?= form_error('nm_ortu', '<small class="text-danger pl-3">', '</small>'); ?>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-5 col-form-label" for="alamat_ortu">Alamat Orang Tua</label>
                    <div class="col-sm-7">
                        <input type="text" class="form-control" id="alamat_ortu" name="alamat_ortu" value='<?= $siswa['alamat_ortu']; ?>'>
                        <?= form_error('alamat_ortu', '<small class="text-danger pl-3">', '</small>'); ?>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-5 col-form-label" for="nilai_un">Nilai UN SMP</label>
                    <div class="col-sm-7">
                        <input type="text" class="form-control" id="nilai_un" name="nilai_un" value='<?= $siswa['nilai_un']; ?>'>
                        <?= form_error('nilai_un', '<small class="text-danger pl-3">', '</small>'); ?>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-5 col-form-label" for="prestasi">Prestasi</label>
                    <div class="col-sm-7">
                        <textarea rows="4" cols="50" class="form-control" id="prestasi" name="prestasi"><?= $siswa['prestasi']; ?></textarea>
                        <?= form_error('prestasi', '<small class="text-danger pl-3">', '</small>'); ?>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-5 col-form-label" for="sekolah_pil1">Sekolah Pilihan 1</label>
                    <div class="input-group col-sm-7">
                        <select class="custom-select" id="sekolah_pil1" name="sekolah_pil1">
                            <?php for ($i = 1; $i <= 27; $i++) : ?>
                                <option value="<?= $i; ?>" <?= ($i == $siswa['id_sekolah1']) ? ' selected="selected"' : ''; ?>>SMA Negeri <?= $i; ?> Bandung</option>
                            <?php endfor; ?>
                        </select>
                        <?= form_error('sekolah_pil1', '<small class="text-danger pl-3">', '</small>'); ?>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-5 col-form-label" for="sekolah_pil2">Sekolah Pilihan 2</label>
                    <div class="input-group col-sm-7">
                        <select class="custom-select" id="sekolah_pil2" name="sekolah_pil2">
                            <?php for ($i = 1; $i <= 27; $i++) : ?>
                                <option value="<?= $i; ?>" <?= ($i == $siswa['id_sekolah2']) ? ' selected="selected"' : ''; ?>>SMA Negeri <?= $i; ?> Bandung</option>
                            <?php endfor; ?>
                        </select>
                        <?= form_error('sekolah_pil2', '<small class="text-danger pl-3">', '</small>'); ?>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-5 col-form-label" for="sekolah_pil3">Sekolah Pilihan 3</label>
                    <div class="input-group col-sm-7">
                        <select class="custom-select" id="sekolah_pil3" name="sekolah_pil3">
                            <?php for ($i = 1; $i <= 27; $i++) : ?>
                                <option value=<?= $i; ?> <?= ($i == $siswa['id_sekolah3']) ? ' selected="selected"' : ''; ?>>SMA Negeri <?= $i; ?> Bandung</option>
                            <?php endfor; ?>
                        </select>
                        <?= form_error('sekolah_pil3', '<small class="text-danger pl-3">', '</small>'); ?>
                    </div>
                </div>

                <div class="form-group row mt-5 col-sm-7 col-sm-offset-5">
                    <button type="submit" class="btn btn-success">Simpan</button>
                </div>
            </form>
        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<script>
    document.getElementById("page-top").addEventListener("load", check(<?= $siswa['gender']; ?>));

    function check(gender) {
        let id = (gender == '1') ? 'gender_laki' : 'gender_prp';
        document.getElementById(id).checked = true;
    }
</script>
<!-- End of Main Content -->