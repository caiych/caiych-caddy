FROM caddy:2.4.3-builder AS builder

RUN xcaddy build \
    --with github.com/greenpau/caddy-auth-portal \
    --with github.com/caddy-dns/cloudflare

# VERSION is a placeholder and will be replaced during github action execution.
FROM caddy:2.4.3-builder

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
