<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-5 text-gray-800"><?= $title; ?></h1>

    <div class="row">
        <div class="col-lg">

            <form action="<?= base_url('diknas/setwaktu'); ?>" method="post">
                <div class="form-group row">
                    <label for="judul" class="col-sm-5 col-form-label">Judul</label>
                    <div class="col-sm-7">
                        <input type="text" class="form-control d-inline" id="judul" name="judul" placeholder="misal: PPDB 2021" value="<?= set_value('judul') ?>">
                        <?= form_error('judul', '<small class="text-danger pl-3">', '</small>'); ?>
                    </div>
                </div>
                <div class=" form-group row">
                    <label for="deadline" class="col-sm-5 col-form-label">Deadline</label>
                    <div class="col-sm-7">
                        <input type="date" class="date form-control d-inline" id=" deadline" name="deadline" value="2018-06-12T19:30" min="2018-06-07T00:00">
                        <?= form_error('deadline', '<small class="text-danger pl-3">', '</small>'); ?>
                    </div>
                </div>


                <div class="form-group row mt-5 col-sm-7 col-sm-offset-5">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </form>
        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->