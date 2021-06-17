<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
    <?php if ($this->session->flashdata('message')) : ?>
        <?= $this->session->flashdata('message'); ?>
    <?php endif; ?>

    <?php $this->session->unset_userdata('message'); ?>
    <div class="row">
        <div class="col-lg text-center border bg-white">
            <?php if ($siswa) : ?>
                <div class="row">
                    <div class="col">
                        <table class="table table-borderless text-left">
                            <tr>
                                <th scope="row">Nama Lengkap</th>
                                <td><?= $siswa['nm_lengkap']; ?></td>
                            </tr>
                            <tr>
                                <th scope="row">NISN</th>
                                <td><?= $siswa['nisn']; ?></td>
                            </tr>
                            <tr>
                                <th scope="row">TTL</th>
                                <td><?= $siswa['tmp_lahir'] . ', ' .  $siswa['tgl_lahir']; ?></td>
                            </tr>
                            <tr>
                                <th scope="row">Agama</th>
                                <td><?= $siswa['agama']; ?></td>
                            </tr>
                            <tr>
                                <th scope="row">Asal Sekolah</th>
                                <td><?= $siswa['asal_sekolah']; ?></td>
                            </tr>
                            <tr>
                                <th scope="row">Jenis Kelamin</th>
                                <td><?= ($siswa['gender'] == '1') ? 'Laki-Laki' : 'Perempuan'; ?></td>
                            </tr>
                            <tr>
                                <th scope="row">Nama Orang Tua</th>
                                <td><?= $siswa['nm_ortu']; ?></td>
                            </tr>
                            <tr>
                                <th scope="row">Alamat Orang Tua</th>
                                <td><?= $siswa['alamat_ortu']; ?></td>
                            </tr>
                            <tr>
                                <th scope="row">Nilai Ujian Nasional</th>
                                <td><?= $siswa['nilai_un']; ?></td>
                            </tr>
                            <tr>
                                <th scope="row">Dokumen</th>
                                <td><?= $siswa['bukti']; ?></td>
                            </tr>
                            <tr>
                                <th scope="row">Prestasi</th>
                                <td><?= $siswa['prestasi']; ?></td>
                            </tr>
                            <tr>
                                <th scope="row">Sekolah Pilihan 1</th>
                                <td>SMA Negeri <?= $siswa['id_sekolah1']; ?> Bandung</td>
                            </tr>
                            <tr>
                                <th scope="row">Sekolah Pilihan 2</th>
                                <td>SMA Negeri <?= $siswa['id_sekolah2']; ?> Bandung</td>
                            </tr>
                            <tr>
                                <th scope="row">Sekolah Pilihan 3</th>
                                <td>SMA Negeri <?= $siswa['id_sekolah3']; ?> Bandung</td>
                            </tr>
                        </table>
                    </div>
                    <div class="col">
                        <img src="<?= base_url('assets/img/fotopas/' . $siswa['pas_foto']); ?>" class="img-thumbnail mt-5" style="width: 15rem; height: auto">
                    </div>
                </div>
            <?php else : ?>
                <img src="<?= base_url(); ?>assets/img/icons/warning.png" class="img-responsive" width="250" height="250">
                <h3 class="text-danger">Anda belum menyelesaikan proses input data!</h3>
                <h5>Silakan input data anda!</h5>
                <a href="<?= base_url('siswa/input'); ?>" class="btn btn-primary mb-3">Input Data</a>
            <?php endif; ?>

        </div>
    </div>



</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->