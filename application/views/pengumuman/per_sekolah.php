<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>


    <div class="row">
        <div class="col-md-8">
            <form action="<?= base_url('pengumuman/persekolah'); ?>" method="post">
                <div class="input-group">
                    <!-- <div class="input-group-prepend">
                        <label class="input-group-text" for="id_sekolah">Pilih Sekolah</label>
                    </div> -->
                    <select class="custom-select" id="id_sekolah" name="id_sekolah">
                        <option selected>Pilih Sekolah</option>
                        <?php for ($i = 1; $i <= 27; $i++) : ?>
                            <option value="<?= $i; ?>">SMA Negeri <?= $i; ?> Bandung</option>
                        <?php endfor; ?>
                    </select>
                    <div class="input-group-append">
                        <button class="btn btn-outline-primary" type="submit">Show</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class="mt-4">
        <?php if (isset($message)) : ?>
            <?= $message; ?>;
        <?php endif; ?>
    </div>
    <div class="row">
        <div class="col-md text-center">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">NISN</th>
                        <th scope="col">Nama Lengkap</th>
                        <th scope="col">Asal Sekolah</th>
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
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>

</div>
<!-- /.container-fluid -->


</div>
<!-- End of Main Content -->