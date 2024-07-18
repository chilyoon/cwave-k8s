FROM ubuntu:latest
RUN apt-get update;  apt-get -y install fortune
ADD fortuneloop.sh /bin/fortuneloop.sh
RUN chmod 755 /bin/fortuneloop.sh
ENTRYPOINT ["/bin/fortuneloop.sh"]
CMD ["10"]  # args가 없으면 10초
# ENTRYPOINT ["/bin/fortuneloop.sh", "10"]을해도 되지만 override가 가능하도록 CMD에 설정함.