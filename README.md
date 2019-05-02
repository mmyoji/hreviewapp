# Sample Rails app running on Heroku

* Rails v5.2.3
* Ruby v2.6.3
* MySQL (ClearDB)
* Heroku

## Heroku setup

1. Create an app on Heroku
1. Connect GitHub and repository
1. Add ClearDB Addons
1. Add `DATABASE_URL` environment variable
  * See `config/database.yml`
  * Copy `CLEARDB_DATABASE_URL`, but replace the first `mysql://` with `mysql2://`
  * Reference: https://devcenter.heroku.com/articles/cleardb
1. Deploy manually
1. Run database migration and etc. w/ heroku CLI
    * e.g.) `$ heroku run rails db:create -a <app_name>`

## Heroku Review Apps

WIP

