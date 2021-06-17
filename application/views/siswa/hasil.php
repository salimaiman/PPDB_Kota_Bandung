<style>
    .status {
        border-radius: 20px;
        color: white;
    }
</style>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

    <div class="row">
        <?php if ($deadline) : ?>
            <div class="col">
                <div class="border">
                    <table class="table borderless">
                        <tr>
                            <th>NISN</th>
                            <td>: <?= $siswa['nisn']; ?></td>
                            <td rowspan=3><img src="<?= base_url('assets/img/fotopas/' . $siswa['pas_foto']); ?>" class="img-thumbnail" width="100px"></td>
                        </tr>
                        <tr>
                            <th>Nama Lengkap</th>
                            <td>: <?= $siswa['nm_lengkap']; ?></td>
                        </tr>
                        <tr>
                            <th>Asal Sekolah</th>
                            <td>: <?= $siswa['asal_sekolah']; ?></td>
                        </tr>
                    </table>
                </div>
                <div class="row p-3 mt-4">
                    <?php for ($i = 1; $i <= 3; $i++) : ?>
                        <div class="status col p-3 m-2 text-center <?= (${'status_sma' . $i}) ? 'bg-success' : 'bg-danger'; ?>">
                            <h5><b>Pilihan <?= $i ?></b></h5>
                            <p>SMA Negeri <?= $siswa['id_sekolah' . $i]; ?> Bandung</p>
                            <p>Status : <b><i><?= (${'status_sma' . $i}) ? 'Diterima' : 'Tidak Diterima' ?></i></b></p>
                        </div>
                    <?php endfor; ?>
                </div>
            </div>
        <?php else : ?>
            <div class="col text-center">
                <img src="<?= base_url(); ?>assets/img/icons/warning.png" class="img-responsive" width="250" height="250">
                <h3 class="text-danger">Proses seleksi sedang berlangsung!</h3>
                <h5>Silakan cek kembali status kelulusan anda<br>Setelah proses seleksi berakhir!</h5>
            </div>
        <?php endif; ?>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->