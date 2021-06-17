-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2021 at 04:41 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppdbapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_deadline`
--

CREATE TABLE `data_deadline` (
  `id` int(11) NOT NULL,
  `judul` varchar(128) NOT NULL,
  `deadline` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_deadline`
--

INSERT INTO `data_deadline` (`id`, `judul`, `deadline`) VALUES
(1, 'PPDB 2021', '2021-06-16');

-- --------------------------------------------------------

--
-- Table structure for table `data_pengumuman`
--

CREATE TABLE `data_pengumuman` (
  `id` int(11) NOT NULL,
  `headline` varchar(250) NOT NULL,
  `tgl_terbit` int(250) NOT NULL,
  `thumbnail` varchar(128) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_pengumuman`
--

INSERT INTO `data_pengumuman` (`id`, `headline`, `tgl_terbit`, `thumbnail`, `text`) VALUES
(2, 'Moklet Berhasil Meraih Juara Pertama di LKS se-Jatim pada 3 Bidang Lomba', 1623858741, 'default_pengumuman.png', '<p><strong>MOKLET berhasil meraih juara di bidang artificial intelegence</strong></p>'),
(3, 'SELAMAT HARI RAYA IDUL FITRI', 1623912565, 'default_pengumuman.png', '<p><strong>KAMI Mengucapka Selamat</strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong>????????????????????????????????????????????????</strong></p>');

-- --------------------------------------------------------

--
-- Table structure for table `data_sekolah`
--

CREATE TABLE `data_sekolah` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `npsn` varchar(30) NOT NULL,
  `alamat` varchar(128) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `telepon` varchar(16) NOT NULL,
  `website` varchar(128) NOT NULL,
  `akreditasi` varchar(2) NOT NULL,
  `kuota` int(250) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_sekolah`
--

INSERT INTO `data_sekolah` (`id`, `email`, `nama`, `npsn`, `alamat`, `kecamatan`, `telepon`, `website`, `akreditasi`, `kuota`, `deskripsi`) VALUES
(1, 'sma1bdg@gmail.com', 'SMA Negeri 1 Bandung', '20219271', 'JL. IR. H. JUANDA NO. 93', 'Coblong', '082130082193', 'http://sman1bdg.sch.id/', 'A', 10, '<div><h1>REKAP PENDAFTAR PPDB SMA NEGERI 1 BANDUNG</h1><p><br></p><p>SMA Negeri 1 Bandung menggunakan sistem kredit semester (SKS) yang disesuaikan untuk memenuhi kebutuhan yang diperlukan dengan memanfaatkan TIK sehingga kami menjadi sekolah berbasis TIK.</p><p>Hal ini menandakan bahwa SMA Negeri 1 Bandung adalah sekolah pertama di Jawa Barat yang menggunakan sistem kredit semester berbasis TIK, SMA Negeri 1 Bandung menjadi sekolah berbasis TIK di Provinsi Jawa Barat. Kemudian menjadi Sekolah Pelopor sebagai Sekolah Integritas Pertama di Provinsi Jawa Barat. Selain itu menjadi sekolah ramah anak.</p><p><br></p><p>SMA Negeri 1 Bandung sebagai sekolah rujukan bagi sekolah-sekolah imbas sekitarnya. Tahun 2019 SMA Negeri 1 Bandung juga menjadi Sekolah Integritas dengan motto “SMANSA INTEGRITAS BERSATU”, Sekolah Ramah Anak dan sebagai Sekolah Berbasis TIK yang memanfaatkan teknologi sebagai kebutuhan kegiatan pembelajaran.</p><p><br></p><h2>Visi</h2><p>Mewujudkan sumber daya manusia yang unggul, berkarakter, berprestasi, dan berwawasan lingkungan menuju perkembangan abad 21</p><p><br></p><h2>Misi</h2><p>Meningkatkan ketakwaan kepada tuhan yang Maha Esa</p><p>Meningkatkan rasa kebangsaan dan nasionalisme</p><p>Mengembangkan seni budaya lokal dan nasional</p><p>Menerapkan sekolah berbasis Teknologi Informasi dan Komunikasi (TIK)</p><p>Membudayakan kegiatan literasi</p><p>Mengembangkan sikap mandiri serta berjiwa kewirausahaan</p><p>Menerapkan pembelajaran abad 21</p><p>Meningkatkan pengetahuan dan perilaku yang berwawasan lingkungan</p><p>Program Kerja</p><p><br></p><p>1)Meningkatkan ketakwaan kepada Tuhan Yang Maha Esa</p><p>Mengembangkan pembelajaran Pendidikan Agama.</p><p>Mengintegrasikan nilai-nilai agama dalam proses belajar mengajar dan kegiatan ekstrakurikuler.</p><p>Menyelenggarakan kegiatan keagamaan secara intensif.</p><p><br></p><p>2)Meningkatkan rasa kebangsaan dan nasionalisme</p><p>Mengintegrasikan pendidikan karakter bangsa dalam kegiatan intrakurikuler dan ekstrakurikuler.</p><p>Mengembangkan nilai-nilai kebangsaan dan nasionalisme di dalam lingkungan sekolah.</p><p>Menanamkan rasa patriotisme melalui proses belajar mengajar dan kegiatan ekstrakurikuler.</p><p>Menyelenggarakan kegiatan yang kreatif dan inovatif dalam memperingati hari besar nasional untuk lebih menghayati kebanggaan berbangsa dan bernegara.</p><p><br></p><p>3)Mengembangkan seni budaya lokal dan nasional</p><p>Menanamkan kecintaan terhadap seni budaya lokal dan nasional.</p><p>Mengembangkan sikap toleransi melalui pendekatan seni dan budaya.</p><p>Meningkatkan pengetahuan dan keterampilan dalam mengekspresikan seni dan budaya.</p><p>Menyelenggarakan ekspresi dan apresiasi seni dan budaya yang berbasis budaya lokal dan nasional.</p><p><br></p><p>4)Menerapkan Sekolah berbasis teknologi informasi dan komunikasi (TIK)</p><p>Menerapkan pembelajaran berbasis TIK.</p><p>Menerapkan bimbingan dan konseling berbasis TIK.</p><p>Menerapkan pelayanan administrasi berbasis TIK.</p><p><br></p><p>5)Membudayakan kegiatan literasi</p><p>Menumbuhkan minat membaca dan menulis.</p><p>Meningkatkan kebiasaan membaca dan menulis.</p><p>Menerapkan pembelajaran berbasis literasi.</p><p>Meningkatkan kemampuan berkomunikasi.</p><p>Meningkatkan apresiasi dalam bidang literasi.</p><p><br></p><p>6)Mengembangkan sikap mandiri serta berjiwa kewirausahaan</p><p>Meningkatkan kemampuan inovasi dan kreativitas.</p><p>Meningkatkan kemampuan berwirausaha.</p><p><br></p><p>7)Menerapkan pembelajaran abad 21</p><p>Meningkatkan peran tenaga pendidik sebagai fasilitator, pembimbing, konsultan, dan pembantu belajar peserta didik.</p><p>Menerapkan pembelajaran yang berpusat pada peserta didik.</p><p>Menerapkan pembelajaran bersifat terbuka, fleksibel, dan sesuai minat.</p><p>Menerapkan pembelajaran berbasis masalah dan proyek.</p><p>Mengedepankan pembelajaran sesuai dunia nyata dan kongkrit.</p><p>Menguatkan pembelajaran dengan aksi dan refleksi.</p><p>Menerapkan pembelajaran berbasis inkuiri.</p><p><br></p><p>8)Meningkatkan pengetahuan dan perilaku yang berwawasan lingkungan</p><p><br></p><p>Menyelenggarakan pendidikan lingkungan dalam kegiatan intrakurikuler.</p><p>Menanamkan kecintaan terhadap lingkungan melalui kegiatan-kegiatan nyata.</p><p>Menyelenggarakan kegiatan ekstrakurikuler yang berwawasan lingkungan.</p><p><br></p><p><br></p><p>Profil SMAN 1 Bandung : <a href=\"https://www.youtube.com/watch?v=RRgeXc7CPW4&t=31s\" rel=\"noopener noreferrer\" target=\"_blank\">https://www.youtube.com/watch?v=RRgeXc7CPW4&t=31s</a></p><p><br></p><p>Guru-Guru : <a href=\"https://www.youtube.com/watch?v=A9j2I5AhnfI\" rel=\"noopener noreferrer\" target=\"_blank\">https://www.youtube.com/watch?v=A9j2I5AhnfI</a></p><p><br></p><p>Sosialisasi PPDB : <a href=\"https://www.youtube.com/watch?v=9sBFMXUPeEU\" rel=\"noopener noreferrer\" target=\"_blank\">https://www.youtube.com/watch?v=9sBFMXUPeEU</a></p><p><br></p><p>Program SKS : https://www.youtube.com/watch?v=PGEj13J3qxQ</p><p><br></p><p><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAZIAAADNCAYAAACSLfZsAAAgAElEQVR4Ae2dz6ttW3bXb/1o+TcIgnZEoS6UsZGUVBD0PFJatsrc21AQC3kgRhC98UkiWBeCFSkqCGXC1YRg8sTqaF4nCVwsKOGBduS1xFctoV7HxquOjdexseW7T332+e5xxlp7rH3PuXuvucaCdedcc44x5vg1x3evtc9d+8muj/ZAe6A90B5oDyQe+PEnnySj94ee3B/qkfZAe6A90B5oD+x2DSSdBe2B9kB7oD3wRh5YDCQvX77cPXnyJD0//PDDgzJzdO++++7us88+23388ce7p0+f7riG+f3339/L15xo/EBuNvfpp5/u3nnnnVQ3yZw6kBntcr3QKdLoWmtqbeyJuqEXdFxnstyHrq+vH2nm5GHDHI30gA4bNCa/xGPKV6KPejnvFB/ritZtdN/gN9HM2eHrz9G5PNfR+5E/8rg97ifltWxCf9cp2hjnfH31XQenZQ3PM9eHtWndx5IrWczRxv1Rkee5ghxaXxM691O0VdfYFX0daed0cz/Bx/rSLdOBvHOdxYuf4IEOG2kjH+vFceKJfdB5HLVupMMO/MO6apEFzaXaBwUSd8hcsHEwjuRaTiBYLgvn4GAcGZM/zkNHG+mRW9EVvZDlLcHEHs25TegFHdcuw/tRz5hAJDb6z8lDjzka19ftRF/WUTvnqyxm8M7xoaOv7f5QH11O2YHvTtGxJvp5G/2NLugQ/eCyPAfE54Utyo1xdB3Udxt8beS4vyv+jXpjF63rU5EXbUUOLfKg4zraqWtoxOu2ZrRzurlP4PW8ymT7PPkj3iqQRJ2xxfNC8ognOkAnfqeNdOJ1WvxLm9mM7W+rPRtIfINIWYJBIAh2pHPDcA5ORMaUY5h/8eJFeieTBUDrxYRwHdTPdI2yWBv7ogxdYw8BhjbKitfIQs9oP+Pyk5KQRIRvSh7zsZ2i93GtJTti/DJfSf4p/2R8vp76mYxYNCMPtuEjfDdFxzh08HtLHMlLdHB/YI/GXBY2kAPuP3SciqProD66Iktr6kAfXxd9fL0oj/WdTzTo7OMVedFPrIfe5Cl06A8dret1c3NzL7+ho53SjXHZw+G6TOU09sdYohd6Q+fyiYV4ocNe8ifTRXpBR3yR6zqrn60hmdD52qz1tturAZJXr17tC5cnszsDZ2r+o48+2iN4pMWxJDD8MSEYpyUBRccRZWVJBC1tTAz0iLLiNfxqM118zPvwzcmDxtspeveT9503W1/zp/yT8UU9Mhked/k38kzpNkU3Ne5yoNEGZXP7vPrYQwudrhX3rGhBK996P8rm2vWQLuR79Inr4zmMHNq5NTXnvHO0yCPfqwVTMrMDf2AX+yaj1diUbtm4ZFNove+yyTvRQav5SA8dsUZG9EO8ho54Yh90rMv4FF30s+RKhj5Yy3eXPM4GEoz3FkfIIILq8/QJRHRknHfHQIszs6ASAOTEVomRHXO6ak4H60WZuobGdQQYNYde+Cdeu06sg48ibUxu8UKT6ZbZDD36sD5+EM8pmmytKA+5apGd8eE/bM9oiPuUXloDfrXQZbI0lvllTl+KODTY88EHH+yBQ9esqT7zrMMcPtK49BDd1OE8Wkf08oPG1bpOrJfZK39UizS6nJInOvI9W1NjWtfp5mwVXVXHOd3iGtDO5TR5oz0rv0p30ccYQYdde+Ns/xFb/ELOVujm6gV6xHWRew3tgwHJVACzJMMhOFw0CoIcps3hGwQnxSDC68Fi42VrSvbUQbJFPreJ9SONrqFznT755JO9TZqn2JBo6Mm168U6+IgkYo2Ml7FMt8xu6H39bAy/uAzG4lro57Z4v8KH7VF2FmPXnXXgV4s9URbXWY4hhxZ58KjFF9jz+vXrffGRPhR78TEPvVrx4yf0y+xgfadRPlHkKHhuA+u5rvSlD0XaeRiDTq1odZySJxry3fnV9zWcDtv3CyT/oM+cT8Q2p5vb4P5T33mJi8aIs1ri5PFEb6fbC/vpP3Ed/OJ5K9I5url6gU7oIVmM4ftTPnN9H6N/NpAQCIIaDWEcukx5HO68BMuDQILhtNiyRgxUtmY2VtEVvdROHdiD7gRbz321ubBzTs+oC9fRZl2jy5y8TNeMHl2zdbBHstAHn3ONbdl6GV9GV/Fxpjuy0EW6VejwH/xTreef1tDha6H3s2fPDkXU550+8++UHtEG8ku5RE5pzOUTl/1g+Cfq5HahF7pE2iBqf4k+5AfXnpsiZFwy5w70OTeXyGH04RrbvIVG+hC/aLviKR70jnTYgn3IjNfQTcUTPvQltvghkwctNkHLWm+7fWMgIfjucBlxTiKKD2dLnpylIzoN59ESaHiXOrWi61QS7RX86T9ZwJEtXdFrSk/4oeMaO2NLAk7Jc928H+k9hnENXfsnTOwhNs5LHHwt+pGPcW8rPo66w4+v8N0UnejRhcKBDFryze2JY8jQOHPyFev7PLplvtUYcWR92swGfHQqLsjwFj09nswjF5+4/tDEFrtc/2wN6NyfUZauySV8mNFobEo31pY+P/nJTw53cJnf3QfRdvwOH3pHOvRDH3zn/NKJA378hV+4dtu0Nn7ALxpDF2SyFrSMv+32jYFECuMQGYrjcC7B8Baj4XNHSh4Ohw5ZBAonwQ/duU5FProj31t0cjvok5To4/agk2ijnvDHFjtZcyp5WJc1kO96Z/1Ij94ZP75BJ67dV/DLDh/3tTM+n1cfe1krzusa3aPPuIb3FB2+W7oG9rk9vpbGdfg8djHHmvBN6cK8x8WLivOxHn7w1vnn6JbKI+6e724749BF+/EDLba5vsx5O2eD7Ja/WTOTBT+5Qny41lqKMz5Eb+gY9zauwxpOQ5910BE/aV1iLlqXCS0yYouO7qe32X8QIJHCOBnj5xwJDc5xR0oWCSVnvffee3uHepLjIKdT4AkC8qE71aIrRSKjx74YQF2j25Q98KIXemay0CHaFnVCZ8lGHvIjbbyO9OiXJSMbihixLnoiGxlTOkzxwa8WGWqnDnSf85145+iI19QaU/xuc7Rn6voHP/jB4ZOx87M2fJnN2BB9SkzcDuRkfpnid9q4fkXeVL6jt+RLLnSSOXeQ81HfyDOnG3ao1frZmviPnIYWXq2HLi4DOveb+siJemb0ngP4JfLDF/3gOqFDpIk6vK3rxUDythTrddoD7YH2QHtgHR5oIFlHnFrL9kB7oD1wtR5oILna0LRi7YH2QHtgHR5oIFlHnFrL9kB7oD1wtR4oA8mPv/Mndn22D6o5wJeB3eZvym6/tF9GywGByanzye7Vk12f7YNqDmiTVGmbbhu+6pwYN8772BbulxpIGkgXAUMXjXGLxrnA3zkxbk40kDRALAKIahHpojFu0ajmQKTrnBg3JxpIGkgaSDoHHiUHGkjGBY40tlt9tPXxyye7p3/yye79v3sccF0LYd/96pPdZ987nnv5N57s3vnzT3affvd4XI4Vn+RJLo6OY+KX7Hh++Mt3PPCuud1/Qpkp0O7HLA4+phgoFpLpvlcMdK1xYhX9nfkQ2TFWos34szHkai7G0nXM5kUv+1lP16Jzma5bljPYC4/aU3ZFPbXGf3/vzodx3tdAB/RmXY+B87sPoNU8fVqPreZ9zczvcQy9fG2XwTquZ9xrUaZ4sjGNi1draR7Z0Gtc85pzfejju6l5ZOIT7MjoyQ9iDq/WcN8jC93Qec4fonE+8aKL5uIaGhNN5RjyO5IYhOhAgqVxzsyJzCmYkSeOZfzZGDLX2u4Ty/wW7XCbszj4WExqCgE0nujR33FdXYtGPDrVd5qMPxuDJ86hk+xjrZgT8DIvPXzzR5nuK/FQBHxzu6yqXa6H8+Nf5lkv6ql55rB3akzj4kcmrWzF9likox/EE8eqvkG2dHBdM5lTYxrHXvc9+YkdUUfx+ZnN+xjyWMPnXI765JtodO3+QE6WD3P+kBzJwx5oszXQZx/bApJsBkgIzIub/G7FA4UTabOAx7GMP9Igb81tVjTcHvcDPidRRedjbAgV5Js/d1f88ZvGKptOcpH1/C8+2emED92QqfXnxubm3LZMHrxqNS9f6RQfYw4+Lg9eNrdajZ1jF7Jo0QWZjLOW9JCePk9hRXfXJfo2y4lMJutmvotjFd9IHnTSiQK5ZB1okeXxiT6IOjqv+tk8PlZLLPFfRo9M3yfohn34VvzQ0875Azkx1pFXdjO2j20DyZ1DCNpHv3pbZAgmDiMA7kTm4J0rQhl/NobMtbZZ0XBb3Oa4GUTnY2wsbRDFQ6f8r1aAz5joshj4ui43o62OITOjd9uyeXjVMi8wpDgxRh65PHjdDo35deT3dZCJHG/FlxUP1v/Ry9sirGv4YhHVeDam8SwnJEvjOrU+ctVW7EA334/ui6iPF2zWqqwDrVpkoC/XajWfyXP+bN7HyHfl9amcjrbij+/+zVufeqzQweMTdYdmLi6s4T7fx7aB5DYBKgHMnIjzPRmmxjxAbCA+QcAzQrtPrHBL73a5H+NmEJ2PERf56YO/f1twtQF0/epvLQMSj5GvgW6aJy7eUuSho3V5rrfs0/WUvFh0sEt8Uab7inWj7s4T56b0QEdkoiu6adyLjq6jLsy7r9SPssWrcdaijfy+F9wm6ONY1Ed00X4vlqzn+mF3tGEq5sig0EcdpuTh12ze1yLfkZ/Ro3+0VeNuh8vFh6f8ITpsRJbHJdor+n1sG0huEzwGJV7LYZkTCZACHgMXx5yfgJIwyBmh3SfWIwCJfCYfy49q451j9Lf7Mm7QeC3ajD8bQ67m2Gy0Hs853rgesp79zHEeec6wrudmtCNex3WQEVvWp+BpnhxlLF5TcKSj6NXKD5IV5c/lBHyiQVbmuzgmWi9yWtN9g05OE3miTPFkY24PMrK7tFO8Po+url+Mn9O7DurDLxpdSy98yJznIzS+HrYollE+8pCZ8WtsH9utAElMehwdgyCn+Fl1ujbZEiAhKFoLHWIg13q9TywDkrgZPHmJi/vAY8PGUhw++fbtHYjk+zWbJa7j/qMIemzpUygz/mwMuXNzolkyjx+kk+eR+4p1sUUtfWzxds4uZNFKV/HCg99dHn38jc7SUXK4dv2RL176WQsvsqVHlBP9eco35BF6eytZ0iPKnBpznfG51pdMfFbhjevpWjLwIX7HD5He9cA+0Wg8+gP9mIfe/UAfGpevfoxLXEM0klE5hvmy3Z1AMqiNzsKZcq6cRKI4PzS0BEk0GosJobHID4+DFfLW3O4Ty4AEO+XP6Beu3Qeio4jEeflQ8tUyV9l0okcmvkUvzWnM14UmG6vMTcmDN5vXWrLN9ZRu7pto87l2uR7o4rkefQO9r8e+wX8ux8c0HnMCXmLHNXxx/Wi3ZIp2zjf4k/0rHtZh3Sy+2Zh4OZEhm3x9zZ/ijfPIIubRzkiPDmrxkWh0Hf2BbHQUncdYPNDgj6lr4hLXkIx9bAtIMgyQ4CQZrpMAACpcyzk6CZQ7EV5aEkD0yGGOACIvCwLBZQ1o19zK/qg/dmou+iXGRTRsfjYWPPhY8phjE/gaxEDtH/7S7ZrQoRv8yBa/x1N02Rj8c3Pwuh700SPyo4/roLyAjxZ+/MY1eiFnzi5oaaWL5OP3eA2d+5/1PXdZ22WJV9fIoGV/RbuYZy3msYf5Od+gR+QRr/jwcYyB5rMx1qRlbbcdXvT1lhhlsrFTND/5jfr3fvhPMrW2dIn2ak56/PO/dis3zsOHP3SNXPRHd2ijDNFVjmGARI7o8/F9sE+s9nXnmuVA58Tj77tL1bYGEkv0SwVhxHW7aIxbNM7N186JcXOigaSB5FE+NXfRGLdoNJB0bGMONJA0kDSQdA48Sg6kxaZ9/VZ8HX3/2NdlIBFhn+2DzoHOgc6BzoEsB079OqLmn/zR//r+rs/2QTUHlGh9tAfcA50T7o2x+tXYNpA0kC76IFFNrLG2U1sz54HOiTnvrHuuGtsGkgaSBpJ17/WLa18tNhdXtBVY7IFqbBtIGkgaSBZvr2ZwD1SLjfN0fx0eqMa2gaSBpIFkHXv6arWsFpurNaAVm/RANbYNJA0kDSST2yif+PDDDw9/6fj06dPdxx9/nBNuZLRabNbujvfff/8Q93feeWf36aefrt2kk/pXY9tA0kDSQHJyO90RCDRubm4O4CFQ2UpRufPCca9abI651nUV4yxQeffdd3efffbZugxZqG01tkdA8sFHv7f72rO/svvTf/ZP7f7tH333qMD87X/4iwc0lnCdohWP/nRU83794l/9gz2Nxqt/Wtp01/9nyNXEWpivqyF/+fLlTieHCokKigrNVo/Rc4IYCzw4dDfy/PnzwwcKxkdrq7E9AhKBh0BEzAICL+wRKKCFzue/8x++1SAy6J1ONbFG21CyJysoGo/gMqLtczaNnhMCDd11+oeFqVyY89Ma56qxPQISgcFf+EtP93cWfneR3XEAJAINn//eH3x7D0aR30Gp+9d/5zEVo2pirXHTnNKZ4uEFRTz6pOp3KafkjDY/ek5M3X0o5n6XMlpcZU81tgcg+f5/++09iAhMBA7x8ZbGJdRPjVFw1P/yV76054u80HS7XgAhdtXEGnFTNZDkUR09JxpI8rj76AFIHDwcVCggAgq/y4g0EWicFhndNpB48q2tD5DET6H9aGvs1+b0o63TO/UAJBEI9ClDj7kEGAKACCR8MQ9gaJ47Eb5o5/uTBpD1AwgxHP3T56ktE0EDcImPu07JGWl+9Jwgxv4BYuouZaS4ypZqbPdAwvcdXvj5wjx+B8JfaWV3JIAKIAOwUIS6XT+gVBNrtA2FPf3nv3jirt1CTuiDgv+Zt0Cl//zXckDFXQASi34GFEoYPwEOyYh3LICT0zSQNJDcpd56eyoq7IP+D4n1T63rjfit5gIP4u6gsna75vSXvZXj8Giri/z6i/zbiGE1sSrJ1zRjeKBzYow4ZlZUY9tAMuj/93gsUKkmVpaUPTamBzonxoyrrKrGtoGkgeTwJ9wV8Kkm1rhbqy2LHuiciB4Z57oa2waSBpIGknH2/UUsqRabiyjXi76RB6qxfSLCPtsHnQOdA50DnQNZDvRvtvfdxqK7jX609UYf3jbLrOLTx5geqMa2H2012CwCm2pijbmt2qrMA50TmVfGGKvGtoGkgaSBZIw9fzErqsXmYgr2wmd7oBrbBpIGkgaSs7dZM8oD1WLT3lqfB6qxbSBpIGkgWd/+viqNq8XmqpRuZUoeqMa2gaSBpIHkxJbyV2Nkr0Tx+a28OsNdVi02zrOmfnxpI28Dlt3xVC6MdFRj20DSQNJAMrPz9V4tB4/48r54rUKyhZf5ucuqxcZ51tTng8IcSGhuxA8R1dgegCS+dJFXwWtcfxaqNqKvXjP/rVfv3RsXnV7W+Ps//M39q+h1jRzJQra/pr7yp6dNc/n3gVUTa02FYk7XCAz++vD4SVVyfH5O7khzI+eE3vasDwb6ffYpIBGNPmzoQ8VoRzW2KZDwCnkv/urPvcmXtwX7q+gZkzLw8op5jTWQXB4YloJzNbFG2VBzdyQ84vACkoHLKL6YsmPUnFAsX7x4sfvoo4/2YDIFJPE3aqb8tMbxamzvAcnUb66/CZDoJ3h16tXyOrluIGkgWcPm4hOnNpU/tpq6+9jCb3l73KrFxnnW0NcHBMVy7sNB/H2aNdi1RMdqbI+AZO431wUkEuqn37Fw95HdkehuRKChOZ26/sY3v953JCv8fqaaWEuS9Zpp47Nvv0NpILmN3Ig5odjqQ4PaOSCJjz6vOZfP0a0a2yMgcZDgURSPPt7kjkS82dl3JH1Hck5yvy2eqQLCowwVGX3B2o+2xntFimJMXKfyYGr8beXn21jnLCDhVxJ11yABfnfxpkDC9y6Sq77kNZA0kLyNzXDuGlOFAiDJ5qfuUs7VYQ181WKzBlukIx8QZFc8FXuO0R9ryc5qbI/uSLgL4QtxgEV3JW8KJPz0LuDRQLI+EFEeVBOLzbb2du7RlmzTp1b/s8/RH3Vk8Rw9J7IPDFnsM9+sfawa2xRIVDAo/ICLCr+E+ulAM/cdiXgBJ5cHqPD4rNvrB5dqYq19A7n+AgfPex55QOPzDirMj96OnhNTQLKFDw3V2B6ApIv49Rfxa4hRNbFGL55t350HOifufDFarxrbBpIV/uXUJQGlmlijbai2Z9oDnRPTvln7TDW2DSQNJP2KlLXv9gvrXy02F1azlz/DA9XYNpA0kDSQnLHBmuXOA9Vic8fRvbV4oBrb/s328AcEclyf7YPOgc6BzoHbHOjfbO+7jUV3G5XvXrS5+mgPuAc6J9wbY/Wrse1HWw02i8Cmmlhjbae2Zs4DnRNz3ln3XDW2DSQNJA0k697rF9e+WmwurmgrsNgD1dg2kDSQNJAs3l7N4B6oFhvn6f46PFCNbQNJA0kDyTr29NVqWS02V2tAKzbpgWpsG0gaSBpIJrdRPqFXpGiDcepVGVs+qsVmFB8p3v7yxlHsyuyoxraBpIGkgSTbQRNj/MgV79viTbFcT7ANPVwtNiM4gfeqNZAcR/MAJPHtvrxKXuP8WShjfBLzOV7yyFh8SSPz8KrlBY6RVusxBj1yeR29WvSKtPCoFV22tuZ4Tb5kO4/6GnsIuf5iS3T/l7/7q3vb45q6dn2xET3wF3ZfopWOWz54hfyWfRBt30JO8AFCL+XUD141kBxnQQokFDyKtwqWiq4XRd72C40Xa/HH4sd8LI5esL1Qio710Eet97NCKj3jW4Xj2pFPOvjaGf25crXJkJ3pXpEbfRn1f5vXWygax1vk7qrvPu584b0t5ISARL/drmNLHyaqsb0HJNlvtkfQoHCpMFLsKb4UTvGogFJEmRcP/IDTv/ng149oNc+c+KBXmxVjn68UZqdXPwIJ9koWtOfKlT90Su9M94rcBhIvW5fr86NVeoylT6bEdsuPtRQN+WFLRwPJ/WgfAcnUb7ZnIKAC6+P0VZSVWL/2O79yBA7MO5BQWHnUA+hINsVcsiSTgg6Py2FO7VxhZuOrBQDFE4EkW+NcuT//tZ/b6ZRt8onWdt3n5ELXQHI/cS8xwh2J/+YIjzy2DCbK6S0dDST3o30EJF5ovahnIKAC7OP0ARAVagETcpinOIqfgp0BieZ1qtCil+jhcTnQQn/Ooy3WoNW6DyHXAeSrv/CzDST3c3A1I9yRCDz82FJhcbvpa89s6dhSvKuxPQISPqVTvCmm3B34nYGKrIo5PA4UFHspcQpIxJ892vIi7usj+6GBBD2n5MsX5wCU5Ep/tYCU616Ryx1J9L/76G31q4k1YmHhl/Li3ceWCksW163lxJbiXY3tEZBQTClcgISKFOBCEfTirnkHEl2r6EkJZMZ51hAdfWjhp3DDKx2mCr14dFYKM7S00iGu7bY/hFxskE/w4ZTc6FuuZRs6X6qtJlZWcEYY4/sR3Z3o6Edb/R3JCHk9ZUN1v6dAoiJF4fMCC5hIuE7/hAw9RZJr+LmGVy1zGZBQPKGH9k2ABFm06B+BhLVZc6rgZzZJ9pRcjWseH03Jdf+jq+ui+Uud0mfrh8CEuKiNdyhb88/WcqLvSO5n+AFILlWYet3LgcI5vt9a0bi/ZXokeqBzInpknOtqbBtILvjp/pxCfmmeamKNs5XaklMe6Jw45aH1zldj20DSQLLoMVk1sda7dVrzpR7onFjqsfXQV2PbQNJA0kCynn19lZpWi81VKt9KzXqgGtv+zXZ7i6uc1mf7oHOgc6Bz4C4H+jfb+25j0d1G5fsXbbA+2gPugc4J98ZY/Wps+9FWg80isKkm1ljbqa2Z80DnxJx31j1XjW0DSQNJA8m69/rFta8Wm4sr2gos9kA1tg0kDSQNJIu3VzO4B6rFxnm6vw4PVGPbQNJA0kCyjj19tVpWi83VGtCKTXqgGtsGkgaSBpKwjXh/ljaRzvib7PEVKT7Pix3hVeuvnQ9LDXEpG0c6shgST70ehUN9xkeNcTW2DSQNJA0kVIbkJYz8Bgnv0wJkuM7mX7x4sVMx2spRLTZr9ofi/fTp0/1LOmWHQEQ/uUuc9WHCr9dsq+teje0BSHihIAirlpcLxpc1as5fIpjN+9tzeSkjsnmpYcYnGuZ5KaKv5X+i6jpDwwsXkeH02XrwOR1ysZ85xrFDrdOwNvPuA8nI+DM9We8aW9k28pEVBI3xSVQt/cwPKjhz8xnP2sdGzwk+LHDnyTUfJhQ/jT1//vwANGuPKfpXY3sEJF5UVeB4jbsKMH0VNwqmxnUd52MBVLGlqKov5bwAAxg+hlzRwutynYe+9EC3rEBHPaHFDslnTOtGGbqe8hF8ziO5rnvkR+9ot9t5bf1qYpGII7SAR1ZAon0qNs+ePRv+kYfbPXpOZB8u3H71dad6c3PTQBKLnIobRTAWYO4wKJpxPha/WFDjfFZQKcwq3AIxyXA+6acEjkUYPnRznqhntEO06PqNb379CDw1d8pH+Is1o/zIj67RNvivsR29aMwVCD516pPo1G+2C3T8EYeK0KjPz/HVyDlR+fAgP/BhA5+M0lZje9YdCYWfAqhWC/rpn9wpmJrPCjzyHBQcKGIBVoGlSEtmtla2jvT0OyvWxQ5kSt73/uDbeyB1naIeukZenAMEfNz7mncbob/2Vv7eysH3IfGRhgMDNP6Yw/3DF7fI8LlR+iPnBB8aBChTh0DEc2KKbo3j1dgeAYmY/KSIZkChokjRiwWa8di6HGSLhoLuY1505wouc9Jb8gEt1w89fH3sdDrXw0FFfckQLXy06Oz6sh48AF3GL52c/tr7snsLBwDhAMAdieb8OPVpVPMux3lH6I+cE5XYjgoiys1qbI+AhIIXi5mKHZ+8KbZeAH0+8sbrrNAjk6IMDcWa1ou+y/Wi//s//M29rhmt68ma0Q7WovXHVVNgIV0kx2k1hl7o4vwAIDa7Pdfcl19GP/QpVHbGuwzuLuI4xSZ7DDLFM5IPR82JLJ7Ejbj6Y0zmRmqrsV0MJBRNLQvOeI0AABU5SURBVEAR9AKdFUEV0Dkgoqi7vFiUXQY6QAPwiMb7UZeop66xI+NDL9FJlgNBlA2/g7H40DHjlzyfjzKv8bqaWGvdTNyJRLDAHo37J9BIL1Dx4qI7Eb9GzkjtqDmh2E59gR7jPFI83ZZqbM8CEj5pAw4UZC3qJ8BAkWXOi62KJQVb9MiONJoTPzKhQya6sJaKdCzE0hM6zSFDY9969d6RfJ9HlzkgET1ro1MEicgPPfKjvtd4LdtGPlQgiJ+3DgYCE5+LoOMyHHRG9duoORE/NBA/Pjx4DtCPuQDPWttqbA9Aco1Fq3W6vt9zrybWWjdO673cA50Ty322Fo5qbBtI+n+237tzmwPwamKtZaO0nm/ugc6JN/fhtUqoxraBpIGkgeRad/FK9KoWm5WY02qaB6qxbSBpIGkgsY3T3eUeqBab5ZKb49IeqMa2f7M9/IGAHNdn+6BzoHOgc+A2B/o32/tuY9Hdxtx3I8xpc/XRHnAPdE64N8bqV2Pbj7YabBaBTTWxxtpObc2cBzon5ryz7rlqbBtIGkgaSNa91y+ufbXYXFzRVmCxB6qxbSBpIGkgWby9msE9UC02ztP9dXigGtsGkgaSBpJ17Omr1bJabK7WgFZs0gPV2DaQNJA0kExuo9sJvS9LG0qn/9wqbFt7JQp201aLDfRraU/F3edHfRVONbYNJA0kDSQzlU3FwotEfP9SfHmf6P29XDOih5mqFps1GXwq7jEPRo17NbYHINELBcXkJy9IzF7K6C8azOb9hYW8HBHZvFAx4xMN87zM0dfiz1DVus7Q8CJEZDh9fGkjL4KEN9PH7UCWZPPyR3TEV9iKTHhYK+oFP75Rm605xY98fIEejGMT46yncWiWtNJvKwevCleR4GBMhSR7zfjUb5bAP2I7Wk4Q46m4Z/Ojxr0a2yMg8eLnxTIWYIo1xSjOx8KkIkZxpCBS2ERLcfMxjUvuVGF1HvqiR7dYsJEXAcBtPmUHdrlvWBvdp4CEQs/6yIr8Ghet68WYfBH5NYfNmo9240P4WE/j6LCkrSbWiAVTNmXg4bbOvXrc6UbqbyEnPO7eJ44ZuDC35rYa20kgUWGk+McCS7GkaMX5WJg0j6w4p2uKG8VYYxRHFVQVwVj4RCsjncf50M3XQ89/98e/sZdJcYWGea3NWNZKNrxRd3zjQACNfgdefnCdmfOxqAc0Gb/0E73kZr8zrzn5Saf6yFI/s+3UWDWx1rx55nQ/9QhDj7p0bunYQk543KfuPhR3v4sZIQeqsZ0EEi+WKjoUThWaWIy8WGlhnV5IAQWNZwUeeV5M1Re9WvG4POlAwZ5aK1tHeqrgfvkrXzrI9sJ5yg5o3TdRd/RyfVlXvwOvcdftTfl9vex35rW2Yqd11cqf8oHGsWdJK39v9VCRyL5sxx8qJP59CuOjt6PnRIx7A8n9jD4CEiWEnxT2rMB6MaRYnfok73KQrSIWi6nGJJ9iLFrp5TwUP+Y0L/mAlusHra8vegdH0VTtkGx4o+5e2NXnGn20hgq5+LQm/O53ZGu+yi8/QIvf3CbNA6INJPc3wqmRWEwi/VZBRH5Q7o56ZHHvR1v3o30EJF6AVIQ4vcBS+DSWzTM21WaFHpkABTReXNWnGEfZXkBP/Wa75GgdnVGm2xnX8OsKkKArtkVb8B/z0sftUF9rMj/FLzlxzoHKbZJO0LK+21Xpi39rxxxI8Gx8a3+p5Tkwak5MxZ2YC2Q4pu5SmF9rW43tYiBRsaF4Ufi9WGXFKCu8Xsgoli7Pi6Fkugx0gAbgEY33oy5RTwqrr+t3A/BHmeIDdOMc19gX9Y5gEW3nWnyZ3c6fgSb8rO82o5uSg3lsrLbVxFrrxol6q1jMPa5SsdkyiMhfI+bEqbj3n/8e75SzgIRiRtFVUVIyxZMC7QVMNBRhihfFT/TIjjSaEy8yoWNNdGEtCjFrqPWiqmto4Z2zg/W1HvTIRn90QXfkR120DiAIL3ahp2S9fPVP92tN8f/yd37pyCfixS/oEG3GRrXov6SVXls5eIRBXL1VodnSb3fPxXy0nDgVd3yhHCAn5j5sQL/GthrbA5AsKSZNe/fYb2u+qCbWGjdN63yeBzonzvPbGriqsW0gse+CtgYK59hbTaw1bJLW8WE80DnxMH68RinV2DaQNJAsesRVTaxr3BSt0+N4oHPicfx6DVKrsW0gaSBpILmGHbtiHarFZsUmblb1amz7N9uTPxKQ8/psH3QOdA50DjzZ9W+2993GoruNyncm2lh9tAfcA50T7o2x+tXY9qOtBptFYFNNrLG2U1sz54HOiTnvrHuuGtsGkgaSBpJ17/WLa18tNhdXtBVY7IFqbBtIGkgaSBZvr2ZwD1SLjfN0fx0eqMa2gaSBpIFkHXv6arWsFpurNaAVm/RANbYNJA0kDSST2yif0Pu1tME4514tn0sYa7RabNZutb8SZSvvV6vGtoGkgaSBZEGF03uYVETU9nHrgWqxWbO/4ksc9WFC5+hHNbYHINGLAcXkJy8S5EV/PsdLB3kxoc+pDy8vJfR5XigILy8lVItc/SkqL0pE1pyO/OkqLy10OZpjLX9ZoeRNvYARHZELv49n/NCjh9uNHaLJfIps7HZe9ZnXuvQlC3qXjx4P3UqPLR96UeOLFy92epV4H7ceGD0nstfGx7f/jpoL1dgeAYkXJy+SKnqx4FKgKLBeoJ0eIKHIcS0aeLWW5Kn1ghkLZFZAI2AgX3JcJ9byMbcRezQv3igXfpeb8UsOIOL+jLZoHfcp8l2/bAw/zcnGlsdoZf+WDxWQZ8+eHT5wbf2xlnJhiznRdyTHVWASSFT4KKax6HmByoqd81LYNSY+iqyKMLzqa06tklKn6HXSZ94LaOSHRgVadBmtF+oIBMgTn2Q4LXPSBwCI/FpfZ9SbcdGjU/Sp+wV61nQ9NOdy5tZDzkO2sn/LR3zEIWDZOphsKSf4nmTU18bHvV2N7SSQeJFUIZNAPymIWbFz3ggkXEsmvKKnQP78135up1Pyf+13fmUWSCi+URfJUzEHCCWbtdwG9QEF0TgASAZynf8b3/z6Xq70dztFw6k5l5uNRxr3C/ToLFrG1EbdXG+ne4y+fNbHsQe28un02Oq7qy3mhB5x3tzc7H+T5s4T4/WqsT0CEjH5qQKlYhSLnhcoip3zeQGnQPo8BRpeFUbJpEACIF/9hZ9dBCQOHlE2116UIxCwvgAqFmfnF51s/PJXvnQSMNxX7kf13SfqS67T+5o+7npqPOrqtA/dl559HHtAn1K38MXrsdV3V1vMiex7kzuPjNOrxvYISCjwsfh4AYxzsdipyPmncYAEUHJ+eCmgFEiNSxcZoRNe5lXoJYc7EueHhxZdWGsKSJiHjxbZzIsfm0SDfLdrqrC7/u5T5LlukudrunyXo3Gt5+DttA/dl81bPaaKh0BEYLLVY/Sc4BcT9RiTYyoXmB+lrcb2wYGE4gcoUSQBAy9s0FKsvUDCJ0Pg9flYQKH3YuwFnbV8XvIAAo3HYuzzkV/00g1+twuA8znXRbTi93nkYato4pqsEXWNsqB7jLaaWKNspGhH9h3JVp6XR19wvYWcUNz9/47EPMAXo7XV2JaBRALjqaKXFTuKpgocBd4LJAUOXhVsjUWg0LXWhJdr14O5WFwlz+XTFx3rS56K+e/98Lf2d0CAH/PYoTbyc+1gAJ9awCTTVfOx+EPv8ljDdWaN6Av8wPxjtbJn64eKCHHd+hftyoWt5ITuPIn7Vj48VGN7AJLHKjwt9+5L+BF8UU2srYPNluzvnBg32tXYNpDYX1uNUOgf24ZqYo27tdqy6IHOieiRca6rsW0gaSA5POqrgFA1scbZSm3JKQ90Tpzy0Hrnq7FtIGkgaSBZ7z6/Cs2rxeYqlG0lFnmgGtv+zfbkjwjkvD7bB50DnQOdA/2b7Ys+aVce6zTN9zfzFzqLPrZtnFjFto8xPVCNbT/a6kdbiwC3mlhjbqu2KvNA50TmlTHGqrFtIGkgaSAZY89fzIpqsbmYgr3w2R6oxraBpIGkgeTsbdaM8kC12LS31ueBamwbSBpIGkjWt7+vSuNqsbkqpVuZkgeqsW0gaSBpICltqd1OL+3z9y3BtsVXZ2C72mqxcZ419v3VOLLZX+K4RnsqOldj20DSQNJAUthRKhraVBFIBCI+Fl/uVxC9epJqsVmzoYq/v1etf4/kOJpHQMKLA+NbcPVnr3pJoI/7Cw35s9gp/vjyQeiUgFMvG4wvJdQ168QXHvJiSF5uqFay/fQXMp7iZ51u778nbAtFw7cIrxBXEdFvtTtoMOefTDX2/Pnz4X/wyH00ek5s5ZXxHlP61dgeAQkFWcwUZYophZ2CnAHJFH8EEmRlIALI+FtwkYtOp4Agzsf143yUj83dNpAIGF6/fr3fV5W7ja18UqXQqK0WG+dZU3+LMSU+1dgeAYkKvAq4wALAoJhS/CVYAJAByRS/F3IV8QyoWCeTyxztKSCI84CT9JOMON9Ach8w8HVsq4lFIo7UVoBEj7p0bukYPScEJLrL5PGW7PXHXCPHuhrbA5BQ7FVsVcz9MZaKicbnfk99jp85fjo3gpQXq1jkfY5+pIlA8KbzrNPtfYCpJtaIm+sUkAhAtvI7FR7f0XNCQCLg8MeagIrmRj6qsT0AiYMHhZ9P8Cqo6gsApn5PfY4feVKKU8U+K9QadxDTNTwAUAUo4KF1W07xZ3r12C2oyJ9bPeaAZKsgolwYPSe4I9FjTo6tfG9Sje0BSFRoKbq0/j0FQCJQUEGHRgAC0DBGCz9AIj74HSy8SEue+JGrOR5NnQISeBwo4t2K5Pm8rqGB3/Xp/vFdiWKz1SMDEgqKf1rdmn9Gz4nsDyiIu3Ji5KMa2z2QUEhVYCmcsaADJCrq0FPwuZ7iB0iYhx5gYE21gAYgpLFIH3XTtQNTBApdo6vkneJ3fbrfQEKhyIBEdyJbBhH5plps8OMa2xj7frR1HMU9kKjQeiFW8aT480jIgUTzuqY4n+JHlugozBR3H2PO5WsNnQ4smoefeZejvtNn4DTH73p0v4GELROLCc/OyUFv/U+C4R+1ld1bOBR/Ytxfth9H/PBoqwvmccFsf+T+2ErRON4mfTXngc6JOe+se64a2waS/p/th7vECnhWE2vd26e1X+KBzokl3loXbTW2DSQNJA0k69rbV6dttdhcneKt0EkPVGPbQNJA0kBycjs1wZwHqsVmTkbPXacHqrHt32y3/9sip/XZPugc6BzoHLjLgR9/8snu1Pnk//2XL+76bB9Uc0AbrI/2gHugc8K9MVa/GtsGkgbSRR8kqok11nZqa+Y80Dkx5511z1Vj20DSQNJAsu69fnHtq8Xm4oq2Aos9UI1tA0kDSQPJ4u3VDO6BarFxnu6vwwPV2DaQNJA0kKxjT1+tltVic7UGtGKTHqjGNgWS//uHX9z9vb/++d2X/szndv/zd7+w+z//+Yu7m5/53P5Uny9mIx3XWlznv/9nXzjQIkPjyJVs9bWWeJGbtdCK/1/8nc/fo9VacU3J+a//+nY848nW6bH5OMjHox96SZ9eBy9bdcbXnfirMrLXxp+aH81/o+WE4j33/jTyI+aF3rtGzszxryn+1dg+KpB48aagS7FzgASgEL9AzQFNxZ95B68GknlQOAc0q4m1ps3iulIkBAY69D6tm5ubw0/natzfsxRfMa7i4uAi+lGKivvJ+yPlhOIne+ZiBmA4kMSfEdDcnAz33zX3q7F9VCDxgi9QkVI6lwIJdzOSp7sXyRAweSFsIHl40HD/0q8m1jVvjjndIhD468K97zJURAQY2Xz2CnLnHaE/Qk7wAUIfEl68eDEJAgCEPiwAJPByrZiSCz62xlhXY/soQCKg+Me/eFfweeT17C9/bqdzKZBwNyMw8j7FTW0DSQPJY2xUvyOZKg4CEp1zBYU7nMfQ8dIyq8Xm0nrOra/YvX79ek8ydRcpGt1l/OhHP9rfdQISGtdP8SpXOMiVtce9GttHA5L/9PL2+w8VeL7f+K1/9Pmj714YP/UdCXczAhG/O/HHWwCJDM9Of8zmANT9ZQBUTSw21FpbQEH2ejFQ3x9dqXjoUyxAEguK7OeOZa2+OKX3aDkxBSQa10luACTE2B9laS7mzik/XuN8NbaPBiQq+jyKEoBIoT/+9S8sBpIMOBxYAIIGkmWAgN+WttXEusZNca5O3HHAr2v5QaeKx6tXrxpIcM4AbQYk+sCgR16608iAhDsQ8oKckaw1H9X9vgcSHhepGKuw8CiKR1BZMc/oIp8KvmT81Z/+xdf//o/Hfw1WuSNBNwLkrd/JACTYQIGEv+9IHgZoqom15s0TddenS78LifPcccwVmLUXlGizX4+WExFIBBICER5dZXF2f6gPsPhdS6RZw3U1tkdAQmGOwAFASKgXaoo0X6pDBwBR3MUn2ZKrlvlTQII88WcncgQarOX6aRwdG0gaSCobNxYR8cwBiRcVioeDhuazx10VXdZCo7050hFzgMeXWQ3yWLsPxON/7edza+pXY7sHkqmC7cWXQp05EzrkUOABCvGIf24+yhXg/I9Xt9+zAFTcZajVmshtIHkYkHD/TvXl85EPBwbZyTUFIxYZ3Y3EZ+N+9xLpR/TdaDlxKmbkhN9t8ChL8eUDhcbWflRje/iOhLsQMerk7sQLCp/uoVHrdwARKE5dO9C4TNb/7X8y/Z8J0QU9ATrXR7pDB9i5Pd1fDkCKzehH/AQKiGC3CgT56qDBvOjn5qEbpR0tJ84BEsCDuPuHizXHuRrbA5B0UV1eVLfos2pirXnztO7LPNA5scxfa6KuxraBpN+1dfQfO0+BYzWx1rRZWtc380DnxJv575q5q7FtIGkgaSC55p28At2qxWYFprSKwQPV2DaQNJA0kITN05fLPFAtNsukNvU1eKAa2/7N9ok/LZYD+2wfdA50Dmw9B079Xrvmx/8TnGuA9YF0UNL00R5wD3ROuDfG6ldj20AyVtwf3ZpqYj26Ir3A1Xigc+JqQvHgilRj20Dy4K4fW2A1scb2QlvnHuiccG+M1a/GtoFkrLg/ujXVxHp0RXqBq/FA58TVhOLBFanGtoHkwV0/tsBqYo3thbbOPdA54d4Yq1+NbQPJWHF/dGuqifXoivQCV+OBzomrCcWDK1KNbQPJg7t+bIHVxBrbC22de6Bzwr0xVr8a2waSseL+6NZUE+vRFekFrsYDnRNXE4oHV6Qa2waSB3f92AKriTW2F9o690DnhHtjrH41tv8fAHSjENpRsocAAAAASUVORK5CYII=\"></p><p><br></p><p>Data diambil tanggal 08 Juni 2021 pukul 19:21 WIB</p><p>Verifikasi dilakukan hati hati dan berhatap</p><p><br></p><p>ALAMAT : Jalan Ir. H. Juanda No. 93, Kecamatan Coblong, Kota Bandung</p><p>WEBSITE : <a href=\"http://sman1bdg.sch.id\" target=\"blank\">http://sman1bdg.sch.id/</a>/</p><p>HEPLDESK : 082130082193</p></div>'),
(2, 'sma2bdg@gmail.com', 'SMA Negeri 2 Bandung', '20219254', 'JL. CIHAMPELAS NO. 173, CIPAGANTI', 'Coblong', '0222032462', 'http://sman2bdg.sch.id/', 'A', 50, 'SMA Negeri 2 Bandung merupakan salah satu sekolah menengah atas berwawasan lingkungan dan berstandar nasional yang berada di Kota Bandung, Jawa Barat, Indonesia. SMA Negeri 2 Bandung memiliki luas tanah kurang lebih seluas 2,1 hektar dan merupakan sekolah terluas di kota Bandung. 60% dari luas tanah ini merupakan ruang terbuka hijau.Sekolah SMAN 2 Bandung sudah mendapatkan banyak piala penghargaan mulai dari tingkat nasional maupun internasional di berbagai bidang seperti Futsal, Basket, Cerdas cermat, penghargaan sekolah bersih dan masih banyak lainnya.'),
(3, 'sma3bdg@gmail.com', 'SMA Negeri 3 Bandung', '20219327', 'JL. BELITUNG NO. 8, MERDEKA', 'Sumur Bandung', '0224235154', 'https://sman3bdg.sch.id/', 'B', 50, 'SMA Negeri 3 Bandung tanggap dengan perkembangan teknologi tersebut. Dengan dukungan Sumber Daya Manusia yang dimiliki sekolah ini siap untuk berkompetisi dengan sekolah lain dalam pelayanan informasi publik. Teknologi Informasi Web khususnya, menjadi sarana bagi SMA Negeri 3 Bandung untuk memberi pelayanan informasi secara cepat, jelas, dan akuntable. Dari layanan ini pula, sekolah siap menerima saran dari semua pihak yang akhirnya dapat menjawab Kebutuhan masyarakat.'),
(4, 'sma4bdg@gmail.com', 'SMA Negeri 4 Bandung', '20219312', 'JL. GARDUJATI NO. 20, KEBON JERUK', 'Andir', '02220512133', 'https://sman4bdg.sch.id/web2/', 'A', 40, 'SMA Negeri 4 Bandung, merupakan salah satu Sekolah Menengah Atas Negeri unggulan yang ada di Provinsi Jawa Barat, Indonesia. Sama dengan SMA pada umumnya di Indonesia masa pendidikan sekolah di SMAN 4 Bandung ditempuh dalam waktu tiga tahun pelajaran, mulai dari Kelas X sampai Kelas XII.'),
(5, 'sma5bdg@gmail.com', 'SMA Negeri 5 Bandung', '20219309', 'JL. BELITUNG NO 8, MERDEKA', 'Sumur Bandung', '0224206921', 'https://www.sman5bdg.sch.id/', 'B', 30, 'SMA Negeri 5 Bandung, merupakan salah satu Sekolah Menengah Atas Negeri yang ada di Provinsi Jawa Barat, Indonesia. Sama dengan SMA pada umumnya di Indonesia masa pendidikan sekolah di SMAN 5 Bandung ditempuh dalam waktu tiga tahun pelajaran, mulai dari Kelas X sampai Kelas XII. Didirikan pada tahun 1951.'),
(6, 'sma6bdg@gmail.com', 'SMA Negeri 6 Bandung', '20219306', 'JL. PASIR KALIKI NO. 51, ARJUNA', 'Cicendo', '0226027149', 'https://sman6bandung.sch.id/', 'A', 60, '<div><h1><strong>SMAN 6 Bandung</strong></h1><h2><br></h2><h2><strong>VISI</strong></h2><p class=\"ql-align-center\"><strong>” Terwujudnya Sekolah&nbsp;Unggul, Inovatif,&nbsp;Berkarakter, Beretos Kerja, Berbudaya Menuju Kebahagian Lahir dan Batin Tahun 2024\"</strong></p><p class=\"ql-align-center\"><br></p><h2><strong>MISI</strong></h2><p>1.<span style=\"color: black;\">Meningkatkan layanan pendidikan yang prima baik akademik dan non akademik</span></p><p>2.<span style=\"color: black;\">Meningkatkan pola pikir inovatif yang dapat melahirkan karya produktif</span></p><p>3.<span style=\"color: black;\">Meningkatkan kehidupan berkarakter, berkepribadian, Religius, cerdas, intelek, empati, bertanggung jawab, jujur, disiplin, mandiri, demokratis, cinta tanah air, gotong royong </span></p><p>4.<span style=\"color: black;\">Menjalankan amanah dengan penuh rasa tanggungjawab dan berbudi pekerti luhur</span></p><p>5.<span style=\"color: black;\">Meningkatkan semangat kerja yang tinggi bagi pendidik dan tenaga kependidikan</span></p><p>6.<span style=\"color: black;\">Membudayakan silih asah, asih, asuh antar warga sekolah</span></p><p>7.<span style=\"color: black;\">Menjadikan suasana sekolah yang aman nyaman, tentram dan ramah lingkungan</span></p><p>8.<span style=\"color: black;\">Meningkatkan produktivitas bekerja yang dapat melahirkan budaya</span></p><p>9.<span style=\"color: black;\">Melengkapi sarana/prasarana sekolah&nbsp;yang berdimensi&nbsp;kekinian</span></p><p>10.<span style=\"color: black;\">Meningkatkan&nbsp;penerapan teknologi sebagai basis&nbsp;layanan&nbsp;pendidikan dan&nbsp;pembelajaran yang berwawasan global untuk memfasilitasi warga sekolah berdaya saing&nbsp;nasional maupun internasional.</span></p><p>11.<span style=\"color: black;\">Meningkatkan kesalehan diri dan kesalehan sosial untuk meraih kebahagiaan lahir dan batin.&nbsp;</span></p><p><br></p><h2><strong>Nomor Hotline</strong></h2><p>Bu Yayah Haryati, S.Pd : +62 812-2123-051 (WA/Telp)</p><p><br></p><h2><strong>Media Sosial SMAN 6 Bandung</strong></h2><p>Instagram : https://www.instagram.com/sman6bdg/</p><p>Youtube : https://www.youtube.com/channel/UCEYhLmxY4NRHtGC-fFYLCqA</p><p>Website : <a href=\"https://sman6bandung.sch.id/\" rel=\"noopener noreferrer\" target=\"_blank\">Home - SMA Negeri 6 Bandung (sman6bandung.sch.id)</a></p><p><br></p><p><strong>INFORMASI LENGKAP PPDB SMAN6BDG</strong></p><p><strong>BISA DILIHAT PADA LINK BERIKUT</strong></p><p><br></p><p><strong>???????? </strong><a href=\"https://smanegeri6bdg.wixsite.com/ppdb\" rel=\"noopener noreferrer\" target=\"_blank\"><strong>KLIK DISINI</strong></a><strong> ????????</strong></p></div>'),
(7, 'sma7bdg@gmail.com', 'SMA Negeri 7 Bandung', '20219316', 'JL. LENGKONG KECIL NO. 53, PALEDANG', 'Lengkong', '022-4239947', 'https://sman7bandung.sch.id/', 'A', 60, 'SMA Negeri 7 Bandung, merupakan salah satu Sekolah Menengah Atas Negeri favorite yang ada di Kota Bandung, Provinsi Jawa Barat.'),
(8, 'sma8bdg@gmail.com', 'SMA Negeri 8 Bandung', '20219326', 'JL. SOLONTONGAN NO. 3, TURANGGA', 'Lengkong', '0227304542', 'https://sman8bdg.sch.id/home', 'A', 70, 'SMA Negeri 8 Bandung, merupakan salah satu Sekolah Menengah Atas Negeri di Kota Bandung, beralamat di Jl. Solontongan No.3, Kelurahan Turangga, Kecamatan Lengkong, Kota Bandung, Jawa Barat'),
(9, 'sma9bdg@gmail.com', 'SMA Negeri 9 Bandung', '20219324', 'JL. LMU I SUPARMIN NO. I A BANDUNG, PAJAJARAN', 'Cicendo', '0226123806', 'https://sman9bdg.sch.id/web/', 'B', 80, 'SMA Negeri 9 Bandung, merupakan salah satu Sekolah Menengah Atas Negeri yang ada di Provinsi Jawa Barat, Indonesia. Sama dengan SMA pada umumnya di Indonesia masa pendidikan sekolah di SMAN 9 Bandung ditempuh dalam waktu tiga tahun pelajaran, mulai dari Kelas X sampai Kelas XII. Didirikan pada tahun 1957.'),
(10, 'sma10bdg@gmail.com', 'SMA Negeri 10 Bandung', '20219257', 'JL. CIKUTRA NO. 77, CIKUTRA', 'Cibeunying Kidul', '0227273109', 'https://www.sman10bdg.sch.id/', 'A', 50, '<div><h4>Visi dan Misi Serta Strategi SMAN 10 Bandung</h4><p><strong>A. VISI&nbsp;</strong></p><p>Mewujudkan insan berakhlaq mulia, kompeten dan kopetitif dalam era global melalui sekolah berwawasan lingkungan.</p><p><strong>B. MISI</strong></p><ul><li>Mewujudkan insan yang memiliki keimanan dan ketakwaan yang direfleksikan dalam sikap dan perbuatan sehari-hari.</li><li>Membekali peserta didik agar memiliki kompetensi dalam berbagai disiplin ilmu (akademik) dan non akademik melalui PBM yang efektif.</li><li>Membekali peserta didik untuk mengembangkan minat dan bakat, kreativitas serta keterampilan agar terbentuk kemandirian dalam menghadapi peluang dan tantangan global.</li><li>Menerapkan managemen sekolah menuju terbentuknya sekolah berwawasan lingkungan.</li></ul><p><strong>C. STRATEGI</strong></p><p>Meningkatkan kualitas keimanan dan ketaqwaan sehingga tercipta warga sekolah yang shaleh dalam lingkungan yang religius, dengan cara :</p><ul><li>Membangun pola pikir dan pola tindakan yang positif dan konstruktif, santun bertutur, dan sopan bertindak.</li><li>Membangun kesadaran tentang hak dan kewajiban.</li><li>Mengoptimalkan proses pembelajaran pendidikan agama.</li><li>Mengintegrasikan IMTAQ dalam kegiatan kurikuler dan ekstrakurikuler.</li><li>Membaca ayat suci sebelum jam pelajaran pertama.</li><li>Menyelenggarakan shalat jum\'at di sekolah.</li><li>Melaksanakan shalat zhuhur berjema\'ah di sekolah</li><li>Menyelenggarakan peringatan hari besar keagamaan</li></ul><p><br></p><p>Daftar Eskul di SMAN 10 Bandug</p><ol><li>ANGKLUNG</li><li>BADMINTON</li><li>BASKET</li><li>BENGSAS X</li><li>D\'TECH X</li><li>DAKAR</li><li>DISTINC UNIT</li><li>FUTSAL</li><li>IRMA LUQMAN</li><li>KARATE X</li><li>KIR</li><li>LENS-X</li><li>LISES</li><li>MADING</li><li>NASYID</li><li>NIHON KAI</li><li>PADUAN SUARA SAHWAHITA</li><li>PASKIBRA</li><li>PMR</li><li>PPSK</li><li>PRAMUKA PUTRA</li><li>PRAMUKA PUTRI</li><li>SENI RUPA</li><li>STENCER CHEERLEADER</li><li>TAEKWONDO</li><li>TINJU</li><li>SEPAK BOLA</li><li>PENCAK SILAT</li><li>VOLLEY BALL</li></ol></div>'),
(11, 'sma11bdg@gmail.com', 'SMA Negeri 11 Bandung', '20219243', 'JL. KEMBAR BARU NO.23 BANDUNG, CIGERELENG', 'Regol', '0225201102', 'http://sman11bdg.sch.id/', 'A', 60, '<div><p><strong>Informasi PPDB SMAN 11 Bandung</strong></p><p><strong>Visi</strong> adalah cara memandang yang komprehensif, mendalam dan jauh ke depan, serta melebihi batas ruang, tempat, dan waktu. Visi sekolah merupakan atribut Kepala Sekolah, yang dalam proses perumusannya dilakukan secara bersama-sama antara Manajemen Sekolah dangan Komite Sekolah (sebagai perwakilan Orangtua Siswa) Kepala sekolah dengan visi yang dangkal serta tidak jelas akan membawa kemunduran bagi sekolah yang dikelolanya, visi yang sempit akan menghasilkan sekolah yang jelek sehingga tidak akan disenangi masyarakat.</p><p>Ciri-ciri visi sekolah yang utuh harus dilandasi dengan :</p><ol><li>Norma agama, norma hukum, dan norma-norma kemasyarakatan;</li><li>Niat yang baik dan ikhlas, tidak berambisi pada imbalan materi dan penghasilan dari pekerjaannya;</li><li>Keyakinan bahwa bekerja untuk kepentingan pendidikan adalah panggilan jiwanya,</li><li>Keinginan untuk memajukan sekolah;</li></ol><p>Visi suatu sekolah dipengaruhi oleh latar belakang sosial orang-orang yang merumuskannya, antara lain :</p><ol><li>Pengalaman hidup;</li><li>Pendidikan dan pelatihan;</li><li>Pengalaman professional;</li><li>Interaksi dan</li></ol><p>Idealnya visi sekolah yang diharapkan oleh pemerintah, orangtua, dan masyarakat adalah visi yang sesuai dengan tuntutan zaman, yaitu sekolah yang mampu menghasilkan manusia yang berkualitas dan unggul serta mampu bersaing di percaturan dunia global.</p><p><strong style=\"background-color: transparent;\">VISI</strong></p><p><strong style=\"background-color: transparent;\">Menjadi SMAN Terdepan Pada Tahun 2024 di Bidang Logika, Praktika, Etika Dan Estetika Dalam Skala Regional dan Nasional.</strong></p><p><br></p><p><strong>Misi</strong> merupakan penjabaran dari suatu visi. Misi adalah target atau sasaran yang ingin dicapai setelah suatu kegiatan dilaksanakan berdasarkan rambu-rambu yang ditentukan. Perumusan misi sekolah harus didasarkan pada kompetensi sekolah, yang mencakup kompetensi siswa, guru, kepala sekolah, tata usaha dan para stakeholder, serta infra struktur yang dapat menunjang terhadap peningkatan kualitas pendidikan.</p><p>Sesuai visi yang didasarkan pada kompetensi dari berbagai komponen yang dimiliki, rumusan misi SMA Negeri 11 Bandung adalah :  “<strong style=\"background-color: transparent;\">ALIMAN, SHOLIHAN, MUJAHIDAN”</strong></p><p><strong style=\"background-color: transparent;\"><em>ALIMAN</em>,</strong>        artinya menguasai ilmu pengetahuan, teknologi, dan keterampilan. Setiap insan SMA Negeri 11 Bandung dituntut untuk senantiasa belajar guna menambah penguasaan pengetahuan dan teknologi, keterampilan, wawasan lingkungan, dan hidup sehat.</p><p><strong style=\"background-color: transparent;\"><em>SHOLIHAN</em>,</strong>    artinya berbudi pekerti luhur, patuh melaksanakan perintah agama, terciptanya budaya disiplin, dan tertib. Sejalan dengan upaya peningkatan intelectual quality melalui proses pembelajaran, kepribadian civitas akademica SMA Negeri 11 Bandung pun dibimbing melalui peningkatan keimanan dan ketaqwaan terhadap Tuhan Yang Maha Esa (IMTAQ).</p><p><strong style=\"background-color: transparent;\"><em>MUJAHIDAN,</em></strong>  artinya memiliki daya saing yang tinggi atau mampu berkompetisi dengan siswa lain, semangat menuntut ilmu, dan melaksanakan setiap aspek yang tanggung jawab/ kewajibannya dalam menciptakan lingkungan yang seimbang dan teratur.</p><p>Seperti hanya visi, rumusan misi SMA Negeri 11 Bandung juga didasarkan pada Al Qur’an :</p><ol><li>Surat Luqman ayat 17, yang artinya :</li></ol><p><em style=\"background-color: transparent;\">“ Hai anakku, dirikanlah sholat dan suruhlah (manusia) mengerjakan yang baik dan cegahlah (mereka) dari perbuatan yang munkar dan bersabarlah terhadap apa yang menimpa kamu. Seseungguhnya yang demikian itu termasuk hal-hal yang diwajibkan (oleh Alloh).”</em></p><ol><li>Surat Ibrahim ayat 23, yang artinya :</li></ol><p><em style=\"background-color: transparent;\">“ Dan masukkanlah orang-orang yang beriman dan beramal sholeh ke dalam surga yang mengalir di bawahnya sungai-sungai, mereka kekal di dalamnya dengan seizin Tuhan mereka. Ucapan penghormatan mereka dalam surga itu ialah salam.”</em></p><p>Setelah melalui proses pembelajaran serta peningkatanan keimanan dan ketaqwaan terahadap Tuhan Yang Maha Esa, diharapkan memiliki daya juang guna membangun eksistensi diri dan pihak lain.</p><p><br></p></div>'),
(12, 'sma12bdg@gmail.com', 'SMA Negeri 12 Bandung', '20219241', 'Jl. Sekejati IV No. 36, SUKAPURA', 'Kiaracondong', '081210648258', 'https://www.sman12bandung.sch.id/', 'A', 20, 'SMA Negeri 12 Bandung adalah sekolah menengah atas yang berada di kota Bandung, Jawa Barat, Indonesia, dan berlokasi di Jl. Sekejati no 32 Kiaracondong, Bandung. sebelumnya bernama SMA Negeri 3 Petang Bandung yang beralamat di jalan Belitung no.8 Bandung.'),
(13, 'sma13bdg@gmail.com', 'SMA Negeri 13 Bandung', '20219240', 'JL. RAYA CIBEUREUM NO 52, CAMPAKA', 'Andir', '022-6011186', 'https://www.sman13bdg.sch.id/', 'B', 50, '<div><p>PERSYARATAN UMUM:</p><ol><li>Ijazah/Keterangan Kelulusan.</li><li>Akta Kelahiran.</li><li>Kartu Keluarga (Min. 1 tahun), KTP.</li><li>Buku Rapor (Semester 1 -5 &amp; Keterangan Rangking).</li><li>Surat Tanggung Jawab Mutlak Orang Tua.</li></ol><p><br></p><p>PERSYARATAN KHUSUS:</p><ol><li>Kartu Program Penanganan Kemiskinan (terdaftar pada DTKS DINSOS bagi Jalur afirmasi/KETM).</li><li>Surat Keterangan domisili dari RT/RW (bagi afirmasi korban bencana alam/sosial).</li><li>SUrat Tugas Orang Tua (bagi jalur perpindahan tugas ortu/wali, maksimal 3 tahun/anak guru) dan afirmasi kondisi tertentu penangan Covid-19.</li><li>Piagam dan dokumentasi Prestasi (untuk jalur prestasi kejuaraan) maksimal 3 tahun, minimal 6 bulan.</li></ol><p><br></p><p>KUOTA DI SMAN 13 BANDUNG:</p><ol><li>ZONASI (50%/178)</li><li>AFIRMASI (20%/71):</li><li class=\"ql-indent-1\">KETM</li><li class=\"ql-indent-1\">Disabilitas</li><li class=\"ql-indent-1\">Kondisi tertentu</li><li>PRESTASI (25%):</li><li class=\"ql-indent-1\">Nilai Rapor (53)</li><li class=\"ql-indent-1\">Perlombaan (36)</li><li>Perpindahan Tugas Orang Tua/Anak Guru (5%)</li></ol><p><br></p><p><br></p><p>JADWAL PENDAFTARAN TAHAP 1:</p><p>Tanggal 7 s.d. 11 Juni 2021, untuk Pendaftar dari Jalur:</p><ol><li>AFIRMASI</li><li>PRESTASI</li><li>Perpindaha Tugas Orang Tua</li></ol><p><br></p><p>JADWAL PENDAFTARAN TAHAP 2:</p><p>Tanggal 25 Juni s.d. 1 Juli 2021, untuk Pendaftar dari Jalur Zonasi.</p><p><br></p><p><br></p><p><br></p><p>TATA CARA PENDAFTARAN:</p><ol><li>Pendaftaran bisa dilakukan mandiri secara daring dan sebelumnya sudah memiliki akun pendaftar dari sekolah asal;</li><li>Bisa dilakukan oleh operator sekolah asal;</li><li>Sekolah tujuan (Jika tidak ada jaringan);</li></ol><p><br></p><p><br></p><p>UNTUK INFORMASI LEBIH LANJUT DAPAT DILIHAT:</p><p>WEBSITE 	: www.sman13bdg.sch.id</p><p>					: https://disdik.jabarprov.go.id</p><p>					: https://ppdb.disdik.jabarprov.go.id</p><p>WHATSAPP : 0813-2159-4303</p></div>'),
(14, 'sma14bdg@gmail.com', 'SMA Negeri 14 Bandung', '20219239', 'JL. YUDHAWASTU PRAMUKA IV BANDUNG, CICADAS', 'Cibeunying Kidul', '0227202744', 'http://www.sman14bdg.sch.id/', 'A', 40, '<div><h1><strong class=\"ql-font-monospace\">SELAMAT DATANG DI INFORMASI PPDB SMA NEGERI 14 BANDUNG</strong></h1><p><br></p><h2><strong class=\"ql-font-monospace\">PROFIL</strong></h2><p><br></p><iframe class=\"ql-video\" frameborder=\"0\" allowfullscreen=\"true\" src=\"https://www.youtube.com/embed/Y0Vm1otkmDE?showinfo=0\"></iframe><p><br></p><h2><strong class=\"ql-font-monospace\">VISI</strong></h2><p><br></p><h2><strong class=\"ql-font-monospace\"><em>\" Terwujudnya insan yang Religius, Disiplin, Cerdas dan Peduli Lingkungan \"</em></strong></h2><p><br></p><p class=\"ql-align-justify\"><strong class=\"ql-font-monospace\"><u>Indikator Visi:</u></strong></p><p class=\"ql-align-justify\"><span class=\"ql-font-monospace\">(1)&nbsp;&nbsp;</span><strong class=\"ql-font-monospace\">Religius</strong><span class=\"ql-font-monospace\"> adalah mereka yang berakhlak mulia, beretika, toleran, serta memiliki kecerdasan emosional dan spriritual.</span></p><p class=\"ql-align-justify\"><span class=\"ql-font-monospace\">(2)&nbsp;&nbsp;</span><strong class=\"ql-font-monospace\">Disiplin</strong><span class=\"ql-font-monospace\"> adalah mereka yang taat dan patuh pada peraturan yang berlaku.</span></p><p class=\"ql-align-justify\"><span class=\"ql-font-monospace\">(3)&nbsp;&nbsp;</span><strong class=\"ql-font-monospace\">Cerdas</strong><span class=\"ql-font-monospace\"> adalah mereka yang memiliki keunggulan, kritis, mandiri, kreatif dan inovatif.</span></p><p><strong class=\"ql-font-monospace\">(4) Peduli Lingkungan</strong><span class=\"ql-font-monospace\"> adalah mereka yang memiliki kepedulian dalam memelihara dan menjaga kelestarian lingkungan yang berkaitan dengan Kebersihan, Ketertiban, Keindahan, Kenyamanan, Kekeluargaan, Kesehatan dan Kerindangan (K7) di lingkungannya.</span></p><h2><br></h2><h2><strong class=\"ql-font-monospace\">MISI</strong></h2><p><br></p><p class=\"ql-align-justify\"><span class=\"ql-font-monospace\">(1)&nbsp;&nbsp;Menanamkan keimanan dan ketaqwaan melalui pengamalan ajaran agama.</span></p><p class=\"ql-align-justify\"><span class=\"ql-font-monospace\">(2)&nbsp;&nbsp;Menumbuhkan kesadaran dan kemandirian diri melalui GDS (Gerakan Disiplin Sekolah).</span></p><p class=\"ql-align-justify\"><span class=\"ql-font-monospace\">(3)&nbsp;&nbsp;Mengembangkan potensi diri dan prestasi akademik maupun non akademik peserta didik serta terbentuknya peserta didik yang kreatif, inovatif dan terampil.</span></p><p><span class=\"ql-font-monospace\">(4) Memelihara dan menjaga kelestarian lingkungan melalui gerakan Kebersihan, Ketertiban, Keindahan, Kenyamanan, Kekeluargaan, Kesehatan dan Kerindangan (K7).</span></p><p><br></p><h2><strong>NOMOR HOTLINE</strong></h2><p><br></p><p><strong>0878-2882-0145</strong> dan <strong>0878-2882-0147</strong></p><p><br></p><h2><strong class=\"ql-font-monospace\">MEDIA SOSIAL</strong></h2><p><br></p><p><span class=\"ql-font-monospace\">Instagram : </span><a href=\"https://instagram.com/sman14_bandung/\" rel=\"noopener noreferrer\" target=\"_blank\" class=\"ql-font-monospace\">https://instagram.com/sman14_bandung/</a></p><p><span class=\"ql-font-monospace\">Youtube : </span><a href=\"https://www.youtube.com/channel/UCxlxtKvF8RmgpGckLDVwYgg\" rel=\"noopener noreferrer\" target=\"_blank\" class=\"ql-font-monospace\">https://www.youtube.com/channel/UCxlxtKvF8RmgpGckLDVwYgg</a></p><p><br></p><p><span class=\"ql-font-monospace\">Website : </span><a href=\"http://www.sman14bdg.sch.id/\" rel=\"noopener noreferrer\" target=\"_blank\" class=\"ql-font-monospace\">http://www.sman14bdg.sch.id/</a></p></div>');
INSERT INTO `data_sekolah` (`id`, `email`, `nama`, `npsn`, `alamat`, `kecamatan`, `telepon`, `website`, `akreditasi`, `kuota`, `deskripsi`) VALUES
(15, 'sma15bdg@gmail.com', 'SMA Negeri 15 Bandung', '20219238', 'JL. SARIMANIS NO. 01 SARIJADI BANDUNG, SARIJADI', 'Sukasari', '0222011975', 'https://sman15bdg.sch.id/', 'A', 90, '<div><h1><strong>Profil SMAN 15 Bandung</strong></h1><p><br></p><iframe class=\"ql-video\" frameborder=\"0\" allowfullscreen=\"true\" src=\"https://www.youtube.com/embed/HEEJ3Y9lXIQ?showinfo=0\"></iframe><h1><br></h1><h1><strong>Visi dan Misi</strong></h1><p><br></p><p class=\"ql-align-justify\"><strong>Visi&nbsp;&nbsp;</strong>: UNGGUL DAN SELARAS DALAM SPIRITUAL, INTELEKTUAL, EMOSIONAL, HIDUP SEHAT DAN BERBUDAYA LINGKUNGAN DENGAN BERBASIS TEKNOLOGI</p><p class=\"ql-align-justify\"><strong>Misi&nbsp;</strong>:&nbsp;<strong>“ A S I K “</strong></p><ul><li class=\"ql-align-justify\"><strong>AKTIF&nbsp;</strong>dan KREATIF meningkatkan kompetensi diri baik guru, siswa dan karyawan melalui pelatihan, seminar, diklat, lokakarya yang berkaitan dengan peningkatan intelegensia, spititual maupun emosional sesuai dengan bakat, minat, kemampuan dan keterampilan.</li><li class=\"ql-align-justify\"><strong>SELARAS&nbsp;</strong>dalam meningkatkan pengamalan ketaqwaan dan akhlak mulia berdasarkan nilai-nilai agama, rasa kebangsaan, budaya bangsa, berbudaya lingkungan</li><li class=\"ql-align-justify\"><strong>INOVATIF&nbsp;</strong>namun SELEKTIF dalam menghadapi dan menyikapi berbagai perubahan yang berhubungan dengan dunia pendidikan dan tantangan masa depan dengan menyelenggarakan kegiatan pembekalan keterampilan teknologi informasi dan berbudaya lingkungan</li><li class=\"ql-align-justify\"><strong>KOMUNIKATIF&nbsp;</strong>menjalin hubungan dengan berbagai pihak baik dengan guru, tata laksana, siswa, orang tua siswa, masyarakat dan pihak-pihak yang berkepentingan dengan pendidikan yang memberikan berbagai aspirasi maupun inspirasi bagi perkembangan pendidik.</li></ul><p><br></p><h1><strong>Ekstrakulikuler</strong></h1><p><br></p><p><span style=\"color: rgb(33, 37, 41);\">Untuk mengenal lebih jauh tentang ekstrakurikuler yang ada di SMAN 15 Bandung maka bisa dilihat di akun instagram ekskul sman 15 bandung dibawah ini:</span></p><p><span style=\"color: rgb(33, 37, 41);\">1. </span><strong style=\"color: rgb(33, 37, 41);\">Paslibels</strong><span style=\"color: rgb(33, 37, 41);\"> -</span> <a href=\"https://www.instagram.com/paslibels\" rel=\"noopener noreferrer\" target=\"_blank\">@paslibels</a></p><p><span style=\"color: rgb(33, 37, 41);\">2. </span><strong style=\"color: rgb(33, 37, 41);\">Pramuka</strong><span style=\"color: rgb(33, 37, 41);\"> - </span><a href=\"https://www.instagram.com/scout.libels\" rel=\"noopener noreferrer\" target=\"_blank\">@scout.libels</a></p><p><span style=\"color: rgb(33, 37, 41);\">3. </span><strong style=\"color: rgb(33, 37, 41);\">Handball</strong><span style=\"color: rgb(33, 37, 41);\"> - </span><a href=\"https://www.instagram.com/libelshandball\" rel=\"noopener noreferrer\" target=\"_blank\">@libelshandball</a></p><p><span style=\"color: rgb(33, 37, 41);\">4. </span><strong style=\"color: rgb(33, 37, 41);\">Badminton </strong><span style=\"color: rgb(33, 37, 41);\">-</span> <a href=\"https://www.instagram.com/badminton_libels\" rel=\"noopener noreferrer\" target=\"_blank\">@badminton_libels</a></p><p><span style=\"color: rgb(33, 37, 41);\">5. </span><strong style=\"color: rgb(33, 37, 41);\">Pekarisma </strong><span style=\"color: rgb(33, 37, 41);\">- </span><a href=\"https://www.instagram.com/pekarisma_libels\" rel=\"noopener noreferrer\" target=\"_blank\">@pekarisma_libels</a></p><p><span style=\"color: rgb(33, 37, 41);\">6. </span><strong style=\"color: rgb(33, 37, 41);\">Basket </strong><span style=\"color: rgb(33, 37, 41);\">- </span><a href=\"https://www.instagram.com/basketlibels\" rel=\"noopener noreferrer\" target=\"_blank\">@basketlibels</a></p><p><span style=\"color: rgb(33, 37, 41);\">7. </span><strong style=\"color: rgb(33, 37, 41);\">Softball </strong><span style=\"color: rgb(33, 37, 41);\">- </span><a href=\"https://www.instagram.com/fifteensoftball\" rel=\"noopener noreferrer\" target=\"_blank\">@fifteensoftball</a></p><p><span style=\"color: rgb(33, 37, 41);\">8. </span><strong style=\"color: rgb(33, 37, 41);\">Sepakbola </strong><span style=\"color: rgb(33, 37, 41);\">- </span><a href=\"https://www.instagram.com/footballfifteen\" rel=\"noopener noreferrer\" target=\"_blank\">@footballfifteen</a></p><p><span style=\"color: rgb(33, 37, 41);\">9. </span><strong style=\"color: rgb(33, 37, 41);\">Angklung</strong><span style=\"color: rgb(33, 37, 41);\"> - </span><a href=\"https://www.instagram.com/alascha_15\" rel=\"noopener noreferrer\" target=\"_blank\">@alascha_15</a></p><p><span style=\"color: rgb(33, 37, 41);\">10. </span><strong style=\"color: rgb(33, 37, 41);\">Mading </strong><span style=\"color: rgb(33, 37, 41);\">- </span><a href=\"https://www.instagram.com/marbels.official15\" rel=\"noopener noreferrer\" target=\"_blank\">@marbels.official15</a></p><p><span style=\"color: rgb(33, 37, 41);\">11. </span><strong style=\"color: rgb(33, 37, 41);\">Remaja Masjid </strong><span style=\"color: rgb(33, 37, 41);\">-</span> <a href=\"https://www.instagram.com/ikrema15bdg\" rel=\"noopener noreferrer\" target=\"_blank\">@ikrema15bdg</a></p><p><span style=\"color: rgb(33, 37, 41);\">12. </span><strong style=\"color: rgb(33, 37, 41);\">Japanese Club </strong><span style=\"color: rgb(33, 37, 41);\">- </span><a href=\"https://www.instagram.com/libels_nk15\" rel=\"noopener noreferrer\" target=\"_blank\">@libels_nk15</a></p><p><span style=\"color: rgb(33, 37, 41);\">13. </span><strong style=\"color: rgb(33, 37, 41);\">Gepala </strong><span style=\"color: rgb(33, 37, 41);\">-</span> <a href=\"https://www.instagram.com/ppgprgepala\" rel=\"noopener noreferrer\" target=\"_blank\">@ppgprgepala</a></p><p><span style=\"color: rgb(33, 37, 41);\">14. </span><strong style=\"color: rgb(33, 37, 41);\">PMR </strong><span style=\"color: rgb(33, 37, 41);\">- </span><a href=\"https://www.instagram.com/pmr15bdg\" rel=\"noopener noreferrer\" target=\"_blank\">@pmr15bdg</a></p><p><span style=\"color: rgb(33, 37, 41);\">15. </span><strong style=\"color: rgb(33, 37, 41);\">Futsal </strong><span style=\"color: rgb(33, 37, 41);\">- </span><a href=\"https://www.instagram.com/futsalsman15bdg\" rel=\"noopener noreferrer\" target=\"_blank\">@futsalsman15bdg</a></p><p><span style=\"color: rgb(33, 37, 41);\">16. </span><strong style=\"color: rgb(33, 37, 41);\">IT </strong><span style=\"color: rgb(33, 37, 41);\">- </span><a href=\"https://www.instagram.com/tech4student.libels\" rel=\"noopener noreferrer\" target=\"_blank\">@tech4student.libels</a></p><p><span style=\"color: rgb(33, 37, 41);\">17. </span><strong style=\"color: rgb(33, 37, 41);\">Science Club </strong><span style=\"color: rgb(33, 37, 41);\">- </span><a href=\"https://www.instagram.com/scienceclub_15bdg\" rel=\"noopener noreferrer\" target=\"_blank\">@scienceclub_15bdg</a></p><p><span style=\"color: rgb(33, 37, 41);\">18. </span><strong style=\"color: rgb(33, 37, 41);\">Fokrisen</strong><strong>- </strong><a href=\"https://www.instagram.com/libelsactivity\" rel=\"noopener noreferrer\" target=\"_blank\">@libelsactivity</a></p><p><br></p><p><br></p><h1><strong>Nomor Hotline </strong></h1><p><br></p><p>Didi Nuradi (HP/WA) : 0813-2078-5834</p><p>Hana Juhana (HP/WA)	: 0815-7145-530</p><p><br></p><p><br></p><h1><strong>Media Sosial SMAN 15 Bandung</strong></h1><p><br></p><p>Facebook	: <a href=\"https://www.facebook.com/sman15bandung\" rel=\"noopener noreferrer\" target=\"_blank\">https://www.facebook.com/sman15bandung</a></p><p>Instagram	: <a href=\"https://www.instagram.com/sman15bdg\" rel=\"noopener noreferrer\" target=\"_blank\">https://www.instagram.com/sman15bdg</a></p><p>Youtube : <a href=\"https://www.youtube.com/user/sman15bdg\" rel=\"noopener noreferrer\" target=\"_blank\">https://www.youtube.com/user/sman15bdg</a></p><p><br></p><p>Website : <a href=\"https://sman15bdg.sch.id/\" rel=\"noopener noreferrer\" target=\"_blank\">https://sman15bdg.sch.id/</a></p></div>'),
(16, 'sma16bdg@gmail.com', 'SMA Negeri 16 Bandung', '20219237', 'JL. MEKARSARI NO. 81, BABAKAN SARI', 'Kiaracondong', '022-7102122', 'https://sman16bdg.sch.id/', 'A', 50, '<div><iframe class=\"ql-video\" frameborder=\"0\" allowfullscreen=\"true\" src=\"https://www.youtube.com/embed/s-aRglsfYbU?showinfo=0\"></iframe><p><br></p><p><span class=\"ql-size-large\" style=\"color: rgb(74, 74, 74);\">Informasi lebih lanjut tentang SMA Negeri 16 Bandung </span><a href=\"https://sman16bdg.sch.id/\" rel=\"noopener noreferrer\" target=\"_blank\" class=\"ql-size-large\" style=\"color: rgb(54, 54, 54);\"><strong><em>klik disini</em></strong></a></p><p><span class=\"ql-size-large\">Informasi POS PPDB</span><span class=\"ql-size-large\" style=\"color: rgb(74, 74, 74);\">&nbsp;SMA Negeri 16 Bandung</span><strong class=\"ql-size-large\" style=\"color: rgb(54, 54, 54);\"><em>&nbsp;</em></strong><a href=\"https://sman16bdg.sch.id/ppdb-2021/\" rel=\"noopener noreferrer\" target=\"_blank\" class=\"ql-size-large\" style=\"color: rgb(54, 54, 54);\"><strong><em>klik disini</em></strong></a></p><p><br></p><p><strong class=\"ql-size-large\" style=\"background-color: rgb(53, 152, 219); color: rgb(255, 255, 255);\"><em>CONTACT PERSON:</em></strong></p><p><span class=\"ql-size-large\" style=\"color: rgb(74, 74, 74);\">1. H. Ace Tarya Sudiah, M.Pd - WhatsApp (</span><a href=\"http://wa.me/6285317355296\" rel=\"noopener noreferrer\" target=\"_blank\" class=\"ql-size-large\" style=\"color: rgb(74, 74, 74);\">085317355296</a><span class=\"ql-size-large\" style=\"color: rgb(74, 74, 74);\">)</span></p><p><span class=\"ql-size-large\" style=\"color: rgb(74, 74, 74);\">2. Budi Afiyanto, S.Pd. - WhatsApp (</span><a href=\"http://wa.me/628562139042\" rel=\"noopener noreferrer\" target=\"_blank\" class=\"ql-size-large\" style=\"color: rgb(74, 74, 74);\">08562139042</a><span class=\"ql-size-large\" style=\"color: rgb(74, 74, 74);\">)</span></p><p><span class=\"ql-size-large\" style=\"color: rgb(74, 74, 74);\">3. Ayi Kamaludin, M.Pdi - WhatsApp (</span><a href=\"http://wa.me/6281322861053\" rel=\"noopener noreferrer\" target=\"_blank\" class=\"ql-size-large\" style=\"color: rgb(74, 74, 74);\">081322861053</a><span class=\"ql-size-large\" style=\"color: rgb(74, 74, 74);\">)</span></p><p><br></p><p><span class=\"ql-size-large\" style=\"background-color: rgb(153, 51, 255); color: rgb(255, 255, 255);\">Instagram</span><span class=\"ql-size-large\" style=\"color: rgb(74, 74, 74);\">&nbsp;: </span><a href=\"https://www.instagram.com/sman16bdg/\" rel=\"noopener noreferrer\" target=\"_blank\" class=\"ql-size-large\">@sman16bdg</a></p><p><span class=\"ql-size-large\" style=\"background-color: rgb(0, 102, 204); color: rgb(255, 255, 255);\">Website</span><span class=\"ql-size-large\" style=\"color: rgb(74, 74, 74);\">&nbsp;:&nbsp;</span><a href=\"https://sman16bdg.sch.id/\" rel=\"noopener noreferrer\" target=\"_blank\" class=\"ql-size-large\">sman16bdg.sch.id</a></p><p><span class=\"ql-size-large\" style=\"background-color: rgb(230, 0, 0); color: rgb(255, 255, 255);\">Youtube</span><span class=\"ql-size-large\" style=\"color: rgb(74, 74, 74);\">&nbsp;:&nbsp;</span><a href=\"https://www.youtube.com/channel/UCkkQkUwKm5utP8O1zWxdInQ\" rel=\"noopener noreferrer\" target=\"_blank\" class=\"ql-size-large\" style=\"color: rgb(3, 3, 3); background-color: rgb(249, 249, 249);\">SMAN 16 BANDUNG</a></p></div>'),
(17, 'sma17bdg@gmail.com', 'SMA Negeri 17 Bandung', '20219235', 'JL. Tujuhbelas Caringin, BABAKAN CIPARAY', 'Babakan Ciparay', '022-6078486', 'http://sman17bandung.sch.id/', 'A', 70, '<div><iframe class=\"ql-video\" frameborder=\"0\" allowfullscreen=\"true\" src=\"https://www.youtube.com/embed/HQFvJF9AMh4?showinfo=0\"></iframe><p class=\"ql-align-center\"><br></p><p>SMA Negeri (SMAN) 17 Bandung merupakan salah satu&nbsp;Sekolah Menengah Atas&nbsp;Negeri yang ada di&nbsp;Kota Bandung&nbsp;Provinsi&nbsp;Jawa Barat,&nbsp;Indonesia. Tepatnya berada di <em>Jl. Tujuhbelas Caringin, Babakan Ciparay</em>. Berdiri sejak tanggal 20 November 1984 berdasarkan Surat Keputusan Menteri Pendidikan dan Kebudayaan Republik Indonesia. Salah satu program unggulan SMAN 17 Bandung adalah <strong><em>Pendidikan Karakter</em></strong> dengan menerapkan <strong><em>5S (Senyum, Sapa, Salam, Sopan dan Santun)</em></strong>, serta adanya <strong><em>kegiatan keagamaan rutin Jum\'at</em></strong> <strong><em>Pagi (Jumpa)</em></strong> untuk civitas beragama Islam dan Non Islam juga <strong><em>kegiatan Literasi</em></strong>.</p><p><br></p><p><strong>VISI</strong></p><p><em>\"Menjadi Sekolah Menengah Atas Terbaik di Kota Bandung yang Berwawasan Lingkungan.\"</em></p><p><br></p><p><strong>MISI</strong></p><p>1. Membangun kultur sekolah yang Religius dan Berprestasi.</p><p>2. Meningkatkan kualitas Sumber Daya Manusia.</p><p>3. Meningkatkan Profesionalisme Pendidik dan Tenaga Kependidikan.</p><p>4. Memanfaatkan Ilmu Pengetahuan dan Teknologi (IPTEK) dalam Proses Pembelajaran.</p><p>5. Membentuk Karakter Peserta Didik melalui Nilai Seni dan Budaya.</p><p>6. Mewujudkan Sekolah Berwawasan Lingkungan.</p><p><br></p><p><strong>MOTO</strong></p><p><em>\"Cageur, Bageur, Bener, Pinter tur Singer\"</em></p><p><br></p><p><strong>AKREDITASI</strong></p><p>Tahun&nbsp;: 2017</p><p>No SK&nbsp;: 02.00/330/BAP-SM/XI/2017</p><p>Nilai Akhir&nbsp;: 93</p><p><strong><em>Peringkat&nbsp;: A</em></strong></p><p><br></p><p><br></p><p><strong>FASILITAS</strong></p><p>- Masjid</p><p>- Free Hotspot/Wi-fi</p><p>- Lapangan Basket</p><p>- Lapangan Futsal</p><p>- Ruang Kelas</p><p>- Ruang Bimbingan Konseling (BK)</p><p>- Unit Kesehatan Sekolah (UKS)</p><p>- Studio Pembelajaran</p><p>- Perpustakaan</p><p>- Laboratorium Biologi</p><p>- Laboratorium Fisika</p><p>- Laboratorium Kimia</p><p>- Laboratorium Komputer</p><p>- Aula</p><p>- Kantin</p><p>- <em>Greenhouse</em></p><p>- Hidroponik</p><p>- Taman</p><p><br></p><p><strong>EKSTRAKURIKULER</strong></p><p>1. Palang Merah Remaja (PMR)</p><p>2. Paskibra (Pasukan Pengibar Bendera)</p><p>3. Pramuka</p><p>4. Ikatan Remaja Masjid (IRMA)</p><p>5. Kabaret (Bakatuwla)</p><p>6. Vokal Grup (SST)</p><p>7. Perkusi (SST)</p><p>8. Angklung (SST)</p><p>9. Musik Modern (SST)</p><p>10. Tari Tradisional (SST)</p><p>11. Cover Dance&nbsp;(DIC)</p><p>12. Kelompok Seni Tujuh Belas</p><p>13. Futsal</p><p>14. Basket (Seventeen)</p><p>15. Voli</p><p>16. Pecinta Alam (PPRPG Girilaya)</p><p>17. Karate</p><p>18. Taekwondo</p><p>19. Pencak Silat (Tadjimalela)</p><p>20. Mading</p><p>21. IT (Satelit)</p><p>22. English Club</p><p><br></p><p><strong>MEDIA SOSIAL</strong></p><p>Instagram			: <a href=\"https://www.instagram.com/SMAN_17_Bandung\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(0, 71, 178);\"><strong><u>@SMAN_17_Bandung</u></strong></a></p><p>Facebook Page	: <a href=\"https://www.facebook.com/SMANegeri17Bandung\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(0, 71, 178);\"><strong><u>SMA Negeri 17 Bandung</u></strong></a></p><p>Youtube 				: <a href=\"https://www.youtube.com/SMAN17Bandung\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(0, 71, 178);\"><strong><u>SMAN 17 Bandung</u></strong></a></p><p>Twitter 				: <a href=\"https://twitter.com/SMAN17_BDG\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(0, 71, 178);\"><strong><u>@SMAN17_BDG</u></strong></a></p><p>Website 				: <a href=\"http://sman17bandung.sch.id\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(0, 71, 178);\"><strong><u>http://sman17bandung.sch.id</u></strong></a></p><p>E-mail					: <a href=\"mailto:sman17bandung.info@gmail.com\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(0, 71, 178);\"><strong><u>sman17bandung.info@gmail.com</u></strong></a></p></div>'),
(18, 'sma18bdg@gmail.com', 'SMA Negeri 18 Bandung', '20219244', 'JL. MADESA SITUGUNTING, KOPO', 'Bojongloa Kaler', '022-6013514', 'https://ikelas.com/sekolah/45397/sman-18-bandung', 'B', 50, '<div><p>Visi dan Misi SMA Negeri 18 Bandung</p><ul><li>Visi</li></ul><p>Mewujudkan lulusan yang memiliki integritas, berdaya saing dan membentuk sekolah yang berwawasan lingkungan</p><ul><li>Misi</li></ul><ol><li>Membentuk pribadi yang berjiwa mandiri, bertaqwa untuk menjadi insan kamil</li><li>Meningkatkan pemahaman dan pengalaman nilai-nilai religi</li><li>Mengembangkan potensi peserta didik untuk membentuk lulusan yang berprestasi dalam bidang akademik dan non akamdemik</li><li>Menyelenggarakan proses pendidikan yang berwawasan lingkungan sesuai dengan 8 standar nasional pendidikan</li></ol><p><br></p><p>Slogan SMA Negeri 18 adalah IDEAL (Integritas, Daya Saing, Edukatif, Amanah dan berbudaya Lingkungan)</p><p><br></p><p>Adapun Ekstrakulikuler yang dapat diikuti peserta didik seperti Futsal, Angklung, Sketsa, IRMA, SAbda, Pencak Silat dll. Prestasi yang diraih oleh ekstrakulikuler tersebut diantaranya pernah menjuarai kejuaran Futsal Nasional dan bahkan mengikuti kejuaraan tingkat Asia, menjuarai perlombaan MHQ tingkat Provinsi, menjuarai lomba membaca Puisi tingkat Nasional, terlibat pagelaran Kabaret tingkat Provinsi dll.</p><p><br></p><p>Layanan Informasi:</p><p>Ida Nurlaelasari (081322526955)</p><p>Asep Gunawan (085724639910)</p><p>Rubi Setiawan (085603702300)</p><p><br></p><p>Tambahan : BAGI PENDAFTAR YANG STATUSNYA PERLU PERBAIKAN DI WEB SMAN 18 BANDUNG, HARAP DATANG HARI SENIN, 14 JUNI 2021 KE SMAN 18 BANDUNG MULAI PUKUL 08.00-14.00!!!</p></div>'),
(19, 'sma19bdg@gmail.com', 'SMA Negeri 19 Bandung', '20219246', 'JL. Ir. H. Juanda (Dago Pojok), DAGO', 'Coblong', '081313558688', 'https://sman19bandung.sch.id/', 'A', 50, '<div><iframe class=\"ql-video\" frameborder=\"0\" allowfullscreen=\"true\" src=\"https://www.youtube.com/embed/qBn1Etqk8k8?showinfo=0\"></iframe><p class=\"ql-indent-6\"><br></p><p><strong class=\"ql-size-large ql-font-serif\" style=\"color: rgb(0, 138, 0);\">INFORMASI PPDB SMAN 19 BANDUNG</strong></p><h6><span style=\"color: rgb(0, 138, 0);\"> TAHUN PELAJARAN 2021/2022</span></h6><p><br></p><p>Informasi pendaftaran silakan <a href=\"https://www.sman19bandung.sch.id/ppdb\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(0, 102, 204);\">Klik Disini</a></p><p><br></p><p>Lokasi : <a href=\"https://www.google.com/maps/place/Senior+High+School+19+Bandung/@-6.8736112,107.6139811,17z/data=!3m1!4b1!4m5!3m4!1s0x2e68e6e3831a90dd:0x840967c977d1615e!8m2!3d-6.8736167!4d107.6161784\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(0, 102, 204);\">Klik Disini</a></p></div>'),
(20, 'sma20bdg@gmail.com', 'SMA Negeri 20 Bandung', '20219253', 'JL. CITARUM NO. 23, CITARUM,', 'Bandung Wetan', '022-4205268', 'www.sman20bdg.sch.id', 'A', 70, 'SMA Negeri 20 Bandung adalah salah satu Sekolah Menengah Atas Negeri yang ada di Bandung. Sekolah ini terletak di Jl. Citarum No. 23 Bandung, Jawa Barat, Indonesia.'),
(21, 'sma21bdg@gmail.com', 'SMA Negeri 21 Bandung', '20219251', 'JL. MANJAHLEGA NO. 29 RANCASAWO - CIWASTRA, MARGASARI', 'Buahbatu', '0227565909', 'https://sman21bandung.sch.id/', 'A', 80, 'SMA Negeri 21 Bandung, merupakan salah satu Sekolah Menengah Atas Negeri yang ada di Provinsi Jawa Barat, Indonesia. Sama dengan SMA pada umumnya di Indonesia masa pendidikan sekolah di SMAN 21 Bandung ditempuh dalam waktu tiga tahun pelajaran, mulai dari Kelas X sampai Kelas XII.'),
(22, 'sma22bdg@gmail.com', 'SMA Negeri 22 Bandung', '20219250', 'JL. RAJAMANTRI KULON NO. 17A, TURANGGA', 'Lengkong', '0227302769', 'http://sman22bdg.sch.id/ppdb-2021/', 'A', 90, '<div><p><br></p><p><strong>SELAMAT DATANG DI INFORMASI PPDB SMAN 22 BANDUNG</strong></p><p><br></p><p><br></p><p><strong>SEJARAH SINGKAT</strong></p><p><br></p><p>Sebelum menjadi sekolah umum, SMA Negeri 22 Bandung adalah SGTK (Sekolah Guru Taman Kanak-kanak) yang selanjutnya berubah menjadi SPG (Sekolah Pendidikan Guru) Negeri 2 Bandung.</p><p><br></p><p>SPG Negeri 2 Bandung berlokasi di Jalan Citarum nomor 23 Bandung (sekarang digunakan oleh SMA Negeri 20 Bandung), karena tempatnya tidak mencukupi maka bangunannya ditambah dengan bangunan di Jalan Bali Bandung.</p><p><br></p><p>Semenjak tahun 1987 SPG Negeri 2 Bandung pindah ke bangunan baru di Jalan Rajamantri Kulon nomor 17 A (alamat sekarang) yang sebelumnya bangunan bekas SGPLB yang direhab.</p><p><br></p><p>Pada tahun 1991 berdasarkan keputusan Menteri Pendidikan dan Kebudayaan dengan surat nomor 0426/O/1991 tertanggal 15 Juli 1991, SPG Negeri 2 Bandung beralih fungsi menjadi sekolah umum yaitu SMA Negeri 22 Bandung sampai sekarang.</p><p><br></p><p><br></p><p><br></p><p><strong>VISI</strong></p><p><br></p><p><strong>“TERWUJUDNYA SEKOLAH RAMAH ANAK YANG BERAKHLAK MULIA, BERPRESTASI DAN BERWAWASAN LINGKUNGAN”</strong></p><p><br></p><p><br></p><p><br></p><p><strong>MISI</strong></p><p>1. Menjadikan sekolah sebagai rumah kedua peserta didik</p><p>2. Meningkatkan kualitas pembelajaran</p><p>3. Meningkatkan prestasi kerja personil sekolah dengan dilandasi komitmen dan sikap profesionalisme</p><p>4. Meningkatkan sikap dan prilaku akhlak mulia semua warga sekolah dalam kehidupan sehari-hari</p><p><br></p><p><br></p><p><br></p><p><strong>EKSTRAKULIKULER </strong></p><p>- PASKIBRA</p><p>- Pramuka</p><p>- PMR</p><p>- Bohlam (Teater)</p><p>- Procedio (Film)</p><p>- Percutwo (Perkusi)</p><p>- Fraternite (Modern Dance)</p><p>- SKEMA (DKM)</p><p>- DTCT (Paduan Suara)</p><p>- Jurnalistik</p><p>- SKSD (Art &amp; Design)</p><p>- Ecomapping</p><p>- Kompas (Klub Sejarah)</p><p>- English Club</p><p>- Japanese Club</p><p>- Biology Club</p><p>- Physics Club</p><p>- Chemistry Club</p><p>- Economy Club</p><p>- Geography Club</p><p>- RFC (Futsal)</p><p>- Basket</p><p>- Softball</p><p>- Badminton</p><p>- Taekwondo</p><p><br></p><p><br></p><p><strong>INFORMASI PPDB</strong></p><p><span style=\"color: rgb(102, 185, 102);\">WHATSAPP</span> : <a href=\"http://wa.me/6282127643211\" rel=\"noopener noreferrer\" target=\"_blank\">082127643211</a> (Bu Lena) / <a href=\"http://wa.me/62817437704\" rel=\"noopener noreferrer\" target=\"_blank\">0817437704</a> (Bu Nita)</p><p><span class=\"ql-size-large\" style=\"color: rgb(153, 51, 255);\">Instagram</span><span class=\"ql-size-large\">&nbsp;: </span><a href=\"http://instagram.com/sman22bdg\" rel=\"noopener noreferrer\" target=\"_blank\" class=\"ql-size-large\">@sman22bdg</a></p><p><span style=\"color: rgb(0, 102, 204);\">Website</span>&nbsp;:&nbsp;<a href=\"http://sman22bdg.sch.id\" rel=\"noopener noreferrer\" target=\"_blank\">sman22bdg.sch.id</a></p><p>Kampus&nbsp;: SMAN 22 BANDUNG</p><p>Jl. Rajamantri Kulon No. 17A</p></div>'),
(23, 'sma23bdg@gmail.com', 'SMA Negeri 23 Bandung', '20219249', 'JL. MALANGBONG RAYA, ANTAPANI WETAN', 'Antapani', '08974762323', 'http://sman23bandung.sch.id/', 'A', 60, 'SMA Negeri 23 Bandung merupakan salah satu Sekolah Menengah Atas Negeri yang berada di Provinsi Jawa Barat, Indonesia. Terletak di Jl. Malangbong Raya, Antapani, Kota Bandung. Berdiri pada tahun 1994, dan saat ini dikepalai oleh Bapak Drs. Deddy Chrisdiarto.'),
(24, 'sma24bdg@gmail.com', 'SMA Negeri 24 Bandung', '20219248', 'JL. A.H. NASUTION NO. 27, PASIR ENDAH', 'Ujung Berung', '022-7800196', 'http://sman24bdg.sch.id/', 'A', 50, '<div><iframe class=\"ql-video\" frameborder=\"0\" allowfullscreen=\"true\" src=\"https://www.youtube.com/embed/L9hDt4_Jq7c?showinfo=0\"></iframe><p><br></p><h2><strong>VISI &amp; MISI SMAN 24 BANDUNG</strong></h2><p><br></p><p><strong style=\"background-color: transparent;\">1. Visi Sekolah</strong></p><p><em style=\"background-color: transparent;\">Terwujudnya lulusan berkarakter yang dilandasi&nbsp;ketaatan beragama , kepedulian terhadap lingkungan , berakar budaya bangsa dan berprilaku hidup sehat sehingga mampu hidup selaras dengan tuntutan perubahan di era global.</em></p><p><br></p><p><strong style=\"background-color: transparent;\">2. Misi Sekolah</strong></p><p><em style=\"background-color: transparent;\">Meningkatkkan pembinaan karakter dan akhlaq mulia, Meningkatkan partisifasi dan kepribadian warga sekolah untuk peduli lingkungan dalam mendukung proses belajar yang menyenangkan, Meningkatkan aktivitas pembinaan perilaku hidup sehat dan prestasi yang&nbsp;berkaitan dengan aktivitas hidup. Meningkatkan pembinaan budaya daerah sebagai akar budaya bangsa. Meningkatkan prestasi IPTEK dan ICT dengan mendorong aktifitas akademis dan non akademis, Meningkatkan pengembangan Bahasa Inggris</em></p><p><br></p><h1><strong>HOTLINE PPDB 2021 </strong></h1><h2>WA : 0857 9673 8598</h2></div>'),
(25, 'sma25bdg@gmail.com', 'SMA Negeri 25 Bandung', '20219247', 'JL. BATURADEN VIII NO. 21, MEKARMULYA', 'Rancasari', '022-7560119', 'https://www.sman25bandung.sch.id/', 'A', 90, '<div><p class=\"ql-align-justify\"><strong>Assalamualaikum Wr. Wb</strong></p><p class=\"ql-align-justify\"><strong>Hallo ..</strong></p><p class=\"ql-align-justify\"><strong>Selamat datang di Sekolah Juara, SMA Negeri 25 Bandung.</strong></p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><strong>A. Sejarah SMA Negeri 25 Bandung</strong></p><p class=\"ql-align-justify\"><span style=\"color: rgb(34, 34, 34);\">SMA Negeri 25 Bandung didirikan pada tahun 1981 yang awalnya merupakan Kelas Jauh (KJ) dari SMA Negeri Baleendah Kabupaten Bandung. Tahun 1983 berubah nama menjadi SMA Negeri Buahbatu Kabupaten Bandung menempati gedung baru di kawasan Kompleks Baturaden Margacinta.</span></p><p class=\"ql-align-justify\"><span style=\"color: rgb(34, 34, 34);\">Sejalan dengan pemekaran Kota Bandung, maka SMA ini menjadi SMA Negeri Buahbatu Kota Bandung pada Tahun 1989. Tahun 1996 berubah lagi namanya menjadi SMA Negeri 25 Kota Bandung. Bersamaan dengan berlakunya otonomi daerah SMA Negeri 25 Bandung beralih pengelolaan dari Departemen Pendidikan Nasional ke Pemerintah Kota Bandung. SMA Negeri 25 Bandung terletak di wilayah Bandung Tenggara, tepatnya di Jalan Baturaden VIII No. 21 Ciwastra, Kecamatan Rancasari Kota Bandung. Pada awal tahun 2018 pengelolaan beralih kembali dari Pemerintahan Kota Bandung ke Pemerintahan Daerah Provinsi Jawa Barat. Sejak 1981 hingga 2020 SMA Negeri 25 Bandung sudah mengalami kepemimpinan 14 Kepala Sekolah. </span></p><p><br></p><p><strong style=\"color: black;\">B. Identitas SMA Negeri 25 Bandung</strong></p><p class=\"ql-align-justify\"><span style=\"color: black;\">a.&nbsp;&nbsp;&nbsp;&nbsp;Nama Sekolah&nbsp;</span>	<span style=\"color: black;\">:&nbsp;SMA Negeri 25 Kota Bandung</span></p><p class=\"ql-align-justify\"><span style=\"color: black;\">b.&nbsp;&nbsp;&nbsp;&nbsp;Alamat Sekolah </span>	<span style=\"color: black;\">:&nbsp;Jl. Baturaden VIII No. 21 Ciwastra</span></p><p class=\"ql-align-justify\"><span style=\"color: black;\">c.&nbsp;&nbsp;&nbsp;&nbsp;Kelurahan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> 	<span style=\"color: black;\">:&nbsp;Mekarjaya</span></p><p class=\"ql-align-justify\"><span style=\"color: black;\">d.&nbsp;&nbsp;&nbsp;&nbsp;Kecamatan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> 	<span style=\"color: black;\">:&nbsp;Rancasari</span></p><p class=\"ql-align-justify\"><span style=\"color: black;\">e.&nbsp;&nbsp;&nbsp;&nbsp;Kota&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> 		<span style=\"color: black;\">:&nbsp;Kota Bandung</span></p><p class=\"ql-align-justify\"><span style=\"color: black;\">f.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Provinsi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> 	<span style=\"color: black;\">:&nbsp;Jawa Barat</span></p><p class=\"ql-align-justify\"><span style=\"color: black;\">g.&nbsp;&nbsp;&nbsp;&nbsp;Kode Pos&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> 		<span style=\"color: black;\">:&nbsp;40292</span></p><p class=\"ql-align-justify\"><span style=\"color: black;\">h.&nbsp;&nbsp;&nbsp;&nbsp;Telepon&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> 		<span style=\"color: black;\">:&nbsp;022-7560119</span></p><p class=\"ql-align-justify\"><span style=\"color: black;\">i.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Website&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> 	<span style=\"color: black;\">:&nbsp;</span><a href=\"http://www.sman25bdg.sch.id/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: black;\"><u>www.sman25bandung.sch.id</u></a></p><p class=\"ql-align-justify\"><span style=\"color: black;\">j.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;e-mail&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>		<span style=\"color: black;\">:&nbsp;sman25bandung@sman25bandung.sch.id</span></p><p class=\"ql-align-justify\"><span style=\"color: black;\">k.&nbsp;&nbsp;&nbsp;&nbsp;NSS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> 	<span style=\"color: black;\">:&nbsp;30.1.02.60.25.134</span></p><p class=\"ql-align-justify\">l<span style=\"color: black;\">.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NPSN&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> 	<span style=\"color: black;\">:&nbsp;20219247</span></p><p class=\"ql-align-justify\"><span style=\"color: black;\">m. </span>	<span style=\"color: black;\">Instagram</span> 			: @sman25.bdg</p><p class=\"ql-align-justify\">n. 	Twitter					: @sman25bdg1</p><p><br></p><p class=\"ql-align-justify\"><strong style=\"color: black;\">C.&nbsp;Visi-Misi SMA Negeri 25 Bandung</strong></p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><strong style=\"color: black;\">1) Visi SMA Negeri 25 Bandung</strong></p><p class=\"ql-align-center\"><span style=\"color: black;\">”Mewujudkan lulusan yang beriman,&nbsp;bertaqwa,&nbsp;berkarakter mulia,&nbsp;sehat,&nbsp;berbudaya lingkungan, berwawasan IPTEK, berprestasi dan mampu bersaing di era globalisasi”</span></p><p class=\"ql-align-center\"><span style=\"color: black;\">Dengan Motto ”</span><em style=\"color: black;\">Leading in Character and Knowledge</em><span style=\"color: black;\">”</span></p><p class=\"ql-align-justify\"><em style=\"color: black;\">&nbsp;</em></p><p class=\"ql-align-justify\"><strong style=\"color: black;\">INDIKATOR VISI</strong></p><p class=\"ql-align-justify\"><span style=\"color: black;\">1.&nbsp;&nbsp;&nbsp;&nbsp;Terwujudnya lulusan yang unggul dalam pengetahuan dan karakter, sehat jasmani dan rohani, mampu berprestasi dan mengikuti perkembangan jaman.</span></p><p class=\"ql-align-justify\"><span style=\"color: black;\">2.&nbsp;&nbsp;&nbsp;&nbsp;Terwujudnya mutu pendidikan yang mengintegrasikan nilai-nilai agama dan budaya dengan kemajuan ilmu pengetahuan dan teknologi.</span></p><p class=\"ql-align-justify\"><span style=\"color: black;\">3.&nbsp;&nbsp;&nbsp;&nbsp;Terwujudnya hubungan yang harmonis antara sekolah, masyarakat, para </span><em style=\"color: black;\">stakeholder</em><span style=\"color: black;\"> dan instansi/lembaga terkait.</span></p><p class=\"ql-align-justify\"><span style=\"color: black;\">4.&nbsp;&nbsp;&nbsp;&nbsp;Terwujudnya Lingkungan yang bersih, asri, sehat, nyaman, dan produktif.</span></p><p class=\"ql-align-justify\"><span style=\"color: black;\">&nbsp;</span></p><p class=\"ql-align-justify\"><strong style=\"color: black;\">2)&nbsp;&nbsp;&nbsp;&nbsp;Misi SMA Negeri 25 Bandung </strong><span style=\"color: black;\">:</span></p><p class=\"ql-align-justify\"><span style=\"color: black;\">1.&nbsp;&nbsp;&nbsp;&nbsp;Melaksanakan pembinaan keimanan dan ketaqwaan dengan melibatkan seluruh komponen sekolah dan terintegrasi pada proses pembelajaran.</span></p><p class=\"ql-align-justify\"><span style=\"color: black;\">2.&nbsp;&nbsp;&nbsp;&nbsp;Mengkondisikan sekolah sehingga kondusif dalam mendukung pembinaan kepribadian dan keberhasilan proses belajar mengajar serta mengembangkan program aksi cinta lingkungan.</span></p><p class=\"ql-align-justify\"><span style=\"color: black;\">3.&nbsp;&nbsp;&nbsp;&nbsp;Menumbuhkan penghayatan terhadap budaya daerah sehingga menjadi salah satu sumber kearifan dalam berperilaku dan bermasyarakat.</span></p><p class=\"ql-align-justify\"><span style=\"color: black;\">4.&nbsp;&nbsp;Menumbuhkan motivasi dalam mengembangan profesionalisme dan semangat keunggulan melalui penguatan karakter &amp; literasi menghadapi revolusi industry 4.0.</span></p><p class=\"ql-align-justify\"><span style=\"color: black;\">5.&nbsp;&nbsp;&nbsp;Memberdayakan seluruh komponen sekolah dan mengoptimalkan sumberdaya sekolah, dalam membantu siswa untuk dapat mengembangkan diri yang berbasis teknologi informasi.</span></p><p class=\"ql-align-justify\"><span style=\"color: black;\">6.&nbsp;&nbsp;&nbsp;&nbsp;Mengembangkan Prestasi kolektif sekolah, baik dalam bidang akademik maupun non akademik.</span></p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><strong style=\"color: black;\">D.&nbsp;Informasi Umum dan Kuota PPDB SMA Negeri 25 Bandung</strong></p><p class=\"ql-align-justify\">1) Persyaratan Umum dan Khusus PPDB</p><p class=\"ql-align-justify\">Persyaratan Umum:</p><p class=\"ql-align-justify\">a) Ijazah</p><p class=\"ql-align-justify\">b) Akta Kelahiran</p><p class=\"ql-align-justify\">c) KK (minimal 1 tahun), KTP</p><p class=\"ql-align-justify\">d) Buku Raport dan Keterangan Rangking (5 Semester)</p><p class=\"ql-align-justify\">e) Surat Tanggung Jawab Mutlak Orangtua</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">2) Persyaratan Khusus:</p><p class=\"ql-align-justify\">a) Kartu Program Penanganan Kemiskinan/ Terdaftar pada DTKS (bagi jalur afirmasi KETM)&nbsp;</p><p class=\"ql-align-justify\">b) Surat Keterangan Domisili dari RT/RW (bagi jalur afirmasi korban bencana alam/sosial)</p><p class=\"ql-align-justify\">c) Surat Tugas Orang Tua (bagi jalur perpindahan tugas orang tua/wali/ anak guru) dan bagi afirmasi penanganan Covid19</p><p class=\"ql-align-justify\">d) Piagam dan Dokumentasi Prestasi (untuk jalur prestasi kejuaraan)</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">2) <strong>Daya Tampung (Kuota) PPDB SMA Negeri 25 Bandung</strong></p><p class=\"ql-align-justify\">Penerimaan Peserta Didik Baru (PPDB) SMA Negeri 25 Bandung Tahun Pelajaran 2021/2022 sebanyak 396 Orang, dengan detail sebagai berikut:</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><strong>JALUR</strong> <strong>KETENTUAN </strong> <strong>JUMLAH</strong></p><p>Zonasi (<strong>50 %, Khusus Jalur ini dilaksanakan Tahap 2 PPDB):</strong> 198</p><p>Afirmasi (<strong>20 %), terdiri:</strong></p><ul><li>ABK/Disabilitas (2%) : 8</li><li>KETM (15%) : 59</li><li>Kondisi Tertentu (Petugas Penanganan COVID-19 dan Bencana Alam/Sosial) (3%): 12</li></ul><p>Perpindahan Tugas Orangtua/Wali/Anak Guru (<strong>5 %): </strong>20</p><p>Prestasi Raport (20%): 79</p><p>Prestasi Kejuaraan (<strong>5 %):</strong> 20</p><p class=\"ql-align-center\">&nbsp;<strong>Jumlah : </strong> <strong>396</strong></p><p class=\"ql-align-justify\"><br></p><p>E. <strong>Informasi Program Sekolah Penggerak (PSP) SMAN 25 Bandung Tahun Pelajaran 2021/2022</strong></p><p>(Berdasarkan intruksi KEMDIKBUD RISTEKDIKTI, Sekolah wajib menginformasikan program PSP yang akan dilaksanakan pada Tahun Pelajaran 2021/2022)</p><p><br></p><p>Alhamdulillah pada pertengahan tahun 2021, SMA Negeri 25 Bandung lolos seleksi Program sekolah penggerak. Dengan terpilihnya SMA Negeri 25 Bandung menjadi salah satu sekolah penggerak di Jawa Barat khususnya kota Bandung.&nbsp;</p><p><br></p><p>Program Sekolah penggerak mewujudkan profil pelajar pancasila dengan 4 program utama; penguatan SDM sekolah, pembelajaran paradigma baru, perencanaan berbasis data, dan digitalisasi sekolah.</p><p><br></p><p>Kami informasikan terkait paradigma baru dalam penerapan kurikulum sekolah penggerak&nbsp;di SMA Negeri 25 Bandung. Struktur Mata pelajaran&nbsp;pada kelas X Tahun Pelajaran 2021/2022.</p><p>1.	Belum ada peminatan, Semua siswa mengambil mata pelajaran wajib. Dikelas X ini siswa diharapkan menyiapkan diri untuk menentukan pilihan mata pelajaran di kelas XI. Siswa perlu berkonsultasi dengan BK, Wali kelas dan orang tua</p><p>2.	Mata pelajaran kelompok IPA terdiri dari&nbsp;Fisika, Kimia, Biologi (6 JP/Minggu)</p><p>3.	Mata pelajaran kelompok IPS terdiri dari Sosiologi, Ekonomi, Sejarah, Geografi ( 8 JP/Minggu)</p><p><br></p><p>Adapun prinsip pembelajaran untuk mencapai profil pelajar pancasila, perlu terwujud pembelajaran yang:</p><p>1.	dirancang dengan mempertimbangkan tingkat pencapaian peserta didik saat ini , sesuai kebutuhan belajar, serta mencerminkan karakter dan perkembangan mereka.</p><p>2.	dirancang dan dilaksanakan untuk membangun kapasitas belajar peserta didik dan kapasitas mereka untuk menjadi pemelajar sepanjang hayat.</p><p>3.	mendukung perkembangan kognitif dan karakter peserta didik secara berkelanjutan dan holistik.</p><p>4.	relevan, yaitu pembelajaran yang dirancang sesuai konteks kehidupan dan budaya peserta didik, serta melibatkan orang tua dan komunitas sebagai mitra.</p><p>5.	berorientasi pada masadepan yang berkelanjutan.</p><p><br></p><p>Demikian yang dapat kami informasikan. Semoga ini menjadi pertimbangan Bapak/Ibu orang tua calon Siswa SMAN 25 Bandung tahun Pelajaran 2021/2022 untuk semakin yakin memilih SMA Negeri 25 Bandung menjadi sekolah pilihan untuk putra-putri tercinta.</p><p><br></p><p><strong>Salam Juara,</strong></p><p><strong><em>\"Leading in Character and Knowledge\"</em></strong></p><p><strong>Tim Panitia PPDB SMA Negeri 25 Bandung 2021</strong></p><p><br></p><p><strong><em>Wassalamualaikum Wr. Wb.</em></strong></p></div>'),
(26, 'sma26bdg@gmail.com', 'SMA Negeri 26 Bandung', '20219233', 'Jalan Sukaluyu No. 26, CIPADUNG', 'Cibiru', '02287836409', 'https://sman26bandung.sch.id/', 'A', 90, 'SMA Negeri 26 Bandung adalah salah satu Sekolah Menengah Atas Negeri yang ada di Provinsi Jawa Barat, Indonesia. Berlokasi di JL. Sukaluyu No. 26 Cipadung Cibiru, Bandung. Sama seperti SMA di Indonesia pada umumnya, masa pendidikan sekolah di SMAN 26 Bandung ditempuh selama tiga tahun.'),
(27, 'sma27bdg@gmail.com', 'SMA Negeri 27 Bandung', '20265516', 'Jl. Raya Utsman Bin Affan No. 1, RANCANUMPANG', 'Gedebage', '022-7838362', 'https://sman27bandung.sch.id/', 'B', 70, 'SMA Negeri 27 Bandung, merupakan salah satu Sekolah Menengah Atas Negeri yang ada di Bandung. SMA Negeri 27 Bandung beralamat di Jalan Utsman Bin Affan No. 1 Kel. Rancanumpang Kec. Gedebage - Bandung, Jawa Barat.');

-- --------------------------------------------------------

--
-- Table structure for table `data_seleksi`
--

CREATE TABLE `data_seleksi` (
  `id` int(11) NOT NULL,
  `id_sekolah` int(255) NOT NULL,
  `nisn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_seleksi`
--

INSERT INTO `data_seleksi` (`id`, `id_sekolah`, `nisn`) VALUES
(1, 1, '1001'),
(2, 7, '1001'),
(3, 10, '1001'),
(4, 1, '1002'),
(5, 7, '1002'),
(6, 10, '1002'),
(7, 4, '1003'),
(8, 12, '1003'),
(9, 14, '1003'),
(10, 8, '1004'),
(11, 4, '1004'),
(12, 12, '1004'),
(13, 1, '1006'),
(14, 10, '1006'),
(15, 16, '1006'),
(16, 1, '1007'),
(17, 12, '1007'),
(18, 18, '1007'),
(19, 1, '1008'),
(20, 13, '1008'),
(21, 22, '1008'),
(22, 2, '1010'),
(23, 13, '1010'),
(24, 10, '1010'),
(25, 2, '1011'),
(26, 14, '1011'),
(27, 4, '1011'),
(28, 2, '1012'),
(29, 13, '1012'),
(30, 27, '1012'),
(31, 3, '1013'),
(32, 6, '1013'),
(33, 9, '1013'),
(34, 3, '1014'),
(35, 4, '1014'),
(36, 14, '1014'),
(37, 5, '1015'),
(38, 3, '1015'),
(39, 14, '1015'),
(40, 10, '1016'),
(41, 3, '1016'),
(42, 9, '1016'),
(43, 2, '1017'),
(44, 10, '1017'),
(45, 18, '1017'),
(46, 3, '1018'),
(47, 11, '1018'),
(48, 13, '1018');

-- --------------------------------------------------------

--
-- Table structure for table `data_siswa`
--

CREATE TABLE `data_siswa` (
  `id` int(11) NOT NULL,
  `pas_foto` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `nm_lengkap` varchar(128) NOT NULL,
  `nisn` int(100) NOT NULL,
  `tmp_lahir` varchar(128) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `agama` varchar(128) NOT NULL,
  `asal_sekolah` varchar(128) NOT NULL,
  `gender` int(1) NOT NULL,
  `nm_ortu` varchar(128) NOT NULL,
  `alamat_ortu` varchar(128) NOT NULL,
  `nilai_un` float NOT NULL,
  `bukti` varchar(64) NOT NULL,
  `prestasi` varchar(250) NOT NULL,
  `id_sekolah1` int(2) NOT NULL,
  `id_sekolah2` int(2) NOT NULL,
  `id_sekolah3` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_siswa`
--

INSERT INTO `data_siswa` (`id`, `pas_foto`, `email`, `nm_lengkap`, `nisn`, `tmp_lahir`, `tgl_lahir`, `agama`, `asal_sekolah`, `gender`, `nm_ortu`, `alamat_ortu`, `nilai_un`, `bukti`, `prestasi`, `id_sekolah1`, `id_sekolah2`, `id_sekolah3`) VALUES
(1, 'salwa.jpg', 'salwa_shalimar@gmail.com', 'Salwa Shalimar', 1001, 'Ruteng', '2001-02-06', 'Islam', 'MTs Amanah Ruteng', 0, 'Wa Ode Irawati', 'Satar Tacik, Ruteng', 30, 'vad.jpg', 'Juara Lomba Pidato', 1, 7, 10),
(2, 'Foto_Pas_Risma_Intan_Wulandari_1002.JPG', 'rismaintan60@gmail.com', 'Risma Intan Wulandari', 1002, 'Blitar', '2001-04-07', 'Islam', 'SMP Negeri 1 Srengat', 0, 'Ayah Risma', 'Blitar', 40, 'Ijazah_Risma_Intan_Wulandari_1002.jpg', 'Juara Lomba Puisi', 1, 7, 10),
(3, '101983538_560234504675600_4062660789480132368_n.jpg', 'almaki@gmail.com', 'Al Makky', 1003, 'Bengkulu', '2001-02-04', 'Katolik', 'SMP Negeri 1 Bandung', 1, 'Ayah Pak Almakky', 'Bengkulu', 30, 'al.jpg', 'Juara Lomba Sister Terapan', 4, 12, 14),
(5, 'Hitler_portrait_crop_(colorized)_-_Marcello_Rasel_(1).jpg', 'abdulhitler@gmail.com', 'Abdul Hitler', 1006, 'Jakarta', '2006-02-12', 'Kristen', 'SMPN 28 Jakarta', 1, 'John Hitler', 'Jakarta', 39, 'NISN_-_Marcello_Rasel.png', 'Juara Perang Dunia 1', 1, 10, 16),
(6, 'Hitler_portrait_crop_(colorized)_-_Marcello_Rasel_(1)1.jpg', 'osamabinardit@gmail.com', 'Osama Bin Ardit', 1007, 'Surabaya', '2006-04-12', 'Islam', 'MTSN ISIS', 1, 'Raden Bin Laden', 'Surabaya', 38, 'NISN_-_Marcello_Rasel1.png', 'Juara 1 Lomba Merakit Bom', 1, 12, 18),
(7, 'Suza_-_Marcello_Rasel.jpg', 'suzannarahmadanisya@gmail.com', 'Suzanna Rahmadanisya', 1008, 'Jakarta', '2006-12-12', 'Islam', 'SMPN 8 Jakarta', 0, 'Suzanna Bin Osa', 'Jakarta', 37, 'NISN_-_Marcello_Rasel2.png', 'Juara Lomba Lari', 1, 13, 22),
(8, 'Bin_Laden_-_Marcello_Rasel.jpg', 'anangrifai@gmail.com', 'Anang Furkon Rifai', 1010, 'Yogyakarta', '2006-11-01', 'Islam', 'SMPN 1 Yogyakarta', 1, 'Budi Susanto', 'Yogyakarta', 30, 'NISN_-_Marcello_Rasel3.png', 'Juara Ngoding', 2, 13, 10),
(9, 'Bin_Laden_-_Marcello_Rasel1.jpg', 'imaduddin@gmail.com', 'Imaduddin Muhammad Echa', 1011, 'Bandung', '2006-12-03', 'Hindu', 'SMPN1 Mojokerto', 1, 'Rinda Susanna', 'Bandung', 35, 'NISN_-_Marcello_Rasel4.png', 'Juara 1 Lari', 2, 14, 4),
(10, 'Hitler_portrait_crop_(colorized)_-_Marcello_Rasel_(1)2.jpg', 'meisusanto@gmail.com', 'Mei Susanto', 1012, 'Riau', '2006-12-02', 'Katolik', 'SMPN1 Tadika Mesra', 0, 'MeiMei', 'Riau', 24, 'NISN_-_Marcello_Rasel5.png', 'Juara Lomba Gitar', 2, 13, 27),
(11, 'Bin_Laden_-_Marcello_Rasel2.jpg', 'rafianandita@gmail.com', 'Rafi Anandita', 1013, 'Indramayu', '2007-12-12', 'Islam', 'SMPN 20 Indramayu', 1, 'Pak Budi', 'Indramayu', 29, 'NISN_-_Marcello_Rasel6.png', 'Juara Balap Motor', 3, 6, 9),
(12, 'Suza_-_Marcello_Rasel1.jpg', 'ardityocahyo@gmail.com', 'Ardityo Cahyo Utomo', 1014, 'Surabaya', '2006-02-06', 'Islam', 'SMPN 17 Surabaya', 1, 'Biden Joe', 'Surabaya', 28.5, 'NISN_-_Marcello_Rasel7.png', 'Juara Panjat Pinang', 3, 4, 14),
(13, 'Suza_-_Marcello_Rasel2.jpg', 'lunamaya@gmail.com', 'Luna Maya', 1015, 'Medan', '2005-02-05', 'Katolik', 'MTSN 11 Medan', 0, 'Lucinta Luna', 'Medan', 36.4, 'NISN_-_Marcello_Rasel8.png', 'Juara Akting', 5, 3, 14),
(14, 'Bin_Laden_-_Marcello_Rasel3.jpg', 'titankinan@gmail.com', 'Titan Kinan Salaatsa', 1016, 'Cimahi', '2007-11-22', 'Islam', 'SMPN 2 Cimahi', 1, 'Umar Abdul', 'Cimahi', 36.5, 'NISN_-_Marcello_Rasel9.png', 'Juara 1 Coding', 10, 3, 9),
(15, 'Bin_Laden_-_Marcello_Rasel4.jpg', 'julizarwiranto@gmail.com', 'Julizar Wiranto', 1017, 'Cimahi', '2006-05-05', 'Islam', 'SMPN 18 Cimahi', 1, 'Julia', 'Cimahi', 38.7, 'NISN_-_Marcello_Rasel10.png', 'Juara 1 Lomba Sepeda', 2, 10, 18),
(16, 'Bin_Laden_-_Marcello_Rasel5.jpg', 'rezaahmad@gmail.com', 'Reza Ahmad Bin Laden', 1018, 'Aceh', '2006-07-26', 'Katolik', 'SMPN 2 Aceh', 1, 'Echah', 'Aceh', 37.8, 'NISN_-_Marcello_Rasel11.png', 'Juara 1 Puisi', 3, 11, 13);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(1, 'Achmad Salim Aiman', 'salimaiman9@gmail.com', 'salim.jpeg', '$2y$10$oweXNuXjE6N7zf5g8xUjEeYP16A.jICK95sUCbZRimtMO.Q88ePVW', 1, 1, 1620425071),
(2, 'Salwa Shalimar', 'salwa_shalimar@gmail.com', 'salwa1.jpg', '$2y$10$GqtG92OvjjAK1Y49943By.cngptbcv0bmIKjs2wOfGzBIbTUcCoNe', 2, 1, 1620425080),
(3, 'Risma Intan Wulandari', 'rismaintan60@gmail.com', 'default.jpg', '$2y$10$WHFA65GqGyjeRIL2qkmK1uYkhmEZ/gj8nHkRngsZ4PspPP.YxL3zS', 2, 1, 1620425096),
(4, 'Achmad Salim Aiman', 'achmadsalima@gmail.com', 'default.jpg', '$2y$10$l/1CdlLzkMO6cCGvpzCTk.Wd474XBf/kAIRJ6crLPMrIMPU5M9H0C', 2, 1, 1621174451),
(6, 'Marcello Rasel', 'marcello@gmail.com', 'default.jpg', '$2y$10$ClRWk3lT1aI.7WmFSMd2aOnVRzA0HhOV4FwGvS0by2ojvt2DNwo0a', 2, 1, 1621437093),
(7, 'Rifki Alfian', 'rifkia@gmail.com', 'default.jpg', '$2y$10$dFyMm.vpuuQNDW99fq16seLjhQvFQ0LFYlij85xGBn1w.gTRD0aRy', 2, 1, 1621930119),
(9, 'Al Makky', 'almaki@gmail.com', 'default.jpg', '$2y$10$VwI/74rZuL.5eevTMxN/NuBJwJ.WsT4ri2HLH2/84ptY2V6aYeHsi', 2, 1, 1622986479),
(10, 'Abdul Hitler', 'abdulhitler@gmail.com', 'default.jpg', '$2y$10$9bXdaOOIE6novyEIlTsS8OzgZdqG7PnT/fMK70p18SPIpYkU6hxiC', 2, 1, 1623909301),
(11, 'Osama Bin Ardit', 'osamabinardit@gmail.com', 'default.jpg', '$2y$10$FOJ/sPDdiM.QHKKsaCnnjeBV5sTO7YE4iv6Y17cpzrKyOH.hvvQym', 2, 1, 1623909464),
(12, 'Suzanna Rahmadanisya', 'suzannarahmadanisya@gmail.com', 'default.jpg', '$2y$10$Rtj.UsKmBQbpo6phItpqeO/FMl85mvjSLXqlPGvYiqD60nbT6tzgO', 2, 1, 1623909478),
(13, 'Anang Furkon Rifai', 'anangrifai@gmail.com', 'default.jpg', '$2y$10$11H4R.MhOur6Don8ZfjB8OJ1LFxms69T1WW.txZFuWOVAuT1/dxcy', 2, 1, 1623909488),
(14, 'Imaduddin Muhammad Echa', 'imaduddin@gmail.com', 'default.jpg', '$2y$10$/LLddLRwt3SvebpkYNRqEucFA5YLd8qfB5mb2OZksl01Jwmt3yHGu', 2, 1, 1623909498),
(15, 'Mei Susanto', 'meisusanto@gmail.com', 'default.jpg', '$2y$10$v9RmZrpvq6FBXMi9qILUpOEJ8h4zf6T/VMgJUAqDi3IRZuqtBwlYq', 2, 1, 1623909508),
(16, 'Rafi Anandita', 'rafianandita@gmail.com', 'default.jpg', '$2y$10$d.EdEAxfC93SzDOBoUN0WO.JMaSUza8pmoV5X1Ligm92Ln7CMBx8u', 2, 1, 1623909517),
(17, 'Ardityo Cahyo Utomo', 'ardityocahyo@gmail.com', 'default.jpg', '$2y$10$ueuTEIRWEF8xdtQi0kghveQHYpGp8oAILlwVri3pweoGqgccj/JEi', 2, 1, 1623909526),
(18, 'Luna Maya', 'lunamaya@gmail.com', 'default.jpg', '$2y$10$PRUel0oqQIA.FKndMOoNmOr3xgd0paRNvWPjwtBTckTvOfUmm0H7e', 2, 1, 1623909536),
(19, 'Titan Kinan Salaatsa', 'titankinan@gmail.com', 'default.jpg', '$2y$10$bzyst0FIaF2qRIvxJczJy.N8csfNqRyoN8MeGvi1J6bbG1v42CbNW', 2, 1, 1623909547),
(20, 'Julizar Wiranto', 'julizarwiranto@gmail.com', 'default.jpg', '$2y$10$tpg.iwfVWtKNV.NAKBzbGOtuVhUPmih4avCTCK4bQAfj8g1c/k3jW', 2, 1, 1623909647),
(21, 'Reza Ahmad Bin Laden', 'rezaahmad@gmail.com', 'default.jpg', '$2y$10$vv8dBYCIrD6xhyn/ZZxmg.1xJYrNoTBOPM5b1J6qEg7/V9l9BgYLG', 2, 1, 1623909669),
(22, 'Romi Adiputra', 'romiadiputra@gmail.com', 'default.jpg', '$2y$10$JCm/YE/DBFUKWA9npICUMueE6sLhF0JxpQDaWWKb2D5NUryRrAGF2', 2, 1, 1623909682);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(3, 2, 5),
(6, 1, 6),
(10, 3, 5),
(11, 1, 1),
(14, 2, 2),
(15, 1, 4),
(16, 3, 3),
(19, 1, 12),
(20, 2, 12),
(21, 3, 12);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Diknas'),
(2, 'Siswa'),
(3, 'Sekolah'),
(4, 'Admin'),
(5, 'User'),
(6, 'Menu'),
(12, 'Pengumuman');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Siswa'),
(3, 'Sekolah');

-- --------------------------------------------------------

--
-- Table structure for table `user_sekolah`
--

CREATE TABLE `user_sekolah` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_sekolah`
--

INSERT INTO `user_sekolah` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(1, 'SMA Negeri 1 Bandung', 'sma1bdg@gmail.com', 'default.jpg', '$2y$10$EFfKWis5qfyO4xYUX7NgS.XWCk7J2yEpIsDSC7MOTU2LazB8/XInm', 3, 1, 1622337650),
(2, 'SMA Negeri 2 Bandung', 'sma2bdg@gmail.com', 'default.jpg', '$2y$10$6EHyIqC5cgpI1RVwQOVyOeedwAo2L645O48RNTVFU9FkVLVqG6A3q', 3, 1, 1622337787),
(3, 'SMA Negeri 3 Bandung', 'sma3bdg@gmail.com', 'default.jpg', '$2y$10$oIyFW4eSMgBMbC4h37uttOKgPr87B3yArupn8HBlQAs2AIPfQBsWm', 3, 1, 1622337839),
(4, 'SMA Negeri 4 Bandung', 'sma4bdg@gmail.com', 'default.jpg', '$2y$10$tbtrHzIMrJSsokVHOfqFbecJlmHtLJsYfqe3Ba8yHgg0j9F.wH4X.', 3, 1, 1622707671),
(5, 'SMA Negeri 5 Bandung', 'sma5bdg@gmail.com', 'default.jpg', '$2y$10$aMinNUjo1T0OIqWPPCQxXuYdCTxo19TbXBzHYTwdGrSjhisTMddcS', 3, 1, 1622707696),
(6, 'SMA Negeri 6 Bandung', 'sma6bdg@gmail.com', 'default.jpg', '$2y$10$GXRizvjKpe6Qj8Qesc8VFeOiBWLOXnmmSErAqdkNeyUbzrLkMpsju', 3, 1, 1622707756),
(7, 'SMA Negeri 7 Bandung', 'sma7bdg@gmail.com', 'default.jpg', '$2y$10$GcD7vEVFHLXwHma/0ca9l.CbekThJtKWv1bSQSW9ddRXkRU01OLMe', 3, 1, 1622708163),
(8, 'SMA Negeri 8 Bandung', 'sma8bdg@gmail.com', 'default.jpg', '$2y$10$u/Q.8NjYb0Y8d/UauvvbueePJ7ieFKzr5aYBIakAoU3S2CY8kzk3K', 3, 1, 1622708163),
(9, 'SMA Negeri 9 Bandung', 'sma9bdg@gmail.com', 'default.jpg', '$2y$10$BrEaP7FbznaOHofb0V5beOLx2q/hhiYc8.4rQ1xrdIV4ZiwxZoEWe', 3, 1, 1622708163),
(10, 'SMA Negeri 10 Bandung', 'sma10bdg@gmail.com', 'default.jpg', '$2y$10$P.kJN3KQ7JvOaGzIYywd6esg34Y5dXjQLCcb8Dzf4iAcu83NRG8ka', 3, 1, 1622708164),
(11, 'SMA Negeri 11 Bandung', 'sma11bdg@gmail.com', 'default.jpg', '$2y$10$Xzoj.m4SjWLVMSeXo2mRRenMf9VtajmZXKGSCk9hjnSyjUF/XqBCK', 3, 1, 1622708164),
(12, 'SMA Negeri 12 Bandung', 'sma12bdg@gmail.com', 'default.jpg', '$2y$10$Yj0orVtX7wjmRJGLupBabe03pWRYlpXIygflEI985dYUHFrgXUvbK', 3, 1, 1622708164),
(13, 'SMA Negeri 13 Bandung', 'sma13bdg@gmail.com', 'default.jpg', '$2y$10$dNZVOGpij4Cr0rhrT5l76ut6g2OGBxQLLqEb3b/zNJUV..ScLXRWG', 3, 1, 1622708164),
(14, 'SMA Negeri 14 Bandung', 'sma14bdg@gmail.com', 'default.jpg', '$2y$10$a4B8haQ204U1KrS1AICdUOXD5ak83On4RqArnZ7OZan..ByoJi9hS', 3, 1, 1622708165),
(15, 'SMA Negeri 15 Bandung', 'sma15bdg@gmail.com', 'default.jpg', '$2y$10$VNUhP0drKpN10dpNizlGNuuSzMa7UsIwXGr6DVXATr2osuC8010km', 3, 1, 1622708165),
(16, 'SMA Negeri 16 Bandung', 'sma16bdg@gmail.com', 'default.jpg', '$2y$10$3wb0LMQt7TaF9rUD8JRs3OTARjXbDOEtP4l/pqesctDQbxftXhjDC', 3, 1, 1622708165),
(17, 'SMA Negeri 17 Bandung', 'sma17bdg@gmail.com', 'default.jpg', '$2y$10$YfcJVjpj.YRpn0hUka4houcRuHWZ14Hlp2Qr1.YVyM.pkFckJ0Dae', 3, 1, 1622708165),
(18, 'SMA Negeri 18 Bandung', 'sma18bdg@gmail.com', 'default.jpg', '$2y$10$uJAdu6MEzW0tj.7YlDSL2e8K/BrkG4pQwLZK9gUoOkgCzlUVyq2vm', 3, 1, 1622708165),
(19, 'SMA Negeri 19 Bandung', 'sma19bdg@gmail.com', 'default.jpg', '$2y$10$x9muXZUX7h.5t.ONJzunje.szRrjGDpKDKrirPu144bv6Jfjlt0LC', 3, 1, 1622708166),
(20, 'SMA Negeri 20 Bandung', 'sma20bdg@gmail.com', 'default.jpg', '$2y$10$Ccu7ofg.9VshUTESz5O3.OaWeAIV1sGY8Bz7muVPGs2chYfYERxOm', 3, 1, 1622708166),
(21, 'SMA Negeri 21 Bandung', 'sma21bdg@gmail.com', 'default.jpg', '$2y$10$LZRR9U.dWehwC.KNUO5/ausyse7lYj1siSxTKmqAL.xbCT05Shm4W', 3, 1, 1622708166),
(22, 'SMA Negeri 22 Bandung', 'sma22bdg@gmail.com', 'default.jpg', '$2y$10$zvZgBfHU1dQLxEiOBLZRkugHI/tJDi1vzt2WhmLsv4ofqh6fkNkHu', 3, 1, 1622708166),
(23, 'SMA Negeri 23 Bandung', 'sma23bdg@gmail.com', 'default.jpg', '$2y$10$g70NXxWqAQ8hpAc2Gl7vweRLfDiGRyJQCMJdNq/jS84hA3JBeck/i', 3, 1, 1622708166),
(24, 'SMA Negeri 24 Bandung', 'sma24bdg@gmail.com', 'default.jpg', '$2y$10$bPNxQp56CZYtJ18581CjGulSjCLBYkNfEK2N2GMhUdaApS/fTPMii', 3, 1, 1622708166),
(25, 'SMA Negeri 25 Bandung', 'sma25bdg@gmail.com', 'default.jpg', '$2y$10$6zUiCDP9dsXoAPVsIy4JjeCy6SAxzn..Rq/gw1kA1rnfQzJg6X7uq', 3, 1, 1622708167),
(26, 'SMA Negeri 26 Bandung', 'sma26bdg@gmail.com', 'default.jpg', '$2y$10$5y4JTW9nZN4gr1k76jf6Vud614og9Uux7tSOx4gPswwdGSCoTUht6', 3, 1, 1622708167),
(27, 'SMA Negeri 27 Bandung', 'sma27bdg@gmail.com', 'default.jpg', '$2y$10$4cj9t9NbUphOf8vKZwzkK.NR3Cx/r3Sftgi9L3iD7Jn/Tw6uADNFS', 3, 1, 1622708167);

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 4, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 5, 'My Profile', 'user', 'fas fa-fw fa-user-cog', 1),
(3, 5, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(4, 6, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(5, 6, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(19, 4, 'Role', 'admin/role', 'fas fa-fw fa-user-tie', 1),
(20, 5, 'Change Password', 'user/changepassword', 'fas fa-fw fa-key', 1),
(22, 1, 'Kelola Data Siswa', 'diknas/kelolasiswa', 'fas fa-fw fa-user-graduate', 1),
(23, 1, 'Kelola Data Sekolah', 'diknas/kelolasekolah', 'fas fa-fw fa-school', 1),
(24, 1, 'Kelola Pengumuman', 'diknas/kelolapengumuman', 'fas fa-fw fa-scroll', 1),
(25, 2, 'Data Siswa', 'siswa', 'fas fa-fw fa-id-card-alt', 1),
(26, 2, 'Cetak Bukti Pendaftaran', 'siswa/cetak', 'fas fa-fw fa-print', 1),
(28, 3, 'Data Sekolah', 'sekolah', 'fas fa-fw fa-school', 1),
(29, 3, 'Lihat Data Siswa', 'sekolah/lihatsiswa', 'fas fa-fw fa-user-graduate', 1),
(30, 12, 'Pengumuman', 'pengumuman', 'fas fa-fw fa-bullhorn', 1),
(31, 12, 'Kelulusan Tiap Sekolah', 'pengumuman/persekolah', 'fas fa-fw fa-graduation-cap', 1),
(33, 2, 'Hasil Seleksi', 'siswa/hasil', 'fas fa-fw fa-check-circle', 1),
(35, 1, 'Set Waktu', 'diknas/waktu', 'fas fa-fw fa-stopwatch', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(7, 'almaki@gmail.com', 'nwZolq/toF7VhWKGRpS1aQY8Uedt6zSxsy5G8nEflTg=', 1622986479);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_deadline`
--
ALTER TABLE `data_deadline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_pengumuman`
--
ALTER TABLE `data_pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_sekolah`
--
ALTER TABLE `data_sekolah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_seleksi`
--
ALTER TABLE `data_seleksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_siswa`
--
ALTER TABLE `data_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sekolah`
--
ALTER TABLE `user_sekolah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_deadline`
--
ALTER TABLE `data_deadline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_pengumuman`
--
ALTER TABLE `data_pengumuman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `data_sekolah`
--
ALTER TABLE `data_sekolah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `data_seleksi`
--
ALTER TABLE `data_seleksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `data_siswa`
--
ALTER TABLE `data_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_sekolah`
--
ALTER TABLE `user_sekolah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
