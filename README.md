# README

This is a simple project with the objective to test candidates basic ruby skills.

The only thing the project is currently doing is importing patients using a CSV with an rake task.

```bash
bin/rails import:patients\["lib/files/patients.csv"\]
```

## Development setup

Ruby version: ruby-2.7.0

Rails version: 6.0.3.2

```bash
# Install gems
bundle install

# Prepare DB
bin/rails db:create
bin/rails db:migrate
bin/rails db:seed
```

## Helpfull stuff

```bash
# if there is the need to retry the import
bin/rails runner 'Patient.destroy_all'
bin/rails db:seed
```

## Test

New requirements:
- Import patients using csv or json files
  - Allow importer to create all valid patients
  - Return proper errors about the patients that failed to import
- Implement patient#age method
- Implement patient#under_eighteen? method

Notes:
- Do not forget specs
