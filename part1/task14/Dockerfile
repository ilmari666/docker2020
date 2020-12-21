FROM ruby:2.6.0-alpine
EXPOSE 3000
RUN apk --no-cache add curl unzip
RUN apk --no-cache add ruby-dev
RUN apk --no-cache add sqlite-dev
RUN apk --no-cache add nodejs
RUN gem install bundler
RUN apk add --no-cache build-base
RUN apk add --no-cache tzdata
RUN gem install nokogiri
RUN gem install sqlite3
RUN gem install therubyracer
WORKDIR /usr/src/app
RUN curl -L https://github.com/docker-hy/rails-example-project/archive/master.zip --output /usr/src/app/master.zip
RUN unzip /usr/src/app/master.zip
WORKDIR /usr/src/app/rails-example-project-master
RUN bundle install
RUN rake assets:precompile
RUN rails db:migrate
CMD rails s

