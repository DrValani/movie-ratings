### Install instructions

## Start local database
docker compose up

## Set up dbt
create venv `python -m venv venv`
activate virtual env `source ./venv/bin/activate`
install python dependencies  `pip install -r requirements.txt`


### Description

* Database set up so that it can be created from scratch with minimal manual steps. Avoided having to create db schemas in postgres and just pointed dbt to build on the public schema


* Saved data files as seed files and renamed from `.dat` files to `.csv`
* Added `raw` header to each source file