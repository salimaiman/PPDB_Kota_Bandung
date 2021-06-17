<!-- Panggil Javascript WYSIWYG -->
<script src='<?= base_url('assets/js/'); ?>tinymce/tinymce.min.js'></script>
<script>
    tinymce.init({
        selector: 'textarea#text',
        plugins: 'print preview paste importcss searchreplace autolink autosave save directionality code visualblocks visualchars fullscreen image link media template codesample table charmap hr pagebreak nonbreaking anchor toc insertdatetime advlist lists wordcount imagetools textpattern noneditable help charmap quickbars emoticons',
        imagetools_cors_hosts: ['picsum.photos'],
        menubar: 'file edit view insert format tools table help',
        toolbar: 'undo redo | bold italic underline strikethrough | fontselect fontsizeselect formatselect | alignleft aligncenter alignright alignjustify | outdent indent |  numlist bullist | forecolor backcolor removeformat | pagebreak | charmap emoticons | fullscreen  preview save print | insertfile image media template link anchor codesample | ltr rtl',
        toolbar_sticky: true,
        autosave_ask_before_unload: true,
        autosave_interval: "30s",
        autosave_prefix: "{path}{query}-{id}-",
        autosave_restore_when_empty: false,
        autosave_retention: "2m",
        image_advtab: true,
        height: 600
    });
</script>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-5 text-gray-800"><?= $title; ?></h1>

    <div class="row">
        <div class="col-lg">

            <?php echo form_open_multipart('diknas/inputpengumuman'); ?>
            <div class="form-group row">
                <label class="col-sm-5 col-form-label" for="headline">Headline</label>
                <div class="input-group col-sm-7">
                    <input type="text" class="form-control" id="headline" name="headline" value="<?= set_value('headline') ?>">
                    <?= form_error('headline', '<small class="text-danger pl-3">', '</small>'); ?>
                </div>
            </div>
            <div class="form-group row">
                <label for="thumbnail" class="col-sm-5 col-form-label">Thumbnail (Opsional)</label>
                <div class="col-sm-7">
                    <div class="custom-file">
                        <input type="file" class="custom-file-input" id="thumbnail" name="thumbnail">
                        <label class="custom-file-label" for="customFile">Choose file</label>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="row mb-3">
                    <label class="col-sm-5 col-form-label" for="text">Isi</label>
                </div>
                <div class="col-md">
                    <textarea rows="4" cols="50" class="form-control" id="text" name="text"><?= set_value('text'); ?></textarea>
                    <?= form_error('text', '<small class="text-danger pl-3">', '</small>'); ?>
                </div>
                <div class="row"></div>
            </div>

            <div class="form-group row mt-5 col-sm-7 offset-sm-5">
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
            </form>
        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->