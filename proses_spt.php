<?php

include "admin/koneksi.php";

if (isset($_GET['code'])) {
    $codeSurat = $_GET['code'];
    $sql = mysqli_query($conn, "SELECT * FROM tb_spt_pegawai where code_surat = '$codeSurat'");
    $fetchSql = mysqli_fetch_array($sql);
    $no_surat = $fetchSql['no_spt'];
    $untuk = $fetchSql['untuk'];
    $tujuan = $fetchSql['tujuan'];
    $alamat = $fetchSql['alamat'];
    $waktu = $fetchSql['waktu'];
    $idPegTtd = $fetchSql['id_ttd'];

    $sqlPersonil = mysqli_query($conn, "SELECT * FROM tb_spt_personil where code_surat = '$codeSurat'");



    // SQL Pegawai kepala
    $sqlPegTtd = mysqli_query($conn, "SELECT * FROM tb_pegawai where id_pegawai = $idPegTtd");
    $fetchPegTtd = mysqli_fetch_array($sqlPegTtd);



    $namaPegttd = $fetchPegTtd['nama_pegawai'];
    $nipPegttd = $fetchPegTtd['id_pegawai'];
    $idJabatanPegTtd = $fetchPegTtd['id_jabatan'];

    // Sql Ambil Jabatan pegawai Kepala
    $sqlJabatanPegTtd = mysqli_query($conn, "SELECT * FROM tb_jabatan where id_jabatan = $idJabatanPegTtd");
    $fetchJabatanPegTtd = mysqli_fetch_array($sqlJabatanPegTtd);

    $jabatanPegttd = $fetchJabatanPegTtd['jabatan_nama'];


    // Sql Ambil Dasar Surat
    $sqlDasarSpt = mysqli_query($conn, "SELECT * FROM tb_dasar_spt ORDER BY no_urut ASC");



    // Ambil TTD Pegawai Kepala
    $ttdPegawaiTtd = mysqli_query($conn, "SELECT * FROM tb_ttd where id_pegawai = $nipPegttd");
    $fetchttdPegawaittd = mysqli_fetch_array($ttdPegawaiTtd);

    if ($fetchttdPegawaittd == null) {
        $file = "blank.jpg";
    } else {
        $file = $fetchttdPegawaittd['file_ttd'];
    }

    // var_dump($file);
    // die();
}



require_once __DIR__ . '/vendor/autoload.php';

// Create an instance of the class:
$mpdf = new \Mpdf\Mpdf();
header("Content-Type: application/pdf");
header("Content-Disposition: attachment; filename=document.pdf");

// Read the file content and output it
readfile("document.pdf");



