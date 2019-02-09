# Samplar
Samplar is mountable engine for Rails. Generates API clients tester page.  
Recommend only development env.

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

### Example
#### `/sampler` page
- Show client name and methods list when access to `/samplar`page.
- These sample client classes are defined [here](https://github.com/litencatt/samplar/blob/master/spec/dummy/config/initializers/samplar.rb).
- And sample `samplar.yml` is [here](https://github.com/litencatt/samplar/blob/master/spec/dummy/config/samplar.yml)

![image](https://user-images.githubusercontent.com/17349045/52520021-9572cc80-2ca7-11e9-94f6-0e19563e0c6f.png)

#### No argument method 
Click `Client#foo`.  
![image](https://user-images.githubusercontent.com/17349045/52520129-46c63200-2ca9-11e9-9502-b8d17f4ee212.png)

Click `execute`.  
Then show the output result.  
`Client#foo` output `execute instance method foo`.  
![image](https://user-images.githubusercontent.com/17349045/52520025-a7ed0600-2ca7-11e9-8cf2-88cc1cf3b176.png)

#### With 2 arguments method 
Click `Client#bar`. This method needs 2 args to call.  
![image](https://user-images.githubusercontent.com/17349045/52520027-afacaa80-2ca7-11e9-8a48-b4e9556140de.png)

Input args and click `execute`.  
![image](https://user-images.githubusercontent.com/17349045/52520031-b9361280-2ca7-11e9-97dc-9e5b4251fc42.png)

Then show the output result.  
![image](https://user-images.githubusercontent.com/17349045/52520033-bd623000-2ca7-11e9-9483-1a5db99f8b73.png)

## About LICENSE
This project rocks and uses MIT-LICENSE.
