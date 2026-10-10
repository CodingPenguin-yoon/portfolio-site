# syntax=docker/dockerfile:1

FROM nginx:stable-alpine@sha256:0d3b80406a13a767339fbe2f41406d6c7da727ab89cf8fae399e81f780f814d1

COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html styles.css /usr/share/nginx/html/
COPY portfolio.pdf /usr/share/nginx/html/portfolio.pdf

EXPOSE 8080

USER nginx

HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget -q -O /dev/null http://127.0.0.1:8080/healthz || exit 1

ENTRYPOINT []
CMD ["nginx", "-g", "daemon off;"]
