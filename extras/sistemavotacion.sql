-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2020 at 04:21 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistemavotacion`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `papeletas`
--

CREATE TABLE `papeletas` (
  `PAPELETANUMERO` decimal(3,0) NOT NULL,
  `VOTANTECEDULA` decimal(10,0) NOT NULL,
  `PAPELETATIPO` char(3) NOT NULL,
  `PAPELETAFECHAVOTACION` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `papeletas`
--

INSERT INTO `papeletas` (`PAPELETANUMERO`, `VOTANTECEDULA`, `PAPELETATIPO`, `PAPELETAFECHAVOTACION`) VALUES
('1', '1722521620', 'V', '2020-02-07');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `postulantes`
--

CREATE TABLE `postulantes` (
  `POSTULANTEID` char(10) NOT NULL,
  `PAPELETANUMERO` decimal(3,0) NOT NULL,
  `VOTANTECEDULA` decimal(10,0) NOT NULL,
  `POSTULANTECARGO` char(30) NOT NULL,
  `POSTULANTEPARTIDO` char(200) NOT NULL,
  `POSTULANTENUMEROLISTA` varchar(5) NOT NULL,
  `POSTULANTEFOTOLISTA` longblob NOT NULL,
  `CANTIDADVOTOS` int(11) NOT NULL,
  `TIPOVOTO` char(3) NOT NULL,
  `POSTULANTEFOTO` longblob NOT NULL,
  `POSTULANTENOMBRE` varchar(30) NOT NULL,
  `POSTULANTEAPELLIDO` varchar(30) NOT NULL,
  `VICENOMBRE` varchar(30) NOT NULL,
  `VICEAPELLIDO` varchar(30) NOT NULL,
  `VICEFOTO` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `postulantes`
--

INSERT INTO `postulantes` (`POSTULANTEID`, `PAPELETANUMERO`, `VOTANTECEDULA`, `POSTULANTECARGO`, `POSTULANTEPARTIDO`, `POSTULANTENUMEROLISTA`, `POSTULANTEFOTOLISTA`, `CANTIDADVOTOS`, `TIPOVOTO`, `POSTULANTEFOTO`, `POSTULANTENOMBRE`, `POSTULANTEAPELLIDO`, `VICENOMBRE`, `VICEAPELLIDO`, `VICEFOTO`) VALUES
('AH', '1', '1722521620', 'PRESIDENTE', 'ALIANZA HONESTIDAD ( PARTIDO SOCIALISTA ECUATORIANO / CONCENTRACIÓN )', '17-51', 0x706f7374756c616e7465732f6f4939464c7a43647a467a63697338374a6574414d624e7251454e54596375346a546c694f616f302e6a706567, 0, 'VAL', 0x706f7374756c616e7465732f724c4d724e6c6f4f4966456c7656636d413168644e6b53346850723431506f6642394a68465762332e6a706567, 'César', 'Montúfar', 'Julio', 'Villacreses', 0x706f7374756c616e7465732f45324b6a4b72384f3135384b4235436e4f765a7965645a56566d454f307661416d494d653976777a2e706e67),
('CP', '1', '1722521620', 'PRESIDENTE', 'ALIANZA CREO-PSC ( Movimiento CREO / Partido Social Cristiano )', '21-6', 0x706f7374756c616e7465732f536f513974397a484b526278617166614276677a436646657074674d4e4c38357a487074557738532e706e67, 0, 'VAL', 0x706f7374756c616e7465732f4f673636476f7275756c395335707648334952464a677950715a706c4145723547575676475575542e6a706567, 'Guillermo', 'Lasso', 'Alfredo', 'Alfredo', 0x706f7374756c616e7465732f537570726339564970753439447a785371546638725174675077744a6f59647a4e446c7544454d582e6a706567),
('DS', '1', '1722521620', 'PRESIDENTE', 'DEMOCRACIA SÍ', '20', 0x706f7374756c616e7465732f697a576557636d42787779796d756641634544304b4447586a5a6648553042644949374f583663692e706e67, 0, 'VAL', 0x706f7374756c616e7465732f394b485679597652467a654f6347624748474c576377556535416433744a5247736a5559447159462e6a706567, 'Gustavo', 'Larrea', 'Alexandra', 'Peralta', 0x706f7374756c616e7465732f4c6c6f4632684d6630747167726f6b4f4a7a6873546f6746533964646a4e636d4b786c5966517a682e706e67),
('EU', '1', '1722521620', 'PRESIDENTE', 'ECUATORIANO UNIDO', '4', 0x706f7374756c616e7465732f7074534562306945586d57305a436b74794f475a70497642445834754865325975337367494b59752e706e67, 0, 'VAL', 0x706f7374756c616e7465732f545571796b3669416c37386241434c4431634178766f3550725432706b5a424e7176524d483464662e706e67, 'Gerson', 'Almeida', 'Martha', 'Villafuerte', 0x706f7374756c616e7465732f325a676f73715961653145446f574e757048484f32636467625272315674424c57766479435a46562e706e67),
('FU', '1', '1722521620', 'PRESIDENTE', 'Unión por la Esperanza', '5', 0x706f7374756c616e7465732f78324832597a58724c456e6e7244376d36346a6f736c6b7156384b76393854544842484e544268502e706e67, 0, 'VAL', 0x706f7374756c616e7465732f704b78687634566f6e6f61506e426f687a5036396b477736456a6665537439365647424e325355482e6a706567, 'Andrés', 'Arauz', 'Carlos', 'Rabascall', 0x706f7374756c616e7465732f3271417972396954516c4c4b55654e576a7462537a766b654d614a7743344d5930513748456843722e706e67),
('ID', '1', '1722521620', 'PRESIDENTE', 'IZQUIERDA DEMOCRÁTICA', '12', 0x706f7374756c616e7465732f5963774c5a69464b32686138306c373867614a62574b75754e69664563616d354b4e6473527550432e706e67, 0, 'VAL', 0x706f7374756c616e7465732f73737148484554557a67716e6a307031687242737a7535706734514e63595261363642376b4f73312e706e67, 'Xavier', 'Hervas', 'María', 'Jijón', 0x706f7374756c616e7465732f787541496879664e6e716c386669464254636b673776556f4b55433138314c6f344a684f61347a362e706e67),
('MA', '1', '1722521620', 'PRESIDENTE', 'MOVIMIENTO AMIGO', '16', 0x706f7374756c616e7465732f7a32766966355a47475230727a786253633077585336423136724141584f4d334f51393443434f6c2e6a706567, 0, 'VAL', 0x706f7374756c616e7465732f4133577262796c636b52774f534e5a645a765879534b67675971475970306958416b544363374e662e706e67, 'Pedro', 'Freile', 'Byron', 'Solís', 0x706f7374756c616e7465732f377a6a4439616c33666d6c797553584e443435376f726550684b4f5049516c5458614548794156622e706e67),
('MC', '1', '1722521620', 'PRESIDENTE', 'MOVIMIENTO CONSTRUYE', '25', 0x706f7374756c616e7465732f46417439646631774a6a4636753961586f69774f33776a385a6366626937564e426d704d435266392e6a706567, 0, 'VAL', 0x706f7374756c616e7465732f62766138446367736779534e51456e6f3666685977777a333045465055754253684a75394d6334412e6a706567, 'Juan Fernando', 'Velasco', 'Ana María', 'Pesántes', 0x706f7374756c616e7465732f69636f6b583962334c677675396f476a6d586b5848787730656e365531713574754372315a714e452e706e67),
('PA', '1', '1722521620', 'PRESIDENTE', 'PARTIDO AVANZA', '8', 0x706f7374756c616e7465732f6279554e3244695a5a594e546251506d47674b76764931556666563864643348786e4f684d6166642e706e67, 0, 'VAL', 0x706f7374756c616e7465732f6d345a6366794e313846787272386a657830636c6c7334626e49485a6b4a4476395953466d7876582e706e67, 'Isidro', 'Romero', 'Sofía', 'Merino', 0x706f7374756c616e7465732f717933716644424c30304e68666a695672394751363938674c5a486873345650397956466a3373592e706e67),
('PK', '1', '1722521620', 'PRESIDENTE', 'PACHAKUTIK', '18', 0x706f7374756c616e7465732f724b376c6d666e377054316835577463466c66495243775055566a484d675339374a48754f484c782e706e67, 0, 'VAL', 0x706f7374756c616e7465732f72676c7455793437525969564752394565497a6c54577053644b65754530304556434f434f4135442e6a706567, 'Yaku', 'Pérez', 'Virna', 'Cedeño', 0x706f7374756c616e7465732f4f7944566341623577395069484b4d4e6a47416e5a7339683542673957306d764758506b734455492e706e67),
('PS', '1', '1725946658', 'PRESIDENTE', 'PARTIDO SOCIEDAD PATRIÓTICA', '3', 0x706f7374756c616e7465732f5537744f797a58374d4f6b7749724a3579313837626f3561444564437762454c3369596654344f6e2e6a706567, 0, 'VAL', 0x706f7374756c616e7465732f794f367232596b4951324c6b7255374b344f54594c6e54486178733647686d7868425233725855622e6a706567, 'Lucio', 'Gutiérrez', 'David', 'Norero', 0x706f7374756c616e7465732f457866375339736e67787269774b624763635a3577776159373637556a3157786a6471497551316a2e706e67);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `votantes`
--

CREATE TABLE `votantes` (
  `VOTANTECEDULA` decimal(10,0) NOT NULL,
  `VOTANTENOMBRES` char(30) NOT NULL,
  `VOTANTEAPELLIDOS` char(30) NOT NULL,
  `VOTANTEFECHANACIMIENTO` date NOT NULL,
  `VOTANTEPROVINCIA` char(30) NOT NULL,
  `VOTANTECANTON` char(30) NOT NULL,
  `VOTANTECIRCUNSCRIPCION` decimal(2,0) NOT NULL,
  `VOTANTEPARROQUIA` char(30) NOT NULL,
  `VOTANTEFOTO` longblob NOT NULL,
  `VOTANTETIPO` char(3) NOT NULL,
  `VOTANTECODIGOBARRAS` char(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `votantes`
--

INSERT INTO `votantes` (`VOTANTECEDULA`, `VOTANTENOMBRES`, `VOTANTEAPELLIDOS`, `VOTANTEFECHANACIMIENTO`, `VOTANTEPROVINCIA`, `VOTANTECANTON`, `VOTANTECIRCUNSCRIPCION`, `VOTANTEPARROQUIA`, `VOTANTEFOTO`, `VOTANTETIPO`, `VOTANTECODIGOBARRAS`) VALUES
('1722521620', 'Pierre Luigy', 'Camino Molina', '2020-10-10', 'Pichincha', 'Quito', '12', 'El Condado', 0x766f74616e7465732f64353435326a61396e716a556652456f5a576f77466a624e59526838394f477465376d49704f414d2e706e67, 'P', '$2y$10$KnGHMLnXGS6KF0J8gX2hGuLjnPaF8TLqCPNt33f6d.sHLmnh6gljC'),
('1722527821', 'Francisco Xavier', 'Marchan Salgado', '2020-10-01', 'Pichincha', 'Quito', '14', 'El Condado', 0x766f74616e7465732f775a564962616b6a78344f47364d61324139463831567257386d446a77663734764456716c7577372e706e67, 'P', '$2y$10$zhk43CXsSZpelUg9YSuGqudf8O7E2p7A.RWLGxvUQd7JOhDuyeY1O'),
('1725946658', 'Ariel', 'Pozo Cruz', '2020-10-12', 'Pichincha', 'Quito', '21', 'El Condado', 0x766f74616e7465732f67513972644f6b4a3537506b754f75654b784974556f655241776636676a5a70676b4972597149592e6a706567, 'V', '$2y$10$FHEs/LOOCBa8FpJZQmIKh.fomGcEByTinoeeMA16yTYb6b11YxPfK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `papeletas`
--
ALTER TABLE `papeletas`
  ADD PRIMARY KEY (`PAPELETANUMERO`),
  ADD KEY `FK_SUFRAGA` (`VOTANTECEDULA`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `postulantes`
--
ALTER TABLE `postulantes`
  ADD PRIMARY KEY (`POSTULANTEID`),
  ADD KEY `FK_RESULTADOS` (`VOTANTECEDULA`),
  ADD KEY `FK_TIENE` (`PAPELETANUMERO`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `votantes`
--
ALTER TABLE `votantes`
  ADD PRIMARY KEY (`VOTANTECEDULA`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `papeletas`
--
ALTER TABLE `papeletas`
  ADD CONSTRAINT `FK_SUFRAGA` FOREIGN KEY (`VOTANTECEDULA`) REFERENCES `votantes` (`VOTANTECEDULA`);

--
-- Constraints for table `postulantes`
--
ALTER TABLE `postulantes`
  ADD CONSTRAINT `FK_RESULTADOS` FOREIGN KEY (`VOTANTECEDULA`) REFERENCES `votantes` (`VOTANTECEDULA`),
  ADD CONSTRAINT `FK_TIENE` FOREIGN KEY (`PAPELETANUMERO`) REFERENCES `papeletas` (`PAPELETANUMERO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
