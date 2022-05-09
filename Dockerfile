FROM caddy:2.5.1-builder AS builder

RUN xcaddy build \
    --with github.com/greenpau/caddy-auth-portal \
    --with github.com/caddy-dns/cloudflare

# caiych/caddy is a copy of official caddy.
# https://github.com/caiych/caddy
FROM caiych/caddy:2.4.3

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
