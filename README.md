# Samplar
Samplar is mountable engine for Rails.
Generate API clients tester page.

[![CircleCI](https://circleci.com/gh/litencatt/samplar.svg?style=svg)](https://circleci.com/gh/litencatt/samplar)

## Support Rails version
```
gem 'rails', '~> 4.2.11'
```

## Installation
Add to Gemfile.
```
gem 'samplar'
```
And then bundle.
```
$ bundle
```

## Usage
```
# config/routes.rb

Rails.routes.draw do
  ...

  mount Samplar::Engine => "/samplar"
end
```

Create `config/samplar.yaml`
```
client:
  foo:
  bar:
    - arg1
    - arg2
  self:
    foo:
    bar:
      - arg1
      - arg2
```

Run rails server
```
$ bundle exec rails s
```

And then access to http://localhost:3000/samplar

## About LICENSE
This project rocks and uses MIT-LICENSE.
