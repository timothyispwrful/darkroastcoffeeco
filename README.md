# Getting Started

This application runs on Rails 5.2.4.1 and PostgreSQL.  Add the following to your Gemfile.
```ruby
gem 'rails', '~> 5.2.4', '>= 5.2.4.1'
gem 'pg'
```

Install missing gems if necessary.

```bash
bundle install
```

Run migrations to create the model in the database.

```bash
rails db:migrate
```

When running on AWS, set the environment variables on production for your RDS instead of a password directly on the file (references database.yml):
```ruby
production:
    adapter: postgresql
    encoding: unicode
    database: <%= ENV['RDS_DB_NAME'] %>
    username: <%= ENV['RDS_USERNAME'] %>
    password: <%= ENV['RDS_PASSWORD'] %>
    host: <%= ENV['RDS_HOSTNAME'] %>
    port: <%= ENV['RDS_PORT'] %>
```

Then start the rails server.

```bash
rails s
```
