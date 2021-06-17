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
            <a href="<?= base_url('diknas/kelolasekolah/'); ?>"><i class="fas fa-arrow-left text-decoration-none"></i> Back</a>
        </div>
    </div>
    <div class="row text-center">
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item" role="presentation">
                <a class="nav-link active" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Profil Sekolah</a>
            </li>
            <li class="nav-item" role="presentation">
                <a class="nav-link" id="data-tab" data-toggle="tab" href="#data" role="tab" aria-controls="data" aria-selected="true">Data Sekolah</a>
            </li>
        </ul>
        <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade show active mt-1 p-3 bg-white" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                <div class="text-justify"><?= $sekolah['deskripsi']; ?></div>
            </div>
            <div class="tab-pane fade mt-1 p-3 bg-white" id="data" role="tabpanel" aria-labelledby="data-tab">
                <table class="table table-borderless text-left">
                    <tr>
                        <th scope="row">Nama Sekolah</th>
                        <td><?= $sekolah['nama']; ?></td>
                    </tr>
                    <tr>
                        <th scope="row">NPSN</th>
                        <td><?= $sekolah['npsn']; ?></td>
                    </tr>
                    <tr>
                        <th scope="row">Alamat</th>
                        <td><?= $sekolah['alamat'] . ', Kec. ' .  $sekolah['kecamatan']; ?>, Kota Bandung, Jawa Barat</td>
                    </tr>
                    <tr>
                        <th scope="row">Telepon</th>
                        <td><?= $sekolah['telepon']; ?></td>
                    </tr>
                    <tr>
                        <th scope="row">Website</th>
                        <td>
                            <a href="<?= $sekolah['website']; ?>" target="blank" class="text-decoration-none"><?= $sekolah['website']; ?></a>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">Akreditasi</th>
                        <td><?= $sekolah['akreditasi']; ?></td>
                    </tr>
                    <tr>
                        <th scope="row">Kuota</th>
                        <td><?= $sekolah['kuota']; ?></td>
                    </tr>
                </table>
            </div>
        </div>
        <hr class="sidebar-divider mt-3">
    </div>
    <div class="row my-3">
        <a href="<?= base_url('diknas/editSekolah/' . $sekolah['id']); ?>" class="btn btn-warning mr-3">Edit</a>
        <a href="<?= base_url('diknas/deleteSekolah/' . $sekolah['id']); ?>" class="btn btn-danger" data-toggle="modal" data-target="#deleteModal">Hapus</a>
    </div>
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
                <div class="modal-body">Tekan tombol "Hapus" untuk menghapus data sekolah.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Tidak</button>
                    <a class="btn btn-danger" href="<?= base_url('diknas/deletesekolah/' . $sekolah['id']); ?>">Hapus</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->