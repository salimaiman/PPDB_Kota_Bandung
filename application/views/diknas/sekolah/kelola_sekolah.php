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
            <form action="<?= base_url('diknas/kelolasekolah'); ?>" method="post">
                <div class="input-group mb-3">
                    <div class="input-group-prepend" style="width: 100px">
                        <select class="custom-select" name="filter" id="filter">
                            <option selected>Filter</option>
                            <option value="nama" <?= ($this->session->userdata('filter') == "nama") ? 'selected="selected"' : ''; ?>>Nama</option>
                            <option value="kecamatan" <?= ($this->session->userdata('filter') == "kecamatan") ? 'selected="selected"' : ''; ?>>Kecamatan</option>
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


    <?php $this->session->unset_userdata('message'); ?>
    <div class="row">
        <div class="col-lg text-center">
            <?php if ($sekolah) : ?>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Nama</th>
                            <th scope="col">Kecamatan</th>
                            <th scope="col">Kuota</th>
                            <th scope="col">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $i = $start + 1; ?>
                        <?php foreach ($sekolah as $s) : ?>
                            <tr>
                                <th scope="row"><?= $i++; ?></th>
                                <td><?= $s['nama']; ?></td>
                                <td><?= $s['kecamatan']; ?></td>
                                <td><?= $s['kuota']; ?></td>
                                <td><a href="<?= base_url('diknas/detailsekolah/' . $s['id']); ?>" class="btn btn-success">Detail</a></td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
                <?= $this->pagination->create_links(); ?>
            <?php else : ?>
                <img src="<?= base_url(); ?>assets/img/icons/warning.png" class="img-responsive" width="250" height="250">
                <h3 class="text-danger">Belum ada data sekolah!</h3>
                <h5>Data Sekolah belum diinputkan!</h5>
            <?php endif; ?>
            <?php if ($this->session->userdata('keyword')) : ?>
                <div class="row">
                    <div class="col-md mb-2">
                        <a href="<?= base_url('diknas/selesaicari/kelolasekolah'); ?>" class="btn btn-secondary">Selesai Pencarian</a>
                    </div>
                </div>
            <?php endif; ?>
        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->