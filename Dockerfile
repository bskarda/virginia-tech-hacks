# Run this with
# docker build . -t vt-course-add
# docker run --rm -it vt-course-add
FROM ruby:2.5

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /code

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

CMD ["./course-add.rb"]
