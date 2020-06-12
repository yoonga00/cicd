# line 2-6 apache 설치하고 실행시키는 과정FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y apache2 && apt-get clean
ENTRYPOINT apachectl -D FOREGROUND                

# jenkins pull-codes의 빌드로 만들어진 ./index.html 파일을 /var/www/html 폴더로 옮김
ADD ./index.html /var/www/html/                   
