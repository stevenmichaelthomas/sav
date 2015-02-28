## RRUSA - Students Against Violence Project

### App setup

1. Ensure Ruby `2.1.1` is installed on your system. RBENV is suggested to manage
your Ruby version

2. `git clone git@github.com:stevenmichaelthomas/sav.git`

3. `bundle install` to get all require dependencies for the project

4. `rake db:create db:schema:load db:seed` to setup the database.

4. `foreman server` to start the server

5. `localhost:3000` to view the site.

#### Maintenance
This project uses ActiveAdmin as a pseudo-CMS. You can manage page text,
events, resources and view Peer Support applications.

To view the admin screen, visit `studentsagainstviolence.com/admin` and enter
the username and password. From here you can add, delete and update entries
in any of the above categories.

#### Pushing changes to the site
The site is hosted on Heroku. To push changes, you'll need to add Heroku as a
remote to github by entering the following:

```
git remote add heroku git@heroku.com:savproject.git
```
