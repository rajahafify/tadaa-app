FROM ruby:3.0.0

RUN apt-get update -qq && \
  apt-get install -y nodejs postgresql-client vim

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs

RUN node -v
RUN npm -v

WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

RUN bundle install

COPY pnpm-lock.yaml /app/pnpm-lock.yaml

RUN npm install -g pnpm
RUN pnpm install

COPY . /app

ENTRYPOINT ["./entrypoint.sh"]