$html = '
<!DOCTYPE html>
<html lang="en">
    <head>

        <!-- BASE CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">
        <link href="css/menu.css" rel="stylesheet">
        <link href="css/animate.min.css" rel="stylesheet">
        <link href="css/icon_fonts/css/all_icons_min.css" rel="stylesheet">
        <link href="css/skins/square/grey.css" rel="stylesheet">

        <!-- YOUR CUSTOM CSS -->
        <link href="css/custom.css" rel="stylesheet">

        <script src="js/modernizr.js"></script>
        <!-- Modernizr -->

        <style>
    body {
        font-family: "Times New Roman", Times, serif;
        font-size: 12px;
        margin: 0;
        padding: 0;
        margin: 3cm;
    }
    h2 {
        font-family: "Times New Roman", Times, serif;
        font-size: 12px;
        font-weight: bold;
        text-align: center;
        line-height: 2;
    }
    .header {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        margin-bottom: 30px;
    }
    .container {
        padding: 1cm;
    }
    table {
        font-family: "Times New Roman", Times, serif;
        font-size: 12px;
    }

    .table-container {
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .table-top, .table-middle {
        margin: 0 1cm;
    }
    .table tr td{
        height: 30px;
    }

    img {
        width: 100px;
    }

    .table-bottom tr td{
        text-align: center;
    }
    .centering {
        text-align: center;
        letter-spacing: 1px;
        line-height: 14px;
    }
    table tr td p {
        line-height: 2.5;
    }
    .table tr td {
        margin: 10px;
        padding: 0;
    }

</style>

    </head>
    <body>
        <div class="container">
            <div class="header">
                <div class="table-container">
                    <table class="table table-top">
                        <tr>
                            <td style><img src="images/logo-jatim.png" alt
                                    style="margin-right: 20px; width: 80px; "></td>
                            <td class="centering">
                                <h2 style="font-weight: 500; ">FORMULIR
                                    PENGAJUAN IJIN</h2>
                                <h2 style="font-size: 14px; font-weight: bold;">DINAS
                                    KOMUNIKASI DAN INFORMATIKA PROVINSI JAWA
                                    TIMUR</h2>
                                <h2 style="font-weight: 500;">Alamat : Jl. A.
                                    Yani No. 242-244 Surabaya Telp. (031)
                                    8294608 Fax. (031) 8294517</h2>
                                <h2 style="font-weight: 500;">Website :
                                    kominfo.jatimprov.go.id</h2>
                                <h2 style="font-weight: 500;">Email :
                                    kominfo@jatimprov.go.id</h2>
                                <h2 style="font-weight: bold;"><b><u>SURABAYA
                                            60235</u></b></h2>
                            </td>
                        </tr>
                    </table>
                    <br>
                    <br>
                    <h2 style="font-weight: bold; margin: 0; letter-spacing"><b><u>SURAT
                                PERINTAH TUGAS</u></b></h2>
                    <p style=" text-align: center; margin: 0;">Nomor:
                        ' . $no_surat . '</b></p>
                <br>

                <div class="container-personil"
                    style="display: flex; flex-direction: row; width: 100%;">
                    <div class="left" style="width: 10%; float: left">
                        <table class="table">
                            <tr>
                                <td>Dasar : </td>
                            </tr>
                        </table>
                    </div>
                    <div class="right" style="width: 90%;">
                        <table class="table">
                        ';
while ($fetchDasar = mysqli_fetch_array($sqlDasarSpt)) {
    $html .= '
                            <tr>
                                <td>' . $fetchDasar['no_urut'] . '. </td>
                                <td style="text-align: justify; line-height: 1.5;">
                                ' . $fetchDasar['item_dasar'] . ' 
                                </td>
                            </tr>
                            ';
}
$html .= '
                            
                        </table>
                    </div>
                </div>

                <h2 style="font-weight: bold; margin: 0; letter-spacing"><b>M E
                        M E R I N T A H K A N</b></h2>
                <br>
                <br>

                <div class="container-personil"
                    style="display: flex; flex-direction: row; width: 100%;">
                    <div class="left" style="width: 10%; float: left">
                        <table class="table">
                            <tr>
                                <td>Kepada : </td>
                            </tr>
                        </table>
                    </div>
                    <div class="right" style="width: 90%;">
                        <table class="table">
                        ';
$i = 1;
while ($fetchSqlPersonil = mysqli_fetch_array($sqlPersonil)) {
    $id_user = $fetchSqlPersonil['id_user'];
    $sqlPersonilPegawai = mysqli_query($conn, "SELECT * FROM tb_pegawai where id_pegawai = $id_user");
    $fetchPegawai = mysqli_fetch_array($sqlPersonilPegawai);

    $id_pangkat_golongan = $fetchPegawai['id_pangkat_gol'];
    $sqlPangkatGolongan = mysqli_query($conn, "SELECT * FROM tb_pangkat_golongan where id_pangkat_golongan = $id_pangkat_golongan");
    $fetchPangkatGolongan = mysqli_fetch_array($sqlPangkatGolongan);

    $html .= '
                            <tr>
                                <td style>' . $i . '. </td>
                                <td>
                                    <table class="table table-nomargin">
                                        <tr>
                                            <td><b> Nama</b></td>
                                            <td><b>:</b></td>
                                            <td><b>' . $fetchPegawai['nama_pegawai'] . ' </b></td>
                                        </tr>
                                        <tr>
                                            <td>NIP</td>
                                            <td>:</td>
                                            <td>' . $fetchPegawai['nip'] . '</td>
                                        </tr>
                                        <tr>
                                            <td>Pangkat / Gol</td>
                                            <td>:</td>
                                            <td>' . $fetchPangkatGolongan['pangkat'] . ' / ' . $fetchPangkatGolongan['golongan'] . '-' . $fetchPangkatGolongan['ruang'] . '</td>
                                        </tr>
                                        <tr>
                                            <td>Jabatan</td>
                                            <td>:</td>
                                            <td>Kepala Sub Bagian Umum dan
                                                Kepegawaian</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            ';
    $i++;
}
$html .= '
                          
                        </table>
                    </div>
                </div>

                <div class="container-personil"
                    style="display: flex; flex-direction: row; width: 100%;">
                    <div class="left" style="width: 10%; float: left">
                        <table class="table">
                            <tr>
                                <td>Untuk : </td>
                            </tr>
                        </table>
                    </div>
                    <div class="right" style="width: 90%;">
                        <table class="table">
                            <tr>
                                <td style
                                    style="text-align: justify; line-height: 2;">' . $untuk . ' di ' . $alamat . ' pada ' . $alamat . '</td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="container-ttd" style="width: 100%; display: flex; flex-direction: row;">
                    <div class="left" style="width: 70%;">

                    </div>
                    
                    <div class="right" style="width: 30%; float: right;">
                        <table class="table-bot"
                            style="margin-right: 10px; display: flex; justify-content: end; float: right">
                            <tr
                                style="display: flex; justify-content: flex-end; align-items: right; text-align: right">
                                <td
                                    style="display: flex; flex-direction: column; justify-content: center; align-items: center; text-align: center;">
                                    <p style="text-align: right;">
                                        Surabaya, 17 Juli 2023
                                    </p>
                                    <br>
                                    <img src="images/ttd/' . $file . '"
                                        style="width: 100px;" alt srcset>
                                    <p><b><u>' . $namaPegttd . '</u></b></p>
                                    <p>' . $jabatanPegttd . '</p>
                                    <p>NIP.' . $nipPegttd . '</p>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>

                
            </div>
        </div>
    </body>
</html>
';
// Write some HTML code:
$mpdf->WriteHTML($html);

// Output a PDF file directly to the browser
$mpdf->Output("");
