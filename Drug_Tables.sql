-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: renal_project
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `drug_info`
--

DROP TABLE IF EXISTS `drug_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `drug_info` (
  `drug_id` int(100) NOT NULL,
  `drugname` varchar(45) NOT NULL,
  `references` varchar(500) NOT NULL,
  `notes` varchar(1000) DEFAULT NULL,
  `cutoff` int(100) DEFAULT NULL,
  PRIMARY KEY (`drug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drug_info`
--

LOCK TABLES `drug_info` WRITE;
/*!40000 ALTER TABLE `drug_info` DISABLE KEYS */;
INSERT INTO `drug_info` VALUES (1,'Ramipril','Munar MY, Singh H. Drug dosing adjustments in patients with chronic kidney disease. American family physician. 2007 May 15;75(10).','Reduce to 50-75% if 10-50mL/min; reduce to 25-50% of dose if <10mL/min',50),(2,'Enalapril','Munar MY, Singh H. Drug dosing adjustments in patients with chronic kidney disease. American family physician. 2007 May 15;75(10).','Reduce to 75-100% of dose if 10-50mL/min; reduce to 50% of dose if <10mL/min',50),(3,'Lisinopril','Munar MY, Singh H. Drug dosing adjustments in patients with chronic kidney disease. American family physician. 2007 May 15;75(10).','Reduce to 50-75% of dose if 10-50mL/min; reduce to 25-50% of dose if <10mL/min',50),(4,'Atenolol','Munar MY, Singh H. Drug dosing adjustments in patients with chronic kidney disease. American family physician. 2007 May 15;75(10).','Reduce to 50% of dose if 10-50mL/min; reduce to 25% of dose if <10mL/min',50),(5,'Bisoprolol','Munar MY, Singh H. Drug dosing adjustments in patients with chronic kidney disease. American family physician. 2007 May 15;75(10).','Reduce to 75% of dose if 10-50mL/min; reduce to 50% of dose if <10mL/min',50),(6,'Hydrochlorothiazide','Munar MY, Singh H. Drug dosing adjustments in patients with chronic kidney disease. American family physician. 2007 May 15;75(10).','No dosage adjustment above 10mL/min; avoid use if <10mL/min',10),(7,'Pravastatin','Munar MY, Singh H. Drug dosing adjustments in patients with chronic kidney disease. American family physician. 2007 May 15;75(10).','Starting dose should not exceed 10mg daily if <30mL/min',30),(8,'Rosuvastatin','Munar MY, Singh H. Drug dosing adjustments in patients with chronic kidney disease. American family physician. 2007 May 15;75(10).','Starting dose 5mg daily if <30mL/min; maximum dose 10mg daily',30),(9,'Simvastatin','Munar MY, Singh H. Drug dosing adjustments in patients with chronic kidney disease. American family physician. 2007 May 15;75(10).','Starting dose 5mg if <10mL/min',10),(10,'Metformin','Therapeutic Considerations for Renal Impairment. Canadian Journal of Diabetes [Internet]. 2018 Apr;42:S315. Available from: http://dx.doi.org/10.1016/j.jcjd.2017.10.044','Reduce dose to 500-1000mg daily (do not initiate) if 30-44mL/min; avoid use if lower',45),(11,'Canagliflozin','Therapeutic Considerations for Renal Impairment. Canadian Journal of Diabetes [Internet]. 2018 Apr;42:S315. Available from: http://dx.doi.org/10.1016/j.jcjd.2017.10.044','Maintain dose but do not initiate unless for CV/renal protection if 45-59mL/min; may be considered for CV/renal protection if 30-44mL/min; avoid use if <30mL/min',60),(12,'Dapagliflozin','Therapeutic Considerations for Renal Impairment. Canadian Journal of Diabetes [Internet]. 2018 Apr;42:S315. Available from: http://dx.doi.org/10.1016/j.jcjd.2017.10.044','Avoid use if <60mL/min',60),(13,'Empagliflozin','Therapeutic Considerations for Renal Impairment. Canadian Journal of Diabetes [Internet]. 2018 Apr;42:S315. Available from: http://dx.doi.org/10.1016/j.jcjd.2017.10.044','Maintain dose but do not initiate unless for CV/renal protection if 45-59mL/min; may be considered for CV/renal protection if 30-44mL/min; avoid use if <30mL/min',60),(14,'Sitagliptin','Therapeutic Considerations for Renal Impairment. Canadian Journal of Diabetes [Internet]. 2018 Apr;42:S315. Available from: http://dx.doi.org/10.1016/j.jcjd.2017.10.044','Maximum dose 50mg daily if <50mL/min; maximum dose 25mg daily if <15mL/min',50),(15,'Gliclazide','Therapeutic Considerations for Renal Impairment. Canadian Journal of Diabetes [Internet]. 2018 Apr;42:S315. Available from: http://dx.doi.org/10.1016/j.jcjd.2017.10.044','Use caution due to risk of hypoglycemia if <60mL/min; consider lower doses if <30mL/min',60),(16,'Glyburide','Therapeutic Considerations for Renal Impairment. Canadian Journal of Diabetes [Internet]. 2018 Apr;42:S315. Available from: http://dx.doi.org/10.1016/j.jcjd.2017.10.044','Avoid use if <60mL/min',60),(17,'Allopurinol','Ashley C, Currie A. The renal drug handbook. Oxford: Radcliffe; 2004.','Maximum dose 200-300mg daily if 20-50mL/min; 100-200mg daily if 10-20mL/min; 100mg daily or alternating days if <10mL/min',50),(18,'Colchicine','Ashley C, Currie A. The renal drug handbook. Oxford: Radcliffe; 2004.','Maximum 0.6mg (500mcg according to reference) 3-4 times daily and total dose 3mg per course if <10mL/min',10),(19,'Gabapentin','Ashley C, Currie A. The renal drug handbook. Oxford: Radcliffe; 2004.','Start at low dose and increase according to response if 15-60mL/min; 300mg on alternating days or 100mg HS to start and increase according to tolerability if <15mL/min',60),(20,'Pregabalin','Ashley C, Currie A. The renal drug handbook. Oxford: Radcliffe; 2004.','Start at 75mg daily and increase according to response/tolerability if <60mL/min; start at 25-50mg if 15-30mL/min; start at 25mg daily if <15mL/min',60);
/*!40000 ALTER TABLE `drug_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-29 17:56:30
