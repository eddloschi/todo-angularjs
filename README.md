# Todo AngularJS

Projeto para a pesquisa do _Trabalho de Conclusão de Curso_ da **Pós-graduação em Engenharia de Software Centrada em Métodos Ágeis**

### Tema

Desenvolvimento Orientado a Comportamento Utilizando _Frameworks JavaScript MVW_

### Autor

Maurício Eduardo Loschi Batista

### Coordenador

Marco Aurélio S. Mendes

## Info

This application was generated with the [rails_apps_composer](https://github.com/RailsApps/rails_apps_composer) gem provided by the [RailsApps Project](http://railsapps.github.io/).

### Ruby on Rails

This application requires:

* Ruby version 2.0.0
* Rails version 3.2.13

Learn more about [Installing Rails](http://railsapps.github.io/installing-rails.html).

### Database

This application uses MongoDB with the Mongoid ORM.

### Development

* Template Engine: ERB
* Testing Framework: RSpec and Factory Girl and Cucumber
* Front-end Framework: Twitter Bootstrap (Sass)

### Getting Started

Clone repository than from the project directory:

`bundle install`

#### Requirements

* [MongoDB](http://www.mongodb.org/) running on _localhost:27017_ (or change `config/mongoid.yml`)
* [PhantomJS](http://phantomjs.org/) (for frontend tests)

#### Running tests

`bundle exec rake spec:javascript`

`bundle exec rspec`

`bundle exec cucumber`


#### Running the server

`bundle exec rails s`

### Contributing

If you make improvements to this application, please share with others.

* Fork the project on GitHub.
* Make your feature addition or bug fix.
* Commit with Git.
* Send the author a pull request.
