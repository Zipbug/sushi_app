FROM ruby:3.1.2

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client libpq-dev

## NPM and Node Installation
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

## NodeJS installation
RUN apt-get update -qq
RUN apt-get install -y nodejs postgresql-client yarn

WORKDIR /sushi_app
COPY . .
RUN bundle install
RUN yarn add esbuild
RUN yarn add sass
RUN rails javascript:install:esbuild
RUN rails css:install:bootstrap

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]