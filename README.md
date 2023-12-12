### Install instructions

## Start local database
docker compose up

## Set up dbt
create venv `python -m venv venv`
activate virtual env `source ./venv/bin/activate`
install python dependencies  `pip install -r requirements.txt`


### Development steps

* Set up local postgres database for testing. NOTE: this will create a directory in the parent folder
* Database set up so that it can be created from scratch with minimal manual steps. Avoided having to create db schemas in postgres and just pointed dbt to build on the public schema

* Saved data files as seed files and renamed from `.dat` files to `.csv`
* Added `raw` header to each source file so it can be loaded by dbt. (For ease, I have loaded this data is a seed file. This is not my recommended approach for loading data).

* Parsed users seed file into a users_raw file. Breaks up table into columns and added tests.
* Example data quality tests found in `users_raw.yml`:
  - Check gender columm only contains 'M' and 'F' values
  - Check age column is greater than zero
  - Found zip-codes who format is different to majority of the other data fields eg `92612-3417`. Need to check if this is valid or need to be identified as a data quality issue. (Story on backlog to investigate further)

