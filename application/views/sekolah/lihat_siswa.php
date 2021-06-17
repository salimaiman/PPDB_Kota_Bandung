<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

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