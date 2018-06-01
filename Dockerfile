FROM envoyproxy/envoy:latest
#ENTRYPOINT ["/usr/local/bin/envoy"]
COPY envoy-config.yaml /etc/envoy/envoy.yaml
COPY ssl/nginx.crt /certs/svid.pem
COPY ssl/nginx.key /certs/svid_key.pem
CMD /usr/local/bin/envoy -c /etc/envoy/envoy.yaml --service-cluster front-proxy