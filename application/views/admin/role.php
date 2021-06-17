<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

</div>
<!-- /.container-fluid -->

<div class="container">
    <div class="row">
        <div class="col-lg-6">

            <!-- MESSAGES -->
            <?= form_error('menu', '<div class="alert alert-danger" role="alert">', '</div>') ?>
            <?php if ($this->session->flashdata('pesan')) : ?>
                <?= $this->session->flashdata('pesan'); ?>
            <?php endif; ?>

            <?php $this->session->unset_userdata('pesan'); ?>


            <a href="" class="btn btn-primary mb-3" data-toggle="modal" data-target="#newRoleModal">Add New Role</a>

            <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Role</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1; ?>
                    <?php foreach ($role as $r) : ?>

                        <tr>
                            <th scope="row"><?= $i++; ?></th>
                            <td><?= $r['role']; ?></td>
                            <td>
                                <a href="<?= base_url('admin/roleAccess/') . $r['id']; ?>" class="badge badge-warning">Access</a>
                                <a href="<?= base_url('admin/roleedit/') . $r['id']; ?>" class="badge badge-success" data-toggle="modal" data-target="#updateMenuModal<?= $r['role']; ?>">Edit</a>
                                <a href="<?= base_url('admin/delete/') . $r['role']; ?>" class="badge badge-danger">Delete</a>
                            </td>
                        </tr>

                        <!-- Modal Update Data -->
                        <div class="modal fade" id="updateMenuModal<?= $r['role']; ?>" tabindex="-1" aria-labelledby="updateMenuModal<?= $r['role']; ?>Label" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="updateMenuModal<?= $r['role']; ?>Label">Edit Menu</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <form action="<?= base_url('admin/roleedit/') . $r['id']; ?>" method="post">
                                        <div class="modal-body">
                                            <div class="form-group">
                                                <input type="text" class="form-control" id="role" name="role" placeholder="Role name" value="<?= $r['role']; ?>">
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


    <!-- End of Main Content -->

    <!-- MODAL -->

    <!-- Modal Insert Data -->
    <div class="modal fade" id="newRoleModal" tabindex="-1" aria-labelledby="newRoleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="newRoleModalLabel">Add New Role</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="<?= base_url('menu'); ?>" method="post">
                    <div class="modal-body">
                        <div class="form-group">
                            <input type="text" class="form-control" id="role" name="role" placeholder="Role name">
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