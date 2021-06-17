<style>
    .judul {
        border-top-left-radius: 20px;
        border-top-right-radius: 20px;
    }

    .content {
        border-bottom-left-radius: 20px;
        border-bottom-right-radius: 20px;
        height: 100%;
    }
</style>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->

    <div class="row">
        <div class="col isi">
            <div class="judul bg-info bg text-white text-center p-3">
                <h4><b><?= $pengumuman['headline']; ?></b></h4>
            </div>
            <div class="info bg-secondary text-white text-start p-3">
                <i class="fa fa-calendar"></i> Posted : <?= date('l, d F Y', $pengumuman['tgl_terbit']); ?>
            </div>
            <div class="content p-4 border">
                <?= $pengumuman['text']; ?>
            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->