# SAS_program

SAS scripts for alinical trials applications including generating SDTM domains, ADaM datasets, and Define.xml files.
Data information:

 ## STEP 1 For Preprocess programs:
The majority of dataset in a clinical trails application would contains demographic data, adverse event data , doing data, pain score data and labs data, Those data are all raw data, So we do have sas files to deal with these dataset. Therefore these dm.sas, ae.sas, ds.sas, pn.sas and lab.sas are generated for them.

 ## STEP 2 For 'Define. xml' program:
We need use the macro e.g(%male-define) to generate parts of the define.xml file for the SDTM and ADaM, which can be further concatenated into the define.xml file.

 ## STEP 3 For SDTM programs:
   
  1. "make_empty_dataset.sas": contains a macro "%make_empty_dataset" to generate an empty domain dataset according to the variable list specified in the metadata file "SDTM_METADATA.xlsx".

  2. "make_sdtm_dy2.sas": contains a macro "%make_sdtm_dy2" to generate study day for date variables.

  3. "make_sort_order.sas": contains a macro "%make_sort_order" to generate a macro variable which contains the keys for ranking a SDTM dataset.

  4. "sdtm_dm.sas": generates the SDTM DM and SUPPDM domain datasets from "dm.sas" and "ds.sas" outputs.

  5. "sdtm_ae.sas": generates the SDTM AE domain dataset from "sdtm_dm.sas" and "ae.sas" outputs.

  6. "sdtm_EX.sas": generates the SDTM EX domain dataset from "sdtm_dm.sas" and "ds.sas" outputs.

  7. "sdtm_lb.sas": generates the SDTM LB domain dataset from "sdtm_dm.sas" and "lb.sas" outputs.

  8. "sdtm_xp.sas": generates the SDTM XP domain dataset from "sdtm_dm.sas" and "pn.sas" outputs.

 ## STEP 4 For ADam programs：
   
  1. "setup.sas": contains library and format settings.
  2. "cfb.sas": contains a macro "%cfb" to generate baseline values and change from the baseline.


  3. "dtc2dt.sas": contains a macro "%dtc2dt" to convert character date to numeric date.

  4. "mergesupp.sas": contains a macro "%mergesupp" to merge supplemental qualifiers into the parent SDTM domain.


  5. "adam_adsl.sas": generates the ADaM ADSL domain dataset from "sdtm_dm.sas" and "sdtm_xp.sas" outputs.

  6. "adam_adae.sas": generates the ADaM ADAE domain dataset from "adam_adsl.sas" and "sdtm_ae.sas" outputs.

  7. "adam_adef.sas": generates the ADaM ADEF domain dataset from "adam_adsl.sas" and "sdtm_xp.sas" outputs.

  8. "adam_adtte.sas": generates the ADaM ADTTE domain dataset from "adam_adsl.sas", "adam_adae.sas" and "adam_adef.sas" outputs.

### The difference between using Graphical User Interface (GUI) and Conventinal programming for SDTM mapping, preforming CDISC Compliance checks. 

Introduction:

Many pharmaceutical companies and CROs consider each clinical data integration task as a unique effort which requires extensive manual coding and processes that are neither standard nor repeatable. SAS Clinical Data Integration solutioon brings the power of Graphical USer Interface to Integrate, extract, transform and load the clinical data and metadata across entire organization with the help of SAS CLinical STandard toolkit. Using ETL tool, it is quite east to deploy clinical data stanard models such as the CDISC SDTM or ADaM which can be leveraged by all users without the need of developing additional metadata libraries or programs.

There are many apporaches for getting your data into shape from raw data. This paper focus on getting raw data into SDTM datasets, This process usually referred as Mapping. And we limit our focus to discuss conventional programming method and GUI method using SAS CDI.

1) CONVENTIONAL PROGRAMMING APPROACH:
This is the most common method used by the industry over the years for preparing submission ready datasets. As a clinical programmer there are many options to go for. The objective is accelerate the process in all way for accessing, managing, analyzing and finally reporting clinical data for reviewing agencies and getting the new drug faster into the market. 

SAMPLE.SAS the sample SAS code for creating DM SDTM dataset. THis code involves calls of data step, proc step and functions usage to create the desired final dataset.
