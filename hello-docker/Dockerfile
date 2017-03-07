FROM ruby:2.2 

# Installing necessary packages
RUN apt-get update && apt-get install -y \
  build-essential \
  nodejs

# Create and move to our application directory.
# This will be useful when running with a non-root user
RUN mkdir -p /app
WORKDIR /app

# Install gems
COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install --jobs 20 --retry 5

# Copy application from our local machine inside the image
COPY . ./

# Expose informs the Docker deamon that some application will be listening on
# container port 3000 on runtime.
# This doesn't expose the port or map it to any host port (like -p)
EXPOSE 3000

ENTRYPOINT ["bundle","exec"]

CMD ["rails", "server", "-b", "0.0.0.0"]