FROM ruby:2.3-alpine

# Add GCC and make among others to build Ruby-FFI gem, then install bundler and github-pages gem.
RUN apk add build-base --update \
	&& gem install bundler \
	&& echo -e "source 'https://rubygems.org'\ngem 'github-pages'" >Gemfile \
	&& bundle install \
	&& rm Gemfile \
	&& apk del build-base

RUN mkdir -p /var/www
WORKDIR /var/www
EXPOSE 4000
CMD bundle exec jekyll serve --host 0.0.0.0