<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

</div>
<!-- /.container-fluid -->

<div class="container">
    <div class="row">
        <div class="col-lg">

            <?php if (validation_errors()) : ?>
                <div class="alert alert-danger" role="alert">
                    <?= validation_errors(); ?>
                </div>
            <?php endif; ?>

            <?php if ($this->session->flashdata('pesan')) : ?>
                <?= $this->session->flashdata('pesan'); ?>
            <?php endif; ?>

            <?php $this->session->unset_userdata('pesan'); ?>


            <a href="" class="btn btn-primary mb-3" data-toggle="modal" data-target="#newSubMenuModal">Add New Sub Menu</a>

            <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Title</th>
                        <th scope="col">Menu</th>
                        <th scope="col">Url</th>
                        <th scope="col">Icon</th>
                        <th scope="col">Status</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1; ?>
                    <?php foreach ($submenu as $sm) : ?>

                        <tr>
                            <th scope="row"><?= $i++; ?></th>
                            <td><?= $sm['title']; ?></td>
                            <td><?= $sm['menu']; ?></td>
                            <td><?= $sm['url']; ?></td>
                            <td><?= $sm['icon']; ?></td>
                            <td><?= $sm['is_active']; ?></td>
                            <td>
                                <a href="<?= base_url('menu/editSubMenu/') . $sm['id']; ?>" class="badge badge-success" data-toggle="modal" data-target="#editSubMenuModal<?= $sm['id']; ?>">Edit</a>
                                <a href="<?= base_url('menu/deleteSubMenu/') . $sm['id']; ?>" class="badge badge-danger">Delete</a>

                            </td>
                        </tr>

                        <!-- Update Modal -->
                        <div class="modal fade" id="editSubMenuModal<?= $sm['id']; ?>" tabindex="-1" aria-labelledby="editSubMenuModal<?= $sm['id']; ?>Label" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="editSubMenuModal<?= $sm['id']; ?>Label">Edit Sub Menu</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <form action="<?= base_url('menu/editSubMenu/') . $sm['id']; ?>" method="post">
                                        <div class="modal-body">
                                            <div class="form-group">
                                                <input type="text" class="form-control" id="title" name="title" placeholder="Sub menu title" value="<?= $sm['title'] ?>">
                                            </div>
                                            <div class="form-group">
                                                <select name="menu_id" id="menu_id" class="form-control">
                                                    <option value="">Select Menu</option>
                                                    <?php foreach ($menu as $m) : ?>

                                                        <?php if ($m['id'] == $sm['menu_id']) : ?>
                                                            <option value="<?= $m['id']; ?>" selected><?= $m['menu']; ?></option>
                                                        <?php else : ?>
                                                            <option value="<?= $m['id']; ?>"><?= $m['menu']; ?></option>
                                                        <?php endif; ?>

                                                    <?php endforeach; ?>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <input type="text" class="form-control" id="url" name="url" placeholder="Sub menu url" value="<?= $sm['url'] ?>">
                                            </div>
                                            <div class="form-group">
                                                <input type="text" class="form-control" id="icon" name="icon" placeholder="Sub menu icon" value="<?= $sm['icon'] ?>">
                                            </div>
                                            <div class="form-group  ml-4">
                                                <input class="form-check-input" type="checkbox" value="1" name="is_active" id="is_active" checked>
                                                <label class="form-check-label" for="is_active">
                                                    Active?
                                                </label>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                            <button type="submit" class="btn btn-primary">Save</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- End Update Modal -->
                    <?php endforeach; ?>

                </tbody>
            </table>
        </div>
    </div>


    <!-- End of Main Content -->

    <!-- MODALS -->

    <!-- Insert Modal -->
    <div class="modal fade" id="newSubMenuModal" tabindex="-1" aria-labelledby="newSubMenuModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="newSubMenuModalLabel">Add New Sub Menu</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="<?= base_url('menu/submenu'); ?>" method="post">
                    <div class="modal-body">
                        <div class="form-group">
                            <input type="text" class="form-control" id="title" name="title" placeholder="Sub menu title">
                        </div>
                        <div class="form-group">
                            <select name="menu_id" id="menu_id" class="form-control">
                                <option value="">Select Menu</option>
                                <?php foreach ($menu as $m) : ?>
                                    <option value="<?= $m['id']; ?>"><?= $m['menu']; ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="url" name="url" placeholder="Sub menu url">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="icon" name="icon" placeholder="Sub menu icon">
                        </div>
                        <div class="form-group  ml-4">
                            <input class="form-check-input" type="checkbox" value="1" name="is_active" id="is_active" checked>
                            <label class="form-check-label" for="is_active">
                                Active?
                            </label>
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
    <!-- End Insert Modal -->

</div>