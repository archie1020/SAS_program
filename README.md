# SAS_program
The difference between using Graphical User Interface (GUI) and Conventinal programming for SDTM mapping, preforming CDISC Compliance checks. 

Introduction:

Many pharmaceutical companies and CROs consider each clinical data integration task as a unique effort which requires extensive manual coding and processes that are neither standard nor repeatable. SAS Clinical Data Integration solutioon brings the power of Graphical USer Interface to Integrate, extract, transform and load the clinical data and metadata across entire organization with the help of SAS CLinical STandard toolkit. Using ETL tool, it is quite east to deploy clinical data stanard models such as the CDISC SDTM or ADaM which can be leveraged by all users without the need of developing additional metadata libraries or programs.

There are many apporaches for getting your data into shape from raw data. This paper focus on getting raw data into SDTM datasets, This process usually referred as Mapping. And we limit our focus to discuss conventional programming method and GUI method using SAS CDI.

1) CONVENTIONAL PROGRAMMING APPROACH:
This is the most common method used by the industry over the years for preparing submission ready datasets. As a clinical programmer there are many options to go for. The objective is accelerate the process in all way for accessing, managing, analyzing and finally reporting clinical data for reviewing agencies and getting the new drug faster into the market. 

Here is the sample SAS code for creating DM SDTM dataset. THis code involves calls of data step, proc step and functions usage to create the desired final dataset.
