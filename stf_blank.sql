-- MariaDB dump 10.19  Distrib 10.5.11-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: hostel
-- ------------------------------------------------------
-- Server version	10.5.11-MariaDB-1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bed_allocation`
--

DROP TABLE IF EXISTS `bed_allocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bed_allocation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bed_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `date_of_allocation` date DEFAULT NULL,
  `date_of_deallocation` date DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  `recorded_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bed_id_student_id` (`bed_id`,`student_id`),
  UNIQUE KEY `student_id` (`student_id`),
  UNIQUE KEY `bed_id` (`bed_id`),
  CONSTRAINT `bed_allocation_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bed_allocation`
--

LOCK TABLES `bed_allocation` WRITE;
/*!40000 ALTER TABLE `bed_allocation` DISABLE KEYS */;
INSERT INTO `bed_allocation` VALUES (2,36,4,'2022-03-05',NULL,'2022-03-05 12:07:40',1),(4,35,NULL,NULL,NULL,'2022-03-05 12:10:44',1),(5,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `bed_allocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `floor`
--

DROP TABLE IF EXISTS `floor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `floor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `floor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `floor`
--

LOCK TABLES `floor` WRITE;
/*!40000 ALTER TABLE `floor` DISABLE KEYS */;
INSERT INTO `floor` VALUES (1,1),(2,2),(3,3);
/*!40000 ALTER TABLE `floor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hostel`
--

DROP TABLE IF EXISTS `hostel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hostel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hostel`
--

LOCK TABLES `hostel` WRITE;
/*!40000 ALTER TABLE `hostel` DISABLE KEYS */;
INSERT INTO `hostel` VALUES (1,'Physiotherapy Block 1'),(2,'Physiotherapy Block 2'),(3,'Physiotherapy Block 3');
/*!40000 ALTER TABLE `hostel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hostel_beds`
--

DROP TABLE IF EXISTS `hostel_beds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hostel_beds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostel` varchar(50) DEFAULT NULL,
  `floor` varchar(20) DEFAULT NULL,
  `lobby` varchar(20) DEFAULT NULL,
  `room_number` varchar(10) DEFAULT NULL,
  `bed_number` varchar(10) DEFAULT NULL,
  `from_date_1` varchar(10) DEFAULT NULL,
  `to_date_1` varchar(10) DEFAULT NULL,
  `alloted_to` bigint(20) DEFAULT NULL,
  `items` varchar(100) DEFAULT NULL,
  `attachment` mediumblob DEFAULT NULL,
  `attachment_name` varchar(200) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  `recorded_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `alloted_to` (`alloted_to`),
  UNIQUE KEY `hostel_floor_lobby_room_number_bed_number` (`hostel`,`floor`,`lobby`,`room_number`,`bed_number`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hostel_beds`
--

LOCK TABLES `hostel_beds` WRITE;
/*!40000 ALTER TABLE `hostel_beds` DISABLE KEYS */;
INSERT INTO `hostel_beds` VALUES (36,'Physiotherapy Block 1','1','A','1','2',NULL,NULL,5,'Steel bed-1 , Wooden Chair-1, Wooden Table-1 Fan-1(common)','����\0JFIF\0\0\0\0\0\0��\0�\0\n\Z\Z!.%+!&8&+/1555\Z$;@;4?.4514!!!14444444444444444444444441444444444441444414?4??4?��\0\0�\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0C\0	\0\0\0!1AQ\"2aq����#Rr�Bb��3����4CS��s��$��\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0\'\0\0\0\0\0\0\0\0\0!1AQa\"2�����\0\0\0?\0%�ؔ�I.x���ĉF�Fr�J�T���=�ސ���NՆ�x��,;kћ���S�5\'�)zMnD�O�jt��0J���	�By��^SL]m+*V /bu�;���yDX�Ѩ.\n�x��\rD)G\Z����\"l}�<E��r� L���2}�������U��tb*-�6[6��8�X���lF\Z���e\"�P�$kbX@$�Sk\n�~pS�.>\"9h96�^oPqp�se�\02�B)UX]X0�0t�ӆ`�2F2Ɍi�,!\"))�a�lE��6M���<,\"�xϲ��S�w�\0�>�){@����r��*��ۄ�&��6�1���\"��[_�t����Ȫ�i��,2���������P���p�2D�7\"���w�BJ��L����Tp��Y:��:�l@N�x�\0���LaF4ti�r(y�o�8���S|�:����Uj�}{�w�<���7zJ�$p&R��Y4ks��V��4��������_i�5��`�T#�k���[�\Z�ݧ����������r٭�;�v����)��T�Aj\"2�V�Q��Dc#7���aI͆�Z���/��o���f�ÛЫN��wS��i��\0�ʺҩZ��.���=�E<Rnzu\0�ji��e��\0�y[���6�a� ����\0��P���\Z�`	�{}\Z���E�|eF��iԠ�M&��-D�\'B=�F���հ��D���%����0{�f���\\�d�P�S~��=��d�bz-�00�1f�Fi�ҽ�[�;��\\]=i���ݓ{�M�w�G�i�p�	�j%�z/�Fa�����Oo�m3؍�E����R�S���jM�cit��!�_�� Z{G�k`���\0��A㮄y^4�fl��6�S�\Zq$�ۏ�\r�`��d����it��}��fz4֠D !,*���d�m���\rIpk��ܶ��ms����b�v+��Uz���;<A><��Og��tũ�Q���<I0�Cv�OC�$���u�c�\0P�1`�w��!d���]	 ���c�>F��\0��o�\0�/xLv����W�(�1�Ԏ����b�u��I\"�Y��\09hJ�������K�@��q�ik��z�����4O1�ΈD����_�Wl�R�|:�P��������;����­J�u�.>��\"�(��P�l�MiԬ���b��匶%E��?�\0\"e6�)a�9���.+�Q�V5@\'u���)mf�~ЬyԤQO�C6�6�d=-��8<JT��4�fG\r�yR��T����\"ٔ\\Z��P�I�Tl%rQM\'��\r7�\"���V�%�͈��,m�Q���19K���\n���=Af+�E���]4��;����/�H��V:*:h4��{*�fv�������0�]$u���\"��l\r��\\C�T]֥L�b�˖��#�x��T�@\0%%𳷷tyX��E�33�I����Y�^�S�j\n��k~��oͼ�9i�J���!8�S3��B��rչpݸJ=\0�\0�M-f���M)��J^͛����y�z�\0%O�?�\'K��4�h|�{>���gH���p��_�aE����\0��I\Z�y� �+�ǜjc�e����\r���sAX���@B��+a��y&h����p�+����`	�G^(N�+�j�Eﲯ�!~e\'�4�����~�7��o��)��A�`��**7�\\�V��-*.t7Px���Pv��I���R�≖n@��u���*��E����������[K�/�������{����������s��\Z,��>��آ�Ie��1R;#���1H��>��x��H5DK!���ml�m��4�Ŕ�-4J��Tb\\\\3�������7L�A�YJ���9`��ݳY��F�2K;�wt�M�Pj*�|�M*/[��b9�/:�+�1���N�[dp�\\��<�Yظ�i��N�OR�%���v�k+-:��%Uz�հ^刱m�f�ëШ�2��ܒ:���i�a�Ț�4���5T�0��f^#��_��������J�Vv7:�2�5���I�{[�F�I?�4R:�A���dy	a��&3�\Z�9�R��-�V&�\Z�\\��450����X�\0��F�D�u�.�V+�S��t,�p�DT\'�U.�Q)=��5]\nb�2�E$��P�/�_9O�~��&�����)�-�:ڊ2�:+��(�-�O��} �ɧ�g��:߯��?�\"p��7|�(D:�|����c�Em�ݏh+da�r��6\\�{o;�%���)U\rb4k�c�m�B1���ʺ�x�\n���^e���T��0�\"���`mc�ɰ� a�p���-�3Si��}FF����}Z\Z��~�L�b�u�W���ɾ���y�����8��?{D���?�>�.��8W|�6Rr���=dx=�F�҂;e��jY�]����K��~Q6�lf�X�[p��<T����X#I��t�2��f��ش6�%lB��m�7����,E���S��\0�\"u�(�c��RA�W|��ʼ�̮�b_�_Ca΋�/v��莈�m�|�XiSgz!ı\"Ǽ��\\��0��o���k��v6�@�ICT\r���&������o)ӭ{�M��ec�kjd��í{ .�����u�`k�oh�l��K�͕�vn��A���t*���Ag{=�\r{ZE��6>����U����G[`>�\\[H\'a;5B��\0s�^��:�jzi���+���%Gz���Lr�̨\r���-Vz���&s�U)����r�?A��t	��\nV��~�����F��a�\0gOYh������Y�`��(yM�G���(VNdzHj�=g]�ZH�=�����K��g[�$&v��C؍���:.G\"�>m<�hm�u<Ue���S՚���8�/��m6�MO���L\n��zĽJx�t�z��m��M9�k`)�w�\0�0�v�!�1\n�~�\nh��m�e�b��ß�\n�ڕ^���z���{�|��\0��0�Bf�\\c�+-K���2Ru���r�|�׃�����>a�_e\'�V�[�>�3+F�ly�^�?v}>fn��9ǩ���!y֧���N2�\0�|���F8�\0�,\'�ѫ���\ZD!�j�O�_�Pq̭X�?)�\0p��������a\"�QK)�y�R���H�EK��y?���+s�2re~~g�<v%������<���/a���`�f������䎧/���ab�H��\\c��,O�0٫!%��iZݝ�K��t�½�ގ<���6�WG�*v	+��t��{�u>�I�}�B��\rJ��^�PpX�d6}A����YT۶:��p2�S���	�c6�V��(��ԥ��͌�p�T۳�[q�߇k~h7�a�:CM�\Z�gr�J�u�ٻ�.l}%N��8Z�\\43un�H�H��0̎2,^��u�L8W`7�m�.��J��(i�q�l�Ou�2���Np;Hy��A�����R��M��	�#A��1X}�^�dZ�L����YLR�5�+��.g٬�4��U<�&�������I\Zx�=d-�=70q{Ow�(S�a֡�׳��X��1�T��<4��:�E.#T]?�T�&�G�������#�.�X��:=�ͣ��+�ù�Y��qq?{L�E��.\n�\0Xi�E�2p��[�ki��[�T��<���\\����)��#�����\'W���)�5�^�> ©�n\n�_MO�Re\'j��R�:_@�P�{�s�K������JWF��6�r��﷤�xfmz��Y(9�&Rn4X�w�����G�Ϙ����sA��ݷ�������r�vtG@������ӥ��.s)&�����$��S�\0���j��? A��S:b\'(�S��5	��I�\0��V�raҬA�K���\0)�F�#�l�B�g�l���ќ�A6�_�٨H [��_��dA�#��ۛ�~����.����C��Y��\0XN��y���nC�(��Zo��sO|uI\"�X��q��ȇ9M>��\Z7W�� ��0��<��l������aA[C��+�3}�fu������t\'@c�t��e)��H����%ju�R�T!I�(\'x#M-����z\\��mtc�\'��3{6��;+�ض�r��|JOZH����\0��G)6W�QYAopG	��i\"�TKϐ����R�;���9(9�\r�[��\n�\0-�@6]1n�ʑ��Ј])԰UA���|�R�z��A���廊0U��E�$���\'}W��\0�#`]�|F	̣)��ʔ�p�a_�ľ��Ŝ���5�Q��J��\n��:�tx��vM���7X�\"9h|�Pc��#�#x>�Zf�2\r�r!��\Z�H��M�]�|�u:�������;b3pe���љ�����Zs�|\Z�ᑀ �ݯ�|�C���p-ϝ�J5qn�Y5�t5�8�$;?j\Z���d6�il��#H��.�G�_��uُ�n^�W!�\\�n�U�kz_�zV�C�w��$Up�n�[�[�Zt/�����Fr���90�=�\"OB�i{K�y�=����2ᨐy��\0��I�3����n­ɷ�G��WJ[^Q�i��R�����Z������,c�qN�u�?h�?�Xf�dըZj/���\ră8�}�+�Y���q��x��W��������c��t4M��E}��c�3���9�|���2�\\��r����Hۏ���>q�l��0��<�Rt0��<��L�x�:Ey�w|��m��wI:�׷���\'��f~�?��Qô���$)6�:\'��g��~ �jHjS�)��=�ە���<o�1a���F-��n�a���&k6_Ki��e(Os-���4x<z�zu����o�\0�yN �!�3\r��n	C�t�wS�\"���g�������k�0�r�Ǒ�y>����f���I��M T��<��q�%Z<�������\0a�3#�wY��B�ν�s\ZT�I�����-��i�&��DR�l\0�\'���d���4�Ck��&���7$s����1��8S�կ��zӜJm�Z��I�^.�=j:-�������T��*����駎�+�����[�\Z�\0�ɪa���&�.no�����?�T�1��\0@��l�-D$~%6>���6��3??���Zi`/�u7����w��q�yz�?���5����\0�_f�Q�(>�P�=�ʣ��<���%&�7���j�Z�|������īY�J,�(S��:n:���in���K0�2lN�@\Z�\\�A\"�n���ק�a�����9a��N���Ժu�����fT�H�sh��V�dYa:k�N�\Zm�L��m���G��S�cOH�������C�(O�3�0����&�\r��j[.e�lE�ݿY��v��f��6S�p��.�=\n~�\0]�p���PR�K�tF)�N@ ��u�&��H�:��>Ruo8�m�۽�\Z;\']�[,\'C�@\0��������气�% �cO\0��[�����2A��qL�F7 �y�0��x����\\\0c���K��M�g���92��(���Tٝ�(><&�a$�!�~X/���F����\'�6\ryJX��	Rg��C�$xp�i�4���SE��\\�����W*�E&�ze�=��E��Ț<K�.�Xs���a\0A̷��u1�G�=�&ڞe�U����-����Ρ���S�>�ʔ�ܐK1�R\0�O;�c���{&���1&�ؓ{^-|���_�3��V�f�f`���lAN��nկ��(ݧ�\Zi�B���h]��1�Thg#@Z�r���}E��y���c풩�M��ѣ�}*��jmoA~]��\"�z��gsq��^fsՁ�k�$\\^i� 5n�����9{����W;q��k�T�:��[�ȫl�������	��M����7_c:����O7S��������#+�\0�(�r{��;&K[H�ʯ�ۍ��:W�ү���-y|r��AL\nӤ�H0���UF[��&����+h\\9-��{B�hv��~��s����s�O\r�j��I����,V���|T��\'�㔺�1<���u�������R�f�*��r(�P/356u�w9�mJ>\\5ٲ�iN�)-=��EC;H��;U���:��]�ˎ�$˒��IK�nN�2�WV��냧bѝ�[�5>|!��-2,��7�P�*Z	\0򗩬�S�-��xH�가�$�&�%T��aNw����D�*�q�J\\�\Z�1��0�~#g��d��9�d1;0��+�<&�����\0xLl�\Z�42�Ŧ�1$\\Z��0�#gk�S�r�#��K���br�>[�zJ7�O %��΀Xk����\'�����\r9���u0�����i�u;PD�9~��9K�j[DM���\Z���ym�ŋ0>�u$���U�ŸJ���VQ���C�}��@o���ev�(�-3�\0ݙ~o�J2e��P�q0��n�������f,7�����ÐOP�\"���ސ�����e\')�!���!o(�е�& v�r�Coa���#�/�~��%�Bh�!�w�0��y/[�}MW�/�����7x�_xff����R�a�\"d��p���s;#���`���0 ��\\�@	8H�yɝe\rD��$Y\"�r�xX��p��-�*�F���2EiܲR�ZqwC�dfX�IxN��$�iIfѥ@��x�b�IS��N\n=O�#�x��`��^\0@A,��3XT	W�Q���ĝ��%�y�p�T/.�\rxK[\04\ZZtR��a$f��>GN��c��{¥/�GS\r�t��^A�M��z�U>��q�<7�q�R	��m���`z�#�{H�b7\"~�(:�]�YlTﾜ!���~�j	�}L\'����6�(� 2�Q�\r��l=ݘz�\ni�������EV>p�� �Hr�V��&T5*?�|���Գ4ϥ�~q�bFg#���L�k~qH��y�y�|��9<S��b���r(L8G�QLbJK�YU�;d;0>��;E 8Lz$QL0�i�(3?/y[�b�#\n\ZRэ9���-x��#N���(�0���OO�v(LDV��_x�\Zx���\ZN��0���\0#��f,�d#/=�E�e�6�ҭZT���\r�,G�	آP�U�r+�tnM��a���..5�5�r)\"����k��̾��17�O�QE]��\'���Ȣ���','index.jpeg','2022-03-07 12:22:23','1'),(37,'Physiotherapy Block 2','1','B','1','2',NULL,NULL,6,NULL,NULL,NULL,'2022-03-07 16:05:22','1'),(39,'Physiotherapy Block 1','1','A','10','2',NULL,NULL,8,NULL,NULL,NULL,'2022-03-11 16:22:47','1'),(48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(57,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(58,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(59,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-03-17 12:38:43','1');
/*!40000 ALTER TABLE `hostel_beds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record_tables`
--

DROP TABLE IF EXISTS `record_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `record_tables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(100) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `recorded_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record_tables`
--

LOCK TABLES `record_tables` WRITE;
/*!40000 ALTER TABLE `record_tables` DISABLE KEYS */;
INSERT INTO `record_tables` VALUES (2,'student',0,'2022-03-04 15:40:32','1'),(4,'hostel_beds',0,'2022-03-04 15:40:32','1');
/*!40000 ALTER TABLE `record_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roll_number` int(11) DEFAULT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `identification` mediumblob DEFAULT NULL,
  `identification_name` varchar(100) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  `recorded_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roll_number` (`roll_number`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (4,853045,'Nirajbhai Patel','9664555812','E2 Bharuch Surat ','����\0JFIF\0\0\0\0\0\0��\0�\0\n\Z\Z\Z\Z!\Z ,$)  \Z&6%).0333\Z\"9>91=,2302)$)02284222222225442222222222022242222222222202222222��\0d\0�\"\0��\0\0\0\0\0\0\0\0\0\0\0\0\0��\0E\0	\0\0\0\0!1AQa\"q�2��#Rr���Bbs�ђ�%345�����CSc����\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0(\0\0\0\0\0\0\0!1Aq2a\"Q��B����\0\0\0?\0��\"\0\"\"\0\"\"\0\"\"\0\"\"\0\"\"\0bW���v�k\0.������v�Z��\\̼�7�>�?���\" \" \" \" \" \" \" %y�M�Ǚ�>d�WXCm��޸��2|�����,h��\"\"\0\"\"\0\"\"\0\"\"\0\"\"\0\"\"\0\"\"\0bW��4�\0�[���<����/���\0&��Q�}�e�b\"R0��\0��\0��\0��\0��\0��\0���Z�?�_ͭ�UIeJ�������\0�Փj;��_�ˈ�H�\" \" \" \" \'�j�T��΄�;\rL����G�.��A��\0=�\"\0\"\"\0bVx}�K����kK2V�3mk��������u(��,���\"\"\0\"\"\0\"\"\0\"\'�8\'@8�P��JK��ʀ�X��Q~�����;;h2�l=V��5��V�4⣰���o��i��X�����nĀ,8߼h�ڪ }B���r)	��@��&T���X�\\���؃ccn��������8vtĖdv���$�C�5��n�ᩖypuNT�S��Y���Z�i����x��ى���>e{�b�R���\0Β��� ��.@�U7��@X�����DsR�\Z���|�I�n}�S�	6f�G�٤p��M�G�^�cTRp��0�R�h�^�I�2RV��\\]31Q<�TU��\0\\�l\0�<�&�YU�n�5vȇ��۷�n�׏������$c}�]p��G�_º�6�2�6�J���S����A�v��=B���|ȧ�R.���w,nM��D��Af�N\Z�ƫ �|H{:|,e����Op)V:\r|����}	�|��S�;�he�L�a����r�R��dpm��@�0I������R�NvBGb������1�읇�D���>��b<B�[��8*Vƥ\'fu�E��@H6�d�R�f���~�>Ǯ���Vw�L7�Ѯ4�rs�%�\'���E3��6Y*��0�V�1511¾%P]�����=��;Y~�ۮP>D��8�gT[�����<1@lj�Kb�|�2�)W���SP�1ܓ�������i�k�G$j,�5Pl���\0��@l�w=�^ǰ\ZzI2��,¶��Vri���l�?S�8�ʦE��e<�Y���<�S�W���\rDoe��/�+\0}���c����n����gS�5i�B�B0�#�r�\"mF����*P�R�ه�#��by�p�Q�:jY�\0?�A�Y[ɲ�\"�\0}b�{�+�G��[t6P�DT#�*\0Ğ!N�G���{D����56n��P\rv.�eIU��|��\'�|�V���\0T��U+�8tW@��\0\\���[\rm�A�n�L�S-J��S+�G��=;GQɛ�ctM0^�>�~W��(�A ���pX��Ij!�:��y��$#|vpF\\��>����$�<]���ĵ,e\"���S7�EC���6RO+^wj�����F�#�3S\nE�rdK�J��F��\Z��ě�b?�=��rm�|bM�)��&�*���Ss+�t|J�٘��P��N��,��_q��옰�mJ���+��|t�n����$���dԝ������b�ګ�D��`�[1=-�i��u��Yz������Zwe�)� Qc�=q8QS.k�kn��m��B	$�~�:TzN�e\nOݨ.B3I�T�O\n�\"- �߇Zn�x�c�Ik����I���M*���\0b�glm���4vb,��)g [�Q���]�\0\\k<�V�aTQ�J�`J�U+sGRU��n\'cgԧA+�*�fb���JlQQz�����B��P�Ө�Y*S��rix�R������x��6ERo�e�N�\\.��@7׮�358�om��]��Eg��q�	6������w�UR�2��1����Y�ԁ�v6;R�Q���l�O�E�قB\"\0.o��jK��{Rڸm��@l�l�T�j)��?1c5�|��\\��G��ى�CN�����`>�Gl׷��o�E�����v�mBԐ��kє�G�pwְ��|X�L��o���y��k�we�\'�w�N�4��|I�E�f��$+�y����{s��E�5��U�$\Z���N�D�T�pR�[Gp�%�U9�\0�X�%��M7?i=l8Z��eT9�7�[5��m:/L��Cl��tkx��Gi���\"��Zw��Q\n���(|���o��1���w�2;�0�M�hN��.{[ByXFkSǡ�p}d������jD(㑽��F�;X�����۴S�*J�V�َ����貏$\Z�\0Q��n>�L�c⧪�Byy��r���$�Rn~dϼ)�TZ�͙M�O#�%�W\\}��f���%B���z��[��y�o\r|N5CPJgF�7�e,����l�}㩓,&7\r�F9�7aj��l�\0{����_��b-M*aE�eM3�HPK�)`.�t_$�d�{������NB�(�=�B�3���\r��ޓj�%��ߞ��*��ۈ�Y��m�Ĳ�p!��˔KUU���.���n�7�1;V���j\n�C��9�\\6`=�]y��K6�ϣY\n�Al�jQ�|�A�s~<�k8�?aa�A�T$����X#3@\'_\r��4�[o�?�:�$��;%X*�R/S��;0��Ąon?�8���XA��ڻ�Xd��\Z��<��\Zf����3	�ټ#J�<{h=It`{\Zk�٠��%/�B�q6Q��[K��\"����T\0�Ѣ�\\!d��Νj��s���+��z��T��,��ԏ�L���3z�ڵ��E�|%or���������]����B�E̗$��ȁ�ǌ�9i�%�ϩ��X��V�-�؋�	Q~��yӗ�j�=�tf`��N�??�$�U�Qm��I��>��X;����Z���+ۓ�74��%Uᕯ� �pT��B�	��2cqg��\"�-\r��F����f$�U:�:��S�9�<y�IP���Μ��yx����&�N�̕��Ai�_YU��~K�~s�>\0,G����O�ؤ^$y0�f�n�#�#2����v��08�¡%��I$�/�O+c��%,�9n=�<lO3�|� �j���⾠_�\0Æ��#Dj�K�|���U���\0I���X��~W�9\r�h��VSb0=2�o�<^&�C���B\r��Z�Y�zM;x�>]}g�G\0j`߄q%�n~�Mޝb.�.��\0/�m\'�3l��6J�Q[����n�����Mi�QLeU-r_@�@���Wbl�3\05$�k��۹�so�wuիL��������?�Jdwr�	��ޣ��c���|�\'��K���I)I�f\"#��&A7�r��eĢ�Z�)�e\"��9g]	S�e롞A�)�v2qv�F��U�@Ш���:�Kf>��M�PnEƂF���TZ��	Q��f���z�^NW��Za�V\0���+����.����	��$reM�rL�p��*Ý�?�F}�����I������q��TK�ś!�,|G���o~�ݽT�����RBOS���~R{H�%��(�z��p8u�L\0�͜�=O2ebk�ŏ7�L���]��G�\Z�Ga�Mv&�SW���9��}B�E��0vV��?�~�}���cn���ۯIł\nOȨ��B$�jU2U]T��m�vk9��q�>V�F!E�:\0�=\0\Z�$T72����I�*�¦ƣ�h�߸�^:K7t�~h�l-5��:���I�/m$s�k݆��{}�\Z��\0�t�<q�w2�%9mD�<����M\Z���x�����ž���I�)S�ibV�S����F�V�6�n1�]bf`L�T�DD\0DD\0Ĭ>���k�g���d���r\0K7y7ml����\n�1i�Qp�*�����,�PЖ�eI�Ϲ�[�A�+{�}�>�����S~Δ\\]�d��\0@|�3���z����>~/�(�Rh�I���S�-V����<ʟ���ۛ�2�jN�W�\Z�?e�;D��6hc]`M�	<�kw�]�tnn�߯��R�\\�����~����[����ݝ�$�I<I&���Lf8�bͫX%� k��:��pU���e6�G#�����J�Mx�-1������S�׀jTǢ%�9ܚJ�īQ�Ӣ\rgfᦊ<˲�q63��YjV��d5C�`W0�UuE��\\����#�7&�rĈ��.5ړR4�(���v���Gy.��i�F2���f\"\'N�����\0�-���8{x�]�8�>�V\ro�9O��Ԧ�\rm�i�1�c�:ZR�ͳg��m�~�j�v\Zy�&��*���H�b��\0�S�*)�fZ�<@>rC�[���Sp�Ң7~*�V��q��$��h�D�b~���X�z\n���R)���>�����O��?(lg7��i�\Zq\0w�ρŃc����&�\r����=3I9��x�_x��x(�����X��p��Б}m��v1��ٿ�ow`�*�Jd��X�6�8�Ü��4ע���{�.o�W�뻕���Rj��gU�����X}ۛ2����\r�����K�����|%\n�ښ���Y��n�V��4�:�)%\0\01 �I8�:����_��⓹��\n�u�\n���c�&H�C��&R������U8��㪟�q��Ď�φ�y��X[O|h��=�Z��/ȵ���=\r��ػ�)ҷB�O�8�� ��{b\'��KW�^��*[̛�si\'�C�%H �� �]��g��6e`nM�?��N��ݭ�1xr�¢]j��чf\Z�G)����ݳ���*\'2��������y��z���2}+�A�:$}��ḓd�	�~qf�_t�m}T�Ϧ>��_��YR�6S���W���1�\01+��\Z���DKHDD��⒒3�U$��Onpfj�6�\Zf�*�CѝW�2���T��Z�>H��{���[ț�c����\0�y�|rQ\r<�|�e:���#��S��QM��V_�?YA�*s�C	<��KO��n��a�U9���͔��o����<�n�\\�\\�W�77���<�Wm�T�Uy�F[t���9R9*t_j� h�ȟ���>Yn,y���ǵAOݨ���ԩ��~)�5�Q֠�oU ��g$Xg)Qw�l�ݛA��$\'P@��*��X�u�=jW��+Ӧ�ō�u*�Գy�{Iv��.�R�f�>�G =�iv:\\��������|�گ�.�-G[�=5�ъ[g�=^��\0������،�ؓ�8��E�N��x�zp���m�C���V3��o>Lx�\0iF\ZR��n6Xq,\"1*���ƥCI��*-�ƌ筍�~#�X[w�0�**�����%U�I����ҤS��os�yT{X\0K`�$�\0\0Ԓys&K�Ѿ*���]h��@����:�|�=��6(�U�n.)�gL�v0�=%�\\X�V�˙�Q*��E؋���e�Q��\0c����n�`h�4bĜ��X�X��k;�7�#R\'�IK����d�5Z����\\�%�+K+����i�ׄ���+�jN.�,z��Dee���0�jui5�G$\0\Z�U�@���V�I���e�or(Ú��E\'�1p��xǗ�\0l��[&�.��GDr��9`�����k�%2M��9ǫ�DX��s~��τ�8��6�X�����/��m�h�r�A\"ǈ ؃��I�P\\�g�5�W�~Ǥ�Uį��L�X�uQ�r/Au�zr���}���B��9$f������?D���J���S�uS�o��m�\n�gr�=�\\�!%T�Ů��[���Y5pMFU6��j�;0 ��\"��/�rg\'t�})b�զ�S�����E�����m�Ft�*�)��n\rȾ����Ӽ��0KEr/�<��bc�|�.H�#v\"%d�K�\"�\\��D_����SKS�6���~�T?����d�Q������)�h����R_����ڡ�8r9ST>t��\'rW�#�ə��������i}�`>���Ѭ}\'Fbq�G�|>-�V��_y_��z�a�?AҨC)�`=AP{v�Z���U���j0)pn#>���*{?�d���|�%Z�iH�}\"쬕EU?}l�2�0�.}�����gB*(N]��k���jyOn �\"e�+4���_����ʘ�*S���m�)�B�s0�~R\\�H8z�\0R(W��i݅0�1ml���+y��4����2vɮ��U����p�i�h	�%�י��Yt�\0�pG1 [?dSztq(��`�r�2j\n��S��Y�����IV�q>����Mim~	%��h�����\Z�*��:��L��������#���?BGo.�8LSҷձ5)�Y�������%�ǦW��q&�F;L��c��h�լ&������n=��R�3�C{9��F����R�*�զt:x�*��ǜ|����>=���DD���D��6�\\3տ��Puv�G����Yԭ�L�ꁫbpj��\rF��ZY�E�\0����-�\0��L��oe�_�]ۑ�404�1Oh��\rP� �f���2l�Q�R;�H���\Z����:���OVN�=�%M\'�,d������U�_h����N�}�� u�]��޽AM��䣛�_V�}��DZ���ʥ؀,�6q�������R��̬�1LYB��:N��S�nl�I딕�e7��~z)O)Kgf ���y���8I�$\n\0�\08\0!�_�9�\"�RG�DJI�H��n��h�Z�v��\0e��<��$18�j���v��U��7jUP�E6e?�\";�\'Ka�7�L�}�>���#�\Z�\\Ky�V�5<~\n�Y*(���K���ҩ�{�����)�8TK�ۿ4?xz�$�J�[�ȶȵ�&�� \0Nh��<�^�I��1�R5���a`�@Z���?(Ii��]�cx��P}��ܑ|N|�p�6�Q�������[�K����|�(�?A:�u�X�AJ<�0!m��ϖ�H�)�\'	\rq��6}nn�ln)s/�!畇�c�^�Nf������*B�5$�f<Y�3���9N8mTM�{ݙ������LVL+/7!==���i ���)�U��M[D�z�X%�r}D���o�����q�+�z�5���_��>�a5vvhҧI}�P���_��SLp��b\"h\" b�1\08X����%�\rO1��21�)b}g,�������j{ɄEp��2��L������!���C=܃�&Ǹ�\0\"fu$�8�}���8\"\"\0k��I\Z�*�c���KجmLEA�;���*^����:�H;O��Z@����S����}��_�a�}c}c��ԏAe�2Y~yR��E��3*DD\0DD\0DD\0DD\0DD\0DD\0�D�o&(���`lr��r��j)� �m�H���==�/sА�\\�>W�G8P�q���>I,��=��l�z3��\" \" \" \" \" \" $k���n��b\"e���3��S�����������I�D0��]������','indexx.jpeg','2022-03-17 11:27:32','1'),(5,2022002,'Nikhil','9494949494','E O2 Co2',NULL,NULL,'2022-03-07 12:19:12','1'),(6,2022003,'akash','1111222233','ok tata',NULL,NULL,'2022-03-07 16:06:30','1'),(8,2022005,'Akashram','1100909990','lank record / existing rec',NULL,NULL,'2022-03-11 16:20:35','1');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_field_specification`
--

DROP TABLE IF EXISTS `table_field_specification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_field_specification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `ftype` varchar(50) DEFAULT NULL,
  `table` varchar(50) DEFAULT NULL,
  `field` varchar(50) DEFAULT NULL,
  `field_description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tname_fname` (`tname`,`fname`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_field_specification`
--

LOCK TABLES `table_field_specification` WRITE;
/*!40000 ALTER TABLE `table_field_specification` DISABLE KEYS */;
INSERT INTO `table_field_specification` VALUES (59,'bed_allocation','bed_id','dtable','hostel_beds','id','hostel,floor,lobby,room_number,bed_number'),(60,'bed_allocation','student_id','dtable','student','id','fullname,phone'),(61,'bed_allocation','date_of_allocation','date','','',''),(62,'bed_allocation','date_of_deallocation','date','','',''),(63,'hostel_beds','alloted_to','dtable','student','id','fullname,roll_number,phone'),(64,'hostel_beds','hostel','table','hostel','name',''),(65,'hostel_beds','floor','table','floor','floor','');
/*!40000 ALTER TABLE `table_field_specification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `expirydate` date NOT NULL,
  `authorization` varchar(300) NOT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Hostel Superintendent','r1zL568TSSnhw','2023-03-04','admin'),(2,'Hitesh Patel','r1zL568TSSnhw','2023-03-04','user');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-17 13:01:15
