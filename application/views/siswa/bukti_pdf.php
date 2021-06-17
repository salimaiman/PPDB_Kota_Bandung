<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $title_pdf; ?></title>
    <style>
        .kop {
            line-height: 1.6;
            font-weight: bold;
            color: #000;
        }

        .line-title {
            border: 0;
            border-style: inset;
            border-top: 1px solid #000;
        }

        .judul {
            width: 100%;
        }

        #content th {
            width: 30%;
            text-align: left;
            padding-left: 1rem;
        }

        #content td {
            width: 50%;
            padding-left: 1rem;
        }

        .image {
            width: 25%;
            padding-left: 0;
        }
    </style>
</head>

<body>
    <img src="<?= base_url('assets/') ?>img/logo-bdg.png" style="position: absolute; width: 70px; height: auto">
    <table style="width: 100%;">
        <tr>
            <td align="center" class="kop">
                PEMERINTAH KOTA BANDUNG
                <br>
                DINAS PENDIDIKAN KOTA BANDUNG
            </td>
        </tr>
    </table>

    <hr class="line-title">
    <table align=center style="margin-top: 1rem; padding: 2rem; width: 90%;">
        <thead>
            <tr>
                <td align="center" class="judul">
                    <h3>BUKTI PENDAFTARAN
                        <br>
                        PPDB SMA KOTA BANDUNG TAHUN 2021
                    </h3>
                </td>
            </tr>
        </thead>
    </table>
    <table id="content" align="center" border=1 style="width: 90%;">
        <tbody>
            <tr>
                <th>NISN</th>
                <td>
                    <?= $siswa['nisn']; ?>
                </td>
                <td class="image" rowspan="5" align="center">
                    <img src="<?= base_url('assets/img/fotopas/' . $siswa['pas_foto']); ?>" style="width: 120px; height: auto">
                </td>
            </tr>
            <tr>
                <th>Nama Lengkap</th>
                <td>
                    <?= $siswa['nm_lengkap']; ?>
                </td>
            </tr>
            <tr>
                <th>TTL</th>
                <td>
                    <?= $siswa['tmp_lahir']; ?>, <?= $siswa['tgl_lahir']; ?>
                </td>
            </tr>
            <tr>
                <th>Asal Sekolah</th>
                <td>
                    <?= $siswa['asal_sekolah']; ?>
                </td>
            </tr>
            <tr>
                <th>Sekolah Pilihan</th>
                <td>
                    <ol>
                        <li>SMA Negeri <?= $siswa['id_sekolah1']; ?> Bandung</li>
                        <li>SMA Negeri <?= $siswa['id_sekolah2']; ?> Bandung</li>
                        <li>SMA Negeri <?= $siswa['id_sekolah3']; ?> Bandung</li>
                    </ol>
                </td>
            </tr>
        </tbody>

    </table>


</body>

</html>