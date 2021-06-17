<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

    <div class="row">
        <div class="col-lg-6">

            <!-- MESSAGES -->
            <?= form_error('menu', '<div class="alert alert-danger" role="alert">', '</div>') ?>
            <?php if ($this->session->flashdata('pesan')) : ?>
                <?= $this->session->flashdata('pesan'); ?>
            <?php endif; ?>

            <?php $this->session->unset_userdata('pesan'); ?>


            <a href="" class="btn btn-primary mb-3" data-toggle="modal" data-target="#newMenuModal">Add New Menu</a>

            <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Menu</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1; ?>
                    <?php foreach ($menu as $m) : ?>

                        <tr>
                            <th scope="row"><?= $i++; ?></th>
                            <td><?= $m['menu']; ?></td>
                            <td>
                                <a href="<?= base_url('menu/edit/') . $m['id']; ?>" class="badge badge-success" data-toggle="modal" data-target="#updateMenuModal<?= $m['menu']; ?>">Edit</a>
                                <a href="<?= base_url('menu/delete/') . $m['menu']; ?>" class="badge badge-danger">Delete</a>
                            </td>
                        </tr>

                        <!-- Modal Update Data -->
                        <div class="modal fade" id="updateMenuModal<?= $m['menu']; ?>" tabindex="-1" aria-labelledby="updateMenuModal<?= $m['menu']; ?>Label" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="updateMenuModal<?= $m['menu']; ?>Label">Edit Menu</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <form action="<?= base_url('menu/edit/') . $m['id']; ?>" method="post">
                                        <div class="modal-body">
                                            <div class="form-group">
                                                <input type="text" class="form-control" id="menu" name="menu" placeholder="Menu name" value="<?= $m['menu']; ?>">
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                            <button type="submit" class="btn btn-success">Save</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- End Modal Update Data -->

                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
    <!-- /.container-fluid -->


</div>


<!-- End of Main Content -->

<!-- MODAL -->

<!-- Modal Insert Data -->
<div class="modal fade" id="newMenuModal" tabindex="-1" aria-labelledby="newMenuModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="newMenuModalLabel">Add New Menu</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="<?= base_url('menu'); ?>" method="post">
                <div class="modal-body">
                    <div class="form-group">
                        <input type="text" class="form-control" id="menu" name="menu" placeholder="Menu name">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Add</button>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- End Modal Insert Data -->



</div>