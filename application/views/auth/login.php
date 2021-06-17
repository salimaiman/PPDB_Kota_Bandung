<style>
    body {
        --Siswa: #72CCD5;
        --Sekolah: #EAEAEA;

    }

    .bg-gradient-primary {
        background-color: #50bad1;
        background-image: linear-gradient(180deg, #81cfd9 10%, #fff 100%);
        background-size: cover;
    }

    .card {
        background-color: var(<?= '--' . $type; ?>)
    }

    img {
        width: 100px;
        height: 100px;
    }

    .front-page {
        font-family: 'Rationale', sans-serif;
        color: #0a0a0a;
    }
</style>
<div class="container-fluid">

    <!-- Outer Row -->

    <div class="row justify-content-end">
        <div class="col-lg-7 col-lg-offset-1 align-self-center text-center front-page">
            <h2>PENERIMAAN PESERTA DIDIK BARU<br>SMA KOTA BANDUNG</h2>
            <div class="row">
                <div class="col-md py-5 text-center" style="padding-top: 5rem;">
                    <img src="<?= base_url() ?>assets/img/logo-bdg.png" alt="">
                    <img src="<?= base_url() ?>assets/img/tut-wuri.png" alt="">
                </div>
            </div>
        </div>

        <div class="col-lg-5">

            <div class="card o-hidden border-0 shadow-lg py-5">
                <div class="card-body p-0">
                    <!-- Nested Row within Card Body -->
                    <div class="row">
                        <div class="col-lg">
                            <div class="p-5">
                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4">Login <?= $type; ?></h1>
                                </div>
                                <?php if ($this->session->flashdata('message')) : ?>
                                    <?= $this->session->flashdata('message'); ?>
                                <?php endif; ?>

                                <?php $this->session->unset_userdata('message'); ?>

                                <form class="user" method="post" action="<?= base_url('auth/login') . $type; ?>">
                                    <div class="form-group">
                                        <input type="text" class="form-control form-control-user" id="email" name="email" placeholder="Enter Email Address..." value="<?= set_value('email'); ?>">
                                        <?= form_error('email', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control form-control-user" id="password" name="password" placeholder="Password">
                                        <?= form_error('password', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                    <button type="submit" class="btn btn-primary btn-user btn-block">
                                        Login
                                    </button>
                                </form>
                                <hr>
                                <div class="text-center">
                                    <a class="small text-secondary" href="<?= base_url('auth/forgotpassword'); ?>">Forgot Password?</a>
                                </div>
                                <div class="text-center">
                                    <a class="small text-secondary" href="<?= base_url('auth/regi' . $type); ?>">Create an Account!</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>

</div>