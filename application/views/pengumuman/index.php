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
            <?php if ($pengumuman) : ?>
                <?php foreach ($pengumuman as $p) : ?>
                    <div class="card mb-5 d-inline-block" style="width: 18rem;">
                        <img src="<?= base_url('assets/img/pengumuman/' . $p['thumbnail']); ?>" class="card-img-top">
                        <div class="card-body" style="background-color: #519c5d;">
                            <h5 class="card-title text-white"><b><?= $p['headline']; ?></b></h5>
                            <a href="<?= base_url('pengumuman/detailpengumuman/' . $p['id']); ?>" class="btn btn-info">Selengkapnya..</a>
                        </div>
                    </div>
                <?php endforeach; ?>
            <?php else : ?>
                <img src="<?= base_url(); ?>assets/img/icons/warning.png" class="img-responsive" width="250">
                <h3 class="text-danger">Belum ada data pengumuman!</h3>
                <h5>Tambahkan data pengumuman!</h5>
                <a href="<?= base_url('diknas/inputpengumuman'); ?>" class="btn btn-primary">+ Tambah</a>
            <?php endif; ?>
        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->