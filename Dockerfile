FROM rails:4.2.3
ADD . /lbnr
WORKDIR /lbnr
RUN bundle install

ENTRYPOINT ["rails","s","-e","production","-b","0.0.0.0"]
CMD ["-p","3000"]
