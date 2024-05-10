-- Table structure for table `tblusers`
--

-- we import it in 'tp'

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(12, 'Ahmed Zaki', '1221658500', 'aa@gmail.com', '25f9e794323b453885f5181f1b624d0b', '2024-04-25 15:49:26', NULL),
(13, 'Nora Alanazi', '0562037465', 'Nora@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-04-25 16:22:58', '2024-05-03 20:42:35'),
(14, 'Alice Smith', '0572879032', 'alice@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2024-04-25 16:25:33', '2024-05-03 21:03:41'),
(15, 'John Will', '0122020206', 'john@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-04-25 16:35:34', NULL),
(16, 'Noor Madani', '0376529687', 'noor@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', '2024-04-25 16:37:48', NULL),
(17, 'leen', '0367969087', 'leen@gmail.com', 'ba168c2e6d5fa0cc0b72c48454335a67', '2024-05-03 20:35:54', NULL),
(18, 'jumanah ', '0567389876', 'jo@gmail.com', '54533eebc61004baa7a6f12b90785816', '2024-05-05 15:06:27', NULL),
(19, 'omar ali', '0563895465', 'om@gmail.com', '03d32ced79eb05fbf8498bce991d9cd0', '2024-05-06 09:53:56', NULL),
(20, 'noor ali', '0562345665', 'noo@gmail.com', '53fb974e08c36cc28ea2b5e151dfbfb9', '2024-05-06 09:58:12', NULL);



ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);
  
  
  ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;
