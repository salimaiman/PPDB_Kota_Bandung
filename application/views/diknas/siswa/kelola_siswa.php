<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
    <div class="row justify-content-between">
        <div class="col-6">
            <?php if ($this->session->flashdata('message')) : ?>
                <?= $this->session->flashdata('message'); ?>
            <?php endif; ?>

            <?php $this->session->unset_userdata('message'); ?>
        </div>
        <div class="col-5">
            <form action="<?= base_url('diknas/kelolasiswa'); ?>" method="post">
                <div class="input-group mb-3">
                    <div class="input-group-prepend" style="width: 100px">
                        <select class="custom-select" name="filter" id="filter">
                            <option selected>Filter</option>
                            <option value="nm_lengkap" <?= ($this->session->userdata('filter') == "nm_lengkap") ? 'selected="selected"' : ''; ?>>Nama</option>
                            <option value="asal_sekolah" <?= ($this->session->userdata('filter') == "asal_sekolah") ? 'selected="selected"' : ''; ?>>Asal Sekolah</option>
                        </select>
                    </div>
                    <input type="text" class="form-control" name="keyword" placeholder="Search keyword..." autocomplete="off">
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="submit" name="submit"><i class="fa fa-search"></i></button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <div class="row">
        <div class="col-lg text-center">
            <?php if ($siswa) : ?>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">NISN</th>
                            <th scope="col">Nama Lengkap</th>
                            <th scope="col">Asal Sekolah</th>
                            <th scope="col">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $i = 1; ?>
                        <?php foreach ($siswa as $s) : ?>
                            <tr>
                                <th scope="row"><?= $i++; ?></th>
                                <td><?= $s['nisn']; ?></td>
                                <td><?= $s['nm_lengkap']; ?></td>
                                <td><?= $s['asal_sekolah']; ?></td>
                                <td><a href="<?= base_url('diknas/detailsiswa/' . $s['id']); ?>" class="btn btn-success">Detail</a></td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
                <?= $this->pagination->create_links(); ?>
            <?php else : ?>
                <img src="<?= base_url(); ?>assets/img/icons/warning.png" class="img-responsive" width="250" height="250">
                <h3 class="text-danger">Belum ada data siswa!</h3>
                <h5>Belum ada siswa yang melakukan proses input data!</h5>
            <?php endif; ?>
            <?php if ($this->session->userdata('keyword')) : ?>
                <div class="row">
                    <div class="col-md mb-2">
                        <a href="<?= base_url('diknas/selesaicari/kelolasiswa'); ?>" class="btn btn-secondary">Selesai Pencarian</a>
                    </div>
                </div>
            <?php endif; ?>
        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->