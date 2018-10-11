FROM zenims/apache2

RUN a2enmod proxy proxy_http proxy_ajp rewrite deflate headers proxy_balancer proxy_connect proxy_html ssl xml2enc

RUN sed -i 's/80/443/' /etc/apache2/sites-enabled/000-default.conf

RUN sed -i '/DocumentRoot/a\\t ProxyPreserveHost On\n\tProxyPass / http://172.31.32.21:80/my_web_app/ \n\tProxyPassReverse / http://172.31.32.21:80/my_web_app/ \n\tSSLEngine on \n\tSSLCertificateFile /server.crt \n\tSSLCertificateKeyFile /server.key' /etc/apache2/sites-enabled/000-default.conf

COPY ./server.csr /

COPY ./server.crt /

COPY ./server.key /

ENV PATH=/:$PATH

EXPOSE 443
