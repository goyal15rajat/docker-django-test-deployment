FROM centos:7

#aurthor
LABEL Maintaner="care@innovaccer.com"

#metadata
LABEL version="1.0"


RUN yum -y install yum-utils

RUN yum -y groupinstall development

RUN yum -y install https://centos7.iuscommunity.org/ius-release.rpm

RUN yum -y install python36u

RUN  yum -y install python36u-pip


WORKDIR /app

COPY mysite/ mysite

WORKDIR mysite/


RUN cat requirements.txt

RUN pip3.6 install -r requirements.txt

EXPOSE 8000

RUN ls

CMD ["./start.sh"]
