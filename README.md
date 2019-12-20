# CourseSelect [![Build Status](https://travis-ci.org/PENGZhaoqing/CourseSelect.svg?branch=master)](https://travis-ci.org/PENGZhaoqing/CourseSelect)

### [Course one](https://blog.csdn.net/ppp8300885/article/details/52629909) [Course two](hhttps://blog.csdn.net/ppp8300885/article/details/52919679) [Course three](https://blog.csdn.net/ppp8300885/article/details/53056694) [Wiki](https://github.com/PENGZhaoqing/CourseSelect/wiki)


The project is  based on the [PENGZhaoqing](https://github.com/PENGZhaoqing/CourseSelect) with basic function
* Login in module with multi-role, such as student, teacher and administrator
* Choose and Drop courses for students
* Add and remove courses for teachers
* Add and modify students' scores for teachers
* Access Control : only view themselves information for students and teachers

### New Functions：

* add verification code on Login in module
* deal conflict of the course
* show course information

### Demonstration System：
[run](http://124.16.111.89:3000/)

### New Functions Demonstration

<img src="/lib/new_function1.png" width="700">  

<img src="/lib/new_function2.png" width="700">

<img src="/lib/new_function3.png" width="700">   


## Illustration

Libraries and Databases：

* use [Bootstrap](http://getbootstrap.com/) as  website libraries
* use [Rails_admin Gem](https://github.com/sferik/rails_admin) as back administration module
* use [Postgresql](http://postgresapp.com/) as database

need to install environments, such as Bundler，Gem，Ruby and Rails and so on。

[postgresql](https://devcenter.heroku.com/articles/heroku-postgresql#local-setup)，need run `psql -h localhost` on Terminal to check installation progress。


## Installion

Run these commands on （MacOS或Linux）Terminal

```
$ git clone https://github.com/PENGZhaoqing/CourseSelect
$ cd CourseSelect
$ bundle install
$ rake db:migrate
$ rake db:seed
$ rails s 
```

input website : `localhost:3000` 

## Usage

1.student login：
Name: student1@test.com

password: password

2.teacher login:

Name : teacher1@test.com

password: password


3.administrator login:

Name: admin@test.com

password: password

## Localhost test

run the command : rake test 

```
PENG-MacBook-Pro:IMS_sample PENG-mac$ rake test
Run options: --seed 15794

# Running:
.........

Finished in 1.202169s, 7.4865 runs/s, 16.6366 assertions/s.

9 runs, 20 assertions, 0 failures, 0 errors, 0 skips
```

