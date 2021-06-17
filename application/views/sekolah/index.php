<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
    <?php if ($this->session->flashdata('message')) : ?>
        <?= $this->session->flashdata('message'); ?>
    <?php endif; ?>

    <?php $this->session->unset_userdata('message'); ?>
    <div class="row">
        <div class="col-lg text-center">
            <?php if ($sekolah) : ?>
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
                    <div class="tab-pane fade p-3 bg-white" id="data" role="tabpanel" aria-labelledby="data-tab">
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
            <?php else : ?>
                <img src="<?= base_url(); ?>assets/img/icons/warning.png" class="img-responsive" width="250" height="250">
                <h3 class="text-danger">Anda belum menyelesaikan proses input data sekolah!</h3>
                <h5>Silakan input data sekolah!</h5>
                <a href="<?= base_url('sekolah/input'); ?>" class="btn btn-primary mb-3">Input Data</a>
            <?php endif; ?>

        </div>
    </div>



</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->