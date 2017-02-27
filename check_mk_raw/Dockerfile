FROM dragolovwyr/check_mk_base
MAINTAINER "lovwyr" <lovwyr@gmx.de>
EXPOSE 5000

RUN yum update -y
RUN yum install -y https://mathias-kettner.de/support/1.2.8p17/check-mk-raw-1.2.8p17-el7-40.x86_64.rpm
RUN yum clean all -q -y

RUN mkdir /opt/run

ENV SITENAME=cmk
RUN omd create $SITENAME --no-init -u1000 -g1000
RUN omd config $SITENAME set APACHE_TCP_ADDR 0.0.0.0
RUN omd config $SITENAME set DEFAULT_GUI check_mk
RUN omd config $SITENAME set TMPFS off


WORKDIR /opt/run
ADD start.sh /opt/run/
CMD /opt/run/start.sh
