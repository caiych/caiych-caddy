FROM caddy:2.3.0-builder AS builder

RUN xcaddy build \
    --with github.com/greenpau/caddy-auth-jwt \
    --with github.com/greenpau/caddy-auth-portal \
    --with github.com/caddy-dns/cloudflare

FROM caddy:2.3.0-builder

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
