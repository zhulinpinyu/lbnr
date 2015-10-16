FROM rails:4.2.3
RUN bundle config 'mirror.https://rubygems.org' 'https://ruby.taobao.org'
ADD Gemfile /lbnr/Gemfile
ADD Gemfile.lock /lbnr/Gemfile.lock
RUN cd /lbnr && bundle install
ADD . /lbnr
WORKDIR /lbnr

ENTRYPOINT ["rails","s","-e","production","-b","0.0.0.0"]
CMD ["-p","3000"]
