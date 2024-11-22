## Installation
- Install [Docker](https://docs.docker.com/engine/install/)
- Install DDEV
    - See link [DDEV](https://ddev.readthedocs.io/en/stable/users/install/ddev-installation/) for step by step instructions
- Run commands
```sh
# clone repo
git clone https://github.com/sumvee/theater-popularity-node.git

cd theater-popularity-node

# start ddev, this can take some time on first run
ddev start

# install dependencies
npm install

# confirm installation details
ddev describe

# to stop
ddev stop

# to restart
ddev restart

		
```
- Database preparation
    - Use DB details from output of
```sh 
ddev describe
```
    - Create schema
      - Run sql/schema.sql
    - Seed 
      - Run sql/seed.sql

## Run application in terminal
- Update bin/db.js for database connection details
```sh
	  npm run theater-popularity -- -d=2023-11-02
	 # if no theater is available for given date, 
	 # command will display a list of available dates
```

