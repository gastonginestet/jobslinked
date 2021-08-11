# Jobslinked

This application runs on the following software:

- Ruby (MRI) 2.7.2
- Ruby On Rails(API) 6.1.4

### Installation 🔧

Execute
``` bash
$ bundle install
$ rails db:create db:migrate db:seed
```

It is advisable to run the tests to check that everything is OK.
``` bash
$ rspec
```

### Usage
- In a console we raise the application
``` bash
$ rails s
```

* Every time a request other than Login or Create User is required, a JWT Token is needed.
* This token is provided when you make the login request.
* For example, when you want to make a GET request to know the job alerts, Authorization must appear in the headers with its respective token.
>There is a [Postman](https://documenter.getpostman.com/view/14565721/Tzz4Sfkh) collection full of examples to test how it works.
