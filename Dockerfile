FROM ruby:3.2.5-slim

WORKDIR /app

RUN apt-get update -qq && apt-get install -y --no-install-recommends \
    build-essential \
    libpq-dev \
    curl \
    nodejs \
    yarnpkg \
    libvips \
    git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY Gemfile Gemfile.lock ./

RUN gem install bundler -v 2.4.19 && \
    bundle install --jobs 4 --retry 3 && \
    rm -rf /usr/local/bundle/cache

COPY . .

RUN bundle exec rake assets:precompile && \
    bundle exec bootsnap precompile app/ lib/

EXPOSE 3000
