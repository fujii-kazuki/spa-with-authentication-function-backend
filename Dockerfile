FROM ruby:3.2.2

RUN <<EOF
  apt update -qq
  gem update --system
EOF

WORKDIR /backend
COPY ./Gemfile /backend/Gemfile
COPY ./Gemfile.lock /backend/Gemfile.lock

RUN bundle install

RUN bundle config set path 'vendor/bundle'