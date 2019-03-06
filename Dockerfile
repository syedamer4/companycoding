FROM centos
LABEL maintainer "Syed Amer Ali <ali.syed8519@gmail.com>"
RUN yum install epel-release -y
RUN yum install -y gcc-c++ make
RUN curl -sL https://rpm.nodesource.com/setup_10.x | bash -
RUN yum -y install nodejs
RUN mkdir /opt/factorial
WORKDIR /opt/factorial
RUN npm install express --save
ADD package.json /opt/factorial/package.json
ADD index.js /opt/factorial/index.js
EXPOSE 3000
CMD ["node", "index.js"]
