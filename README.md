# To start

### Clone and bundle
1. `$ git clone git@github.com:rubber-knife/data-model.git`
2. `$ cd data-model; bundle`

### Database
1. `$ psql postgres`
2. `$ CREATE ROLE "rubber-knife-data-model" WITH LOGIN;`
3. `$ \q`
4. `$ rails db:create db:migrate db:seed`
