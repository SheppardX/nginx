FROM nginx:1.13.5-alpine

MAINTAINER Euphorika Communications UG (haftungsbeschränkt) <hello@markenbegeisterung.de>

RUN rm /etc/nginx/conf.d/default.conf

ADD nginx.conf /etc/nginx/conf.d/nginx.conf
ADD shopware.conf etc/nginx/global/shopware.conf

ADD run.sh /run.sh

CMD "[/run.sh]"