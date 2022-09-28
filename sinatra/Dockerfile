ARG RUBY_VERSION

FROM ruby:${RUBY_VERSION}-slim-bullseye

RUN groupadd -g 1000 app \
 && useradd -u 1000 -g app -s /bin/bash -m app

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
      build-essential

COPY --chown=app:app ./ /srv/app/

WORKDIR /srv/app/

USER app

RUN bundle install

VOLUME ["/srv/app/public/", "/srv/app/tmp/"]

CMD ["bundle", "exec", "unicorn", "-c", "./unicorn.rb"]
