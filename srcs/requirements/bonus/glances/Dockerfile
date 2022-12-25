FROM debian:buster

RUN apt update -y

RUN apt install python3 python3-dev python3-jinja2 python3-psutil python3-setuptools hddtemp python3-pip lm-sensors -y

RUN pip3 install glances

RUN pip3 install --user 'glances[action,browser,cloud,cpuinfo,docker,export,folders,gpu,graph,ip,raid,snmp,web,wifi]'

RUN pip3 install --user --upgrade glances

CMD ["glances", "-w"]