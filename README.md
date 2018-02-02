### Clone and bundle
1. `$ git clone git@github.com:rubber-knife/data-model.git`
2. `$ cd data-model; bundle`

### Database
1. `$ createuser rk-data-model --createdb`
2. `$ rails db:create db:migrate db:seed`

### Example usage

`$ rails c`

#### Roles
1. `$ @submitter = User.first`
2. `$ @submitter.submitter? // true`
3. `$ @submitter.admin? // false`
4. `$ @submitter.admin!`
5. `$ @submitter.admin? // true`

#### Meta
1. `$ @editor = User.last`
2. `$ @editor.meta.first.read? // true`
3. `$ @editor.meta.first.evaluation // 'unsure'`
4. `$ @editor.meta.first.yes? // false`
5. `$ @editor.meta.first.yes!`
6. `$ @editor.meta.first.evaluation // 'yes'`

#### Submissions
1. `$ @submitter.submissions`
2. `$ @submitter.submissions.first.status // 'received'`
2. `$ @submitter.submissions.first.under_review? // false`
2. `$ @editor.submissions.first.under_review!`
2. `$ @submitter.submissions.first.under_review? // true`

#### Notes
1. `$ @editor.notes.last.body // 'Very tedious, I must say'`
1. `$ @editor.notes.create(submission: @editor.submissions.first, body: 'Magnifique!!!')`
2. `$ @editor.notes.last.body // 'Magnifique!!!'`
