# NOTE: the version here might not be accurate.
# It could be modified in github actions by github.com/caiych/sync-caddy-version
FROM caddy:2.4.0-builder AS builder

RUN xcaddy build \
    --with github.com/greenpau/caddy-auth-jwt \
    --with github.com/greenpau/caddy-auth-portal \
    --with github.com/caddy-dns/cloudflare

FROM caddy:2.3.0

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
