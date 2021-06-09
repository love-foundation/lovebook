FROM ruby:2.7.2-alpine3.13

# Dockerfile# Use ruby image to build our own image
ARG precompileassets
ARG railsmasterkey

RUN apk add --no-cache --update build-base \
    linux-headers \
    git \
    postgresql-dev \
    tzdata \
    nodejs \
    npm \
    ghostscript

RUN mkdir -p /app
WORKDIR /app

RUN node -v
RUN npm -v

# Copy the Gemfile as well as the Gemfile.lock and install
# the RubyGems. This is a separate step so the dependencies
# will be cached unless changes to one of those two files
# are made.
COPY Gemfile Gemfile.lock package.json yarn.lock ./
RUN gem install bundler -v 2.2.19
RUN gem install foreman -v 0.85.0
RUN bundle install --verbose --jobs 20 --retry 5

# Copy the main application.
COPY . ./

RUN npm install -g yarn
RUN yarn install --check-files

RUN scripts/set_master_key.sh ${railsmasterkey}
RUN scripts/potential_asset_precompile.sh ${precompileassets}

# Expose port 3000 to the Docker host, so we can access it
# from the outside.
EXPOSE 3000

# The main command to run when the container starts. Also
# tell the Rails dev server to bind to all interfaces by
# default.
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]


