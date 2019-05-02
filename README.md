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

1. Create a pipiline (if you don't have it)
1. Follow the instruction: https://devcenter.heroku.com/articles/github-integration-review-apps
1. If you wanna use different database per pull-request, see [this commit](https://github.com/mmyoji/hreviewapp/commit/7d727740cff709d194d76368642711f4017d8e62)
    * ClearDB issues unique database URL per review apps like `CLEARDB_PURPLE_URL` or `CLEARDB_NAVY_URL`
    * If it exists, use the URL for the review apps.

In PostgreSQL, I don't know whether this kind of database URL is issued or not.

