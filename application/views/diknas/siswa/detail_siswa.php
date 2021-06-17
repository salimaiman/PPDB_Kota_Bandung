<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="row justify-content-between">
        <div class="col-6">
            <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
            <?php if ($this->session->flashdata('message')) : ?>
                <?= $this->session->flashdata('message'); ?>
            <?php endif; ?>

            <?php $this->session->unset_userdata('message'); ?>
        </div>
        <div class="col-1">
            <a href="<?= base_url('diknas/kelolasiswa/'); ?>"><i class="fas fa-arrow-left"></i> Back</a>
        </div>

    </div>
    <div class="row">
        <div class="col-lg text-center border bg-white">
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
            <hr class="sidebar-divider mt-3">
            <div class="my-3">
                <a href="<?= base_url('diknas/editSiswa/' . $siswa['id']); ?>" class="btn btn-warning mr-5">Edit</a>
                <a href="<?= base_url('diknas/deleteSiswa/' . $siswa['id']); ?>" class="btn btn-danger" data-toggle="modal" data-target="#deleteModal">Hapus</a>
            </div>
        </div>
    </div>
</div>
<!-- /.container-fluid -->

<!-- Delete Modal-->
<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Apakah anda yakin?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Tekan tombol "Hapus" untuk menghapus data siswa.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Tidak</button>
                <a class="btn btn-danger" href="<?= base_url('diknas/deletesiswa/' . $siswa['id']); ?>">Hapus</a>
            </div>
        </div>
    </div>
</div>

</div>
<!-- End of Main Content -->