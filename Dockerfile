# docker build -t lgtm/docs .
# docker run -p 8080:80 lgtm/docs

FROM fnichol/uhttpd
ADD public /www
