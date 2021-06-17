<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="row">
        <div class="col">
            <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
            <?php if ($this->session->flashdata('message')) : ?>
                <?= $this->session->flashdata('message'); ?>
            <?php endif; ?>

            <?php $this->session->unset_userdata('message'); ?>
            <div class="row">
                <div class="col-lg text-center border bg-white">
                    <?php if ($waktu) : ?>
                        <div class="row">
                            <div class="col">
                                <table class="table text-center">
                                    <thead>
                                        <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">Judul</th>
                                            <th scope="col">Deadline</th>
                                            <th scope="col">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $i = 1; ?>
                                        <?php foreach ($waktu as $w) : ?>
                                            <tr>
                                                <th scope="row"><?= $i++; ?></th>
                                                <td><?= $w['judul']; ?></td>
                                                <td><?= $w['deadline']; ?></td>
                                                <td><a href="<?= base_url('diknas/editwaktu/' . $w['id']); ?>" class="btn btn-warning">Edit</a>
                                                    <a href="<?= base_url('diknas/deletewaktu/' . $w['id']); ?>" class="btn btn-danger">Hapus</a>
                                                </td>
                                            </tr>
                                        <?php endforeach; ?>
                                </table>
                            </div>
                        </div>
                    <?php else : ?>
                        <img src="<?= base_url(); ?>assets/img/icons/warning.png" class="img-responsive" width="250" height="250">
                        <h3 class="text-danger">Anda belum mengatur waktu PPDB!</h3>
                        <h5>Silakan set waktu!</h5>
                        <a href="<?= base_url('diknas/setwaktu'); ?>" class="btn btn-primary mb-3">Set Waktu</a>
                    <?php endif; ?>

                </div>
            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->