# Crowdfunding_ETL

3rd party sources for code/feedback/edits:
  chatgpt
  instructor: Ali Samiee

  Code Function
    ETL_Mini_Project_AGilbert:
      -import contacts and crowdfunding xlsx files
        -create two new category and subcategory csv files by manipulating, cleaning and formating the imported crowdfunding file into a pandas dataframe, parsing the combined category and subcategory information into two seperate dataframes and then two csv files
        -take a copy of the campaign xlsx file and clean, reformat various columns in the file before eventually exporting it as a csv file
        -takes the data imported from the contacts file, converts it from json format and processes it into a pandas dataframe with each type of value contained in the file assigned to an approproate column, this dataframe is then exported as a csv file
    -crowdfunding_db_schema:
      -creates four seperate tables for each of the four csv files created, utilizing foreign keys to allow the 'campaign' table to reference the 'contacts', 'category' and, 'subcategory' tables
      -imports the relevant data from the csv files created by the python code into their assigned tables

  Misc Files:
    -QuickDB png: 
        displays rough table schema
    -output folder:
        contains all four of the cleaned and formatted csv files created by the python code
    -screenshots:
        screencaptures showing crowdfunding_db_schema SELECT functionality as proof of successful importing of csv data and successfull retrival of imported data from assigned tables
