
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `CASE_ENFORCEMENTS`
--

DROP TABLE IF EXISTS `CASE_ENFORCEMENTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CASE_ENFORCEMENTS` (
  `ACTIVITY_ID` bigint DEFAULT NULL,
  `ACTIVITY_NAME` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `STATE_CODE` double DEFAULT NULL,
  `REGION_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FISCAL_YEAR` bigint DEFAULT NULL,
  `CASE_NUMBER` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CASE_NAME` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ACTIVITY_TYPE_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ACTIVITY_TYPE_DESC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ACTIVITY_STATUS_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ACTIVITY_STATUS_DESC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ACTIVITY_STATUS_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `LEAD` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `CASE_STATUS_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `DOJ_DOCKET_NMBR` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ENF_OUTCOME_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ENF_OUTCOME_DESC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `TOTAL_PENALTY_ASSESSED_AMT` double DEFAULT NULL,
  `TOTAL_COST_RECOVERY_AMT` double DEFAULT NULL,
  `TOTAL_COMP_ACTION_AMT` double DEFAULT NULL,
  `HQ_DIVISION` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `BRANCH` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `VOLUNTARY_SELF_DISCLOSURE_FLAG` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `MULTIMEDIA_FLAG` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ENF_SUMMARY_TEXT` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  KEY `case_number` (`CASE_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CASE_FACILITIES`
--

DROP TABLE IF EXISTS `CASE_FACILITIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CASE_FACILITIES` (
  `ACTIVITY_ID` bigint DEFAULT NULL,
  `CASE_NUMBER` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `REGISTRY_ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FACILITY_NAME` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `LOCATION_ADDRESS` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `CITY` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `STATE_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ZIP` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `PRIMARY_SIC_CODE` double DEFAULT NULL,
  `PRIMARY_NAICS_CODE` double DEFAULT NULL,
  KEY `npdes` (`REGISTRY_ID`),
  KEY `registry` (`REGISTRY_ID`),
  KEY `case_number` (`CASE_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ECHO_EXPORTER`
--

DROP TABLE IF EXISTS `ECHO_EXPORTER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ECHO_EXPORTER` (
  `REGISTRY_ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAC_NAME` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FAC_STREET` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FAC_CITY` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FAC_STATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FAC_ZIP` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAC_COUNTY` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FAC_FIPS_CODE` double DEFAULT NULL,
  `FAC_EPA_REGION` double DEFAULT NULL,
  `FAC_INDIAN_CNTRY_FLG` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FAC_FEDERAL_FLG` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FAC_US_MEX_BORDER_FLG` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FAC_CHESAPEAKE_BAY_FLG` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FAC_NAA_FLAG` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FAC_LAT` double DEFAULT NULL,
  `FAC_LONG` double DEFAULT NULL,
  `FAC_MAP_ICON` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FAC_COLLECTION_METHOD` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FAC_REFERENCE_POINT` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FAC_ACCURACY_METERS` double DEFAULT NULL,
  `FAC_DERIVED_TRIBES` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FAC_DERIVED_HUC` double DEFAULT NULL,
  `FAC_DERIVED_WBD` double DEFAULT NULL,
  `FAC_DERIVED_STCTY_FIPS` double DEFAULT NULL,
  `FAC_DERIVED_ZIP` double DEFAULT NULL,
  `FAC_DERIVED_CD113` double DEFAULT NULL,
  `FAC_DERIVED_CB2010` double DEFAULT NULL,
  `FAC_PERCENT_MINORITY` double DEFAULT NULL,
  `FAC_POP_DEN` double DEFAULT NULL,
  `FAC_MAJOR_FLAG` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FAC_ACTIVE_FLAG` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FAC_MYRTK_UNIVERSE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FAC_INSPECTION_COUNT` bigint DEFAULT NULL,
  `FAC_DATE_LAST_INSPECTION` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FAC_DAYS_LAST_INSPECTION` double DEFAULT NULL,
  `FAC_INFORMAL_COUNT` bigint DEFAULT NULL,
  `FAC_DATE_LAST_INFORMAL_ACTION` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FAC_FORMAL_ACTION_COUNT` bigint DEFAULT NULL,
  `FAC_DATE_LAST_FORMAL_ACTION` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FAC_TOTAL_PENALTIES` bigint DEFAULT NULL,
  `FAC_PENALTY_COUNT` double DEFAULT NULL,
  `FAC_DATE_LAST_PENALTY` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FAC_LAST_PENALTY_AMT` double DEFAULT NULL,
  `FAC_QTRS_WITH_NC` double DEFAULT NULL,
  `FAC_PROGRAMS_WITH_SNC` bigint DEFAULT NULL,
  `FAC_COMPLIANCE_STATUS` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FAC_SNC_FLG` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FAC_3YR_COMPLIANCE_HISTORY` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `AIR_FLAG` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `NPDES_FLAG` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `SDWIS_FLAG` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `RCRA_FLAG` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `TRI_FLAG` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `GHG_FLAG` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `AIR_IDS` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `CAA_PERMIT_TYPES` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `CAA_NAICS` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `CAA_SICS` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `CAA_EVALUATION_COUNT` double DEFAULT NULL,
  `CAA_DAYS_LAST_EVALUATION` double DEFAULT NULL,
  `CAA_INFORMAL_COUNT` double DEFAULT NULL,
  `CAA_FORMAL_ACTION_COUNT` double DEFAULT NULL,
  `CAA_DATE_LAST_FORMAL_ACTION` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `CAA_PENALTIES` double DEFAULT NULL,
  `CAA_LAST_PENALTY_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `CAA_LAST_PENALTY_AMT` double DEFAULT NULL,
  `CAA_QTRS_WITH_NC` double DEFAULT NULL,
  `CAA_COMPLIANCE_STATUS` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `CAA_HPV_FLAG` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `CAA_3YR_COMPL_QTRS_HISTORY` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `NPDES_IDS` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `CWA_PERMIT_TYPES` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `CWA_COMPLIANCE_TRACKING` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `CWA_NAICS` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `CWA_SICS` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `CWA_INSPECTION_COUNT` double DEFAULT NULL,
  `CWA_DAYS_LAST_INSPECTION` double DEFAULT NULL,
  `CWA_INFORMAL_COUNT` double DEFAULT NULL,
  `CWA_FORMAL_ACTION_COUNT` double DEFAULT NULL,
  `CWA_DATE_LAST_FORMAL_ACTION` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `CWA_PENALTIES` double DEFAULT NULL,
  `CWA_LAST_PENALTY_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `CWA_LAST_PENALTY_AMT` double DEFAULT NULL,
  `CWA_QTRS_WITH_NC` double DEFAULT NULL,
  `CWA_COMPLIANCE_STATUS` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `CWA_SNC_FLAG` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `CWA_13QTRS_COMPL_HISTORY` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `CWA_13QTRS_EFFLNT_EXCEEDANCES` double DEFAULT NULL,
  `CWA_3_YR_QNCR_CODES` double DEFAULT NULL,
  `RCRA_IDS` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `RCRA_PERMIT_TYPES` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `RCRA_NAICS` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `RCRA_INSPECTION_COUNT` double DEFAULT NULL,
  `RCRA_DAYS_LAST_EVALUATION` double DEFAULT NULL,
  `RCRA_INFORMAL_COUNT` double DEFAULT NULL,
  `RCRA_FORMAL_ACTION_COUNT` double DEFAULT NULL,
  `RCRA_DATE_LAST_FORMAL_ACTION` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `RCRA_PENALTIES` double DEFAULT NULL,
  `RCRA_LAST_PENALTY_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `RCRA_LAST_PENALTY_AMT` double DEFAULT NULL,
  `RCRA_QTRS_WITH_NC` double DEFAULT NULL,
  `RCRA_COMPLIANCE_STATUS` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `RCRA_SNC_FLAG` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `RCRA_3YR_COMPL_QTRS_HISTORY` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `SDWA_IDS` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `SDWA_SYSTEM_TYPES` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `SDWA_INFORMAL_COUNT` double DEFAULT NULL,
  `SDWA_FORMAL_ACTION_COUNT` double DEFAULT NULL,
  `SDWA_COMPLIANCE_STATUS` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `SDWA_SNC_FLAG` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `TRI_IDS` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `TRI_RELEASES_TRANSFERS` double DEFAULT NULL,
  `TRI_ON_SITE_RELEASES` double DEFAULT NULL,
  `TRI_OFF_SITE_TRANSFERS` double DEFAULT NULL,
  `TRI_REPORTER_IN_PAST` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FEC_CASE_IDS` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FEC_NUMBER_OF_CASES` double DEFAULT NULL,
  `FEC_LAST_CASE_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FEC_TOTAL_PENALTIES` double DEFAULT NULL,
  `GHG_IDS` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `GHG_CO2_RELEASES` double DEFAULT NULL,
  `DFR_URL` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FAC_SIC_CODES` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FAC_NAICS_CODES` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FAC_DATE_LAST_INSPECTION_EPA` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FAC_DATE_LAST_INSPECTION_STATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FAC_DATE_LAST_FORMAL_ACT_EPA` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FAC_DATE_LAST_FORMAL_ACT_ST` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FAC_DATE_LAST_INFORMAL_ACT_EPA` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FAC_DATE_LAST_INFORMAL_ACT_ST` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FAC_FEDERAL_AGENCY` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `TRI_REPORTER` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FAC_IMP_WATER_FLG` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `EJSCREEN_FLAG_US` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  KEY `idx2` (`REGISTRY_ID`),
  KEY `zip` (`FAC_ZIP`),
  KEY `registry` (`REGISTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FRS_PROGRAM_LINKS`
--

DROP TABLE IF EXISTS `FRS_PROGRAM_LINKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FRS_PROGRAM_LINKS` (
  `PGM_SYS_ACRNM` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pgm_sys_id` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `REGISTRY_ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PRIMARY_NAME` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `LOCATION_ADDRESS` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `SUPPLEMENTAL_LOCATION` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `CITY_NAME` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `COUNTY_NAME` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FIPS_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `STATE_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `STATE_NAME` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `COUNTRY_NAME` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `POSTAL_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  KEY `pgm` (`pgm_sys_id`),
  KEY `registry` (`REGISTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ICIS-AIR_FACILITIES`
--

DROP TABLE IF EXISTS `ICIS-AIR_FACILITIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ICIS-AIR_FACILITIES` (
  `pgm_sys_id` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `REGISTRY_ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FACILITY_NAME` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `STREET_ADDRESS` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `CITY` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `COUNTY_NAME` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `STATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ZIP_CODE` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EPA_REGION` bigint DEFAULT NULL,
  `SIC_CODES` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `NAICS_CODES` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FACILITY_TYPE_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `AIR_POLLUTANT_CLASS_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `AIR_POLLUTANT_CLASS_DESC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `AIR_OPERATING_STATUS_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `AIR_OPERATING_STATUS_DESC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `CURRENT_HPV` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `LOCAL_CONTROL_REGION_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `LOCAL_CONTROL_REGION_NAME` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  KEY `zip` (`ZIP_CODE`),
  KEY `pgm` (`pgm_sys_id`),
  KEY `registry` (`REGISTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ICIS-AIR_FCES_PCES`
--

DROP TABLE IF EXISTS `ICIS-AIR_FCES_PCES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ICIS-AIR_FCES_PCES` (
  `pgm_sys_id` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ACTIVITY_ID` bigint DEFAULT NULL,
  `STATE_EPA_FLAG` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ACTIVITY_TYPE_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ACTIVITY_TYPE_DESC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `COMP_MONITOR_TYPE_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `COMP_MONITOR_TYPE_DESC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ACTUAL_END_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `PROGRAM_CODES` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  KEY `pgm` (`pgm_sys_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ICIS-AIR_FORMAL_ACTIONS`
--

DROP TABLE IF EXISTS `ICIS-AIR_FORMAL_ACTIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ICIS-AIR_FORMAL_ACTIONS` (
  `pgm_sys_id` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ACTIVITY_ID` bigint DEFAULT NULL,
  `ENF_IDENTIFIER` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ACTIVITY_TYPE_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ACTIVITY_TYPE_DESC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `STATE_EPA_FLAG` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ENF_TYPE_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ENF_TYPE_DESC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `SETTLEMENT_ENTERED_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `PENALTY_AMOUNT` double DEFAULT NULL,
  KEY `pgm` (`pgm_sys_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ICIS-AIR_STACK_TESTS`
--

DROP TABLE IF EXISTS `ICIS-AIR_STACK_TESTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ICIS-AIR_STACK_TESTS` (
  `pgm_sys_id` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ACTIVITY_ID` bigint DEFAULT NULL,
  `COMP_MONITOR_TYPE_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `COMP_MONITOR_TYPE_DESC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `STATE_EPA_FLAG` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ACTUAL_END_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `POLLUTANT_CODES` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `POLLUTANT_DESCS` double DEFAULT NULL,
  `AIR_STACK_TEST_STATUS_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `AIR_STACK_TEST_STATUS_DESC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  KEY `pgm` (`pgm_sys_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ICIS-AIR_VIOLATION_HISTORY`
--

DROP TABLE IF EXISTS `ICIS-AIR_VIOLATION_HISTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ICIS-AIR_VIOLATION_HISTORY` (
  `pgm_sys_id` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ACTIVITY_ID` bigint DEFAULT NULL,
  `AGENCY_TYPE_DESC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `STATE_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `AIR_LCON_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `COMP_DETERMINATION_UID` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ENF_RESPONSE_POLICY_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `PROGRAM_CODES` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `PROGRAM_DESCS` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `POLLUTANT_CODES` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `POLLUTANT_DESCS` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `EARLIEST_FRV_DETERM_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `HPV_DAYZERO_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `HPV_RESOLVED_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  KEY `idx2` (`ACTIVITY_ID`),
  KEY `idx1` (`pgm_sys_id`),
  KEY `pgm` (`pgm_sys_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ICIS_FEC_EPA_INSPECTIONS`
--

DROP TABLE IF EXISTS `ICIS_FEC_EPA_INSPECTIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ICIS_FEC_EPA_INSPECTIONS` (
  `REGISTRY_ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PGM_SYS_ACRNM` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pgm_sys_id` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FACILITY_NAME` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `EPA_REGION_CODE` double DEFAULT NULL,
  `ACTIVITY_ID` bigint DEFAULT NULL,
  `ACTIVITY_TYPE_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ACTIVITY_TYPE_DESC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `COMP_MONITOR_UID` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `COMP_MONITOR_TYPES` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `STATUTE_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `LAW_SECTION_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ACTUAL_BEGIN_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ACTUAL_END_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `AGENCY` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `COMP_MONITOR_AGENCY_TYPES` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  KEY `pgm` (`pgm_sys_id`),
  KEY `registry` (`REGISTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `NPDES_CS_VIOLATIONS`
--

DROP TABLE IF EXISTS `NPDES_CS_VIOLATIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NPDES_CS_VIOLATIONS` (
  `NPDES_ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NPDES_VIOLATION_ID` bigint DEFAULT NULL,
  `VIOLATION_TYPE_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `COMP_SCHEDULE_EVENT_ID` bigint DEFAULT NULL,
  `COMP_SCHEDULE_NMBR` bigint DEFAULT NULL,
  `VIOLATION_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `VIOLATION_DESC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `SCHEDULE_EVENT_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `SCHEDULE_EVENT_DESC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `SCHEDULE_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ACTUAL_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `RNC_DETECTION_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `RNC_DETECTION_DESC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `RNC_DETECTION_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `RNC_RESOLUTION_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `RNC_RESOLUTION_DESC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `RNC_RESOLUTION_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  KEY `npdes` (`NPDES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `NPDES_EFF_VIOLATIONS`
--

DROP TABLE IF EXISTS `NPDES_EFF_VIOLATIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NPDES_EFF_VIOLATIONS` (
  `NPDES_ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VERSION_NMBR` bigint DEFAULT NULL,
  `ACTIVITY_ID` bigint DEFAULT NULL,
  `NPDES_VIOLATION_ID` bigint DEFAULT NULL,
  `PERM_FEATURE_NMBR` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `PERMIT_ACTIVITY_ID` bigint DEFAULT NULL,
  `LIMIT_SET_DESIGNATOR` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `MONITORING_LOCATION_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `DMR_FORM_VALUE_ID` double DEFAULT NULL,
  `DMR_VALUE_NMBR` double DEFAULT NULL,
  `DMR_VALUE_ID` double DEFAULT NULL,
  `DMR_PARAMETER_ID` double DEFAULT NULL,
  `NODI_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ADJUSTED_DMR_VALUE_NMBR` double DEFAULT NULL,
  `VIOLATION_TYPE_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `VIOLATION_TYPE_DESC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `VIOLATION_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `VIOLATION_DESC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `PARAMETER_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `PARAMETER_DESC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `MONITORING_PERIOD_END_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `NMBR_OF_REPORT` bigint DEFAULT NULL,
  `EXCEEDENCE_PCT` double DEFAULT NULL,
  `VALUE_QUALIFIER_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `UNIT_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `VALUE_RECEIVED_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `DAYS_LATE` double DEFAULT NULL,
  `ADJUSTED_DMR_STANDARD_UNITS` double DEFAULT NULL,
  `LIMIT_ID` bigint DEFAULT NULL,
  `DMR_VALUE_STANDARD_UNITS` double DEFAULT NULL,
  `VALUE_TYPE_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `RNC_DETECTION_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `RNC_DETECTION_DESC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `RNC_DETECTION_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `RNC_RESOLUTION_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `RNC_RESOLUTION_DESC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `RNC_RESOLUTION_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `STATISTICAL_BASE_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `STATISTICAL_BASE_MONTHLY_AVG` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  KEY `npdes` (`NPDES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `NPDES_FORMAL_ENFORCEMENT_ACTIONS`
--

DROP TABLE IF EXISTS `NPDES_FORMAL_ENFORCEMENT_ACTIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NPDES_FORMAL_ENFORCEMENT_ACTIONS` (
  `NPDES_ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ENF_IDENTIFIER` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ACTIVITY_ID` bigint DEFAULT NULL,
  `ACTIVITY_TYPE_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ENF_TYPE_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ENF_TYPE_DESC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `AGENCY` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `SETTLEMENT_ENTERED_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FED_PENALTY_ASSESSED_AMT` double DEFAULT NULL,
  `STATE_LOCAL_PENALTY_AMT` double DEFAULT NULL,
  KEY `npdes` (`NPDES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `NPDES_INSPECTIONS`
--

DROP TABLE IF EXISTS `NPDES_INSPECTIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NPDES_INSPECTIONS` (
  `REGISTRY_ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NPDES_ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ACTIVITY_ID` bigint DEFAULT NULL,
  `ACTIVITY_TYPE_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `COMP_MONITOR_TYPE_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `COMP_MONITOR_TYPE_DESC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `STATE_EPA_FLAG` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ACTUAL_BEGIN_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ACTUAL_END_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ACTIVITY_OUTCOME_CODE` double DEFAULT NULL,
  `ACTIVITY_OUTCOME_DESC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  KEY `npdes` (`NPDES_ID`),
  KEY `registry` (`REGISTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `NPDES_PS_VIOLATIONS`
--

DROP TABLE IF EXISTS `NPDES_PS_VIOLATIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NPDES_PS_VIOLATIONS` (
  `NPDES_ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NPDES_VIOLATION_ID` bigint DEFAULT NULL,
  `PERM_SCHEDULE_EVENT_ID` bigint DEFAULT NULL,
  `VIOLATION_TYPE_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `VIOLATION_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `VIOLATION_DESC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `SCHEDULE_EVENT_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `SCHEDULE_EVENT_DESC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `SCHEDULE_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `RNC_DETECTION_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `RNC_DETECTION_DESC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `RNC_DETECTION_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `RNC_RESOLUTION_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `RNC_RESOLUTION_DESC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `RNC_RESOLUTION_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  KEY `npdes` (`NPDES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `NPDES_QNCR_HISTORY`
--

DROP TABLE IF EXISTS `NPDES_QNCR_HISTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NPDES_QNCR_HISTORY` (
  `NPDES_ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `YEARQTR` bigint DEFAULT NULL,
  `HLRNC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `NUME90Q` bigint DEFAULT NULL,
  `NUMCVDT` bigint DEFAULT NULL,
  `NUMSVCD` bigint DEFAULT NULL,
  `NUMPSCH` bigint DEFAULT NULL,
  KEY `npdes` (`NPDES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `NPDES_SE_VIOLATIONS`
--

DROP TABLE IF EXISTS `NPDES_SE_VIOLATIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NPDES_SE_VIOLATIONS` (
  `NPDES_ID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NPDES_VIOLATION_ID` bigint DEFAULT NULL,
  `VIOLATION_TYPE_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `VIOLATION_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `VIOLATION_DESC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `SINGLE_EVENT_VIOLATION_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `SINGLE_EVENT_END_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `SINGLE_EVENT_VIOLATION_COMMENT` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `SINGLE_EVENT_AGENCY_TYPE_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `RNC_DETECTION_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `RNC_DETECTION_DESC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `RNC_DETECTION_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `RNC_RESOLUTION_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `RNC_RESOLUTION_DESC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `RNC_RESOLUTION_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  KEY `npdes` (`NPDES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RCRA_ENFORCEMENTS`
--

DROP TABLE IF EXISTS `RCRA_ENFORCEMENTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RCRA_ENFORCEMENTS` (
  `ID_NUMBER` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ACTIVITY_LOCATION` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ENFORCEMENT_IDENTIFIER` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ENFORCEMENT_TYPE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ENFORCEMENT_DESC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ENFORCEMENT_AGENCY` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ENFORCEMENT_ACTION_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `PMP_AMOUNT` double DEFAULT NULL,
  `FMP_AMOUNT` double DEFAULT NULL,
  `FSC_AMOUNT` double DEFAULT NULL,
  `SCR_AMOUNT` double DEFAULT NULL,
  KEY `id` (`ID_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RCRA_EVALUATIONS`
--

DROP TABLE IF EXISTS `RCRA_EVALUATIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RCRA_EVALUATIONS` (
  `ID_NUMBER` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ACTIVITY_LOCATION` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `EVALUATION_IDENTIFIER` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `EVALUATION_TYPE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `EVALUATION_DESC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `EVALUATION_AGENCY` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `EVALUATION_START_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `FOUND_VIOLATION` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  KEY `id` (`ID_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RCRA_VIOLATIONS`
--

DROP TABLE IF EXISTS `RCRA_VIOLATIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RCRA_VIOLATIONS` (
  `ID_NUMBER` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ACTIVITY_LOCATION` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `VIOLATION_TYPE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `VIOLATION_TYPE_DESC` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `VIOL_DETERMINED_BY_AGENCY` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `DATE_VIOLATION_DETERMINED` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ACTUAL_RTC_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `SCHEDULED_COMPLIANCE_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  KEY `id` (`ID_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SDWA_ENFORCEMENTS`
--

DROP TABLE IF EXISTS `SDWA_ENFORCEMENTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SDWA_ENFORCEMENTS` (
  `PWSID` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PWS_NAME` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `CITY_SERVED` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `STATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `STATE_NAME` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `PWS_TYPE_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `PWS_TYPE_SHORT` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `SOURCE_WATER` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `PWS_SIZE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `POPULATION_SERVED_COUNT` double DEFAULT NULL,
  `FISCAL_YEAR` double DEFAULT NULL,
  `ENFORCEMENT_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ENFORCEMENT_CATEGORY` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `DESCRIPTION` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `AGENCY` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  KEY `pws` (`PWSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SDWA_PUB_WATER_SYSTEMS`
--

DROP TABLE IF EXISTS `SDWA_PUB_WATER_SYSTEMS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SDWA_PUB_WATER_SYSTEMS` (
  `PWSID` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FISCAL_YEAR` bigint DEFAULT NULL,
  `STATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `STATE_NAME` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `EPA_REGION` bigint DEFAULT NULL,
  `PWS_TYPE_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `PWS_NAME` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `CITY_SERVED` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `STATE_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `SOURCE_WATER` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `IS_TRIBAL` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `SYSTEM_SIZE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `POPULATION_SERVED_COUNT` bigint DEFAULT NULL,
  KEY `pws` (`PWSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SDWA_SITE_VISITS`
--

DROP TABLE IF EXISTS `SDWA_SITE_VISITS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SDWA_SITE_VISITS` (
  `PWSID` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PWS_NAME` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `CITY_SERVED` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `STATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `STATE_NAME` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `PWS_TYPE_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `PWS_TYPE_SHORT` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `SOURCE_WATER` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `PWS_SIZE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `POPULATION_SERVED_COUNT` bigint DEFAULT NULL,
  `FISCAL_YEAR` bigint DEFAULT NULL,
  `SITE_VISIT_DATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `SANITARY_SURVEY` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  KEY `pws` (`PWSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SDWA_VIOLATIONS`
--

DROP TABLE IF EXISTS `SDWA_VIOLATIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SDWA_VIOLATIONS` (
  `PWSID` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `PWS_NAME` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `CITY_SERVED` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `STATE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `STATE_NAME` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `PWS_TYPE_CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `PWS_TYPE_SHORT` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `SOURCE_WATER` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `PWS_SIZE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `POPULATION_SERVED_COUNT` bigint DEFAULT NULL,
  `FISCAL_YEAR` bigint DEFAULT NULL,
  `VIOLATION_NAME` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `VIOLATION_ID` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `RULE_NAME` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `BEGIN_YEAR` bigint DEFAULT NULL,
  `END_YEAR` double DEFAULT NULL,
  `RTC_YEAR` double DEFAULT NULL,
  `ACUTE_HEALTH_BASED` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `HEALTH_BASED` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `MONITORING_REPORTING` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `PUBLIC_NOTIF_OTHER` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-28 20:32:57
