#!/bin/sh

go run github.com/tailscale/mkctr \
  --target="flyio" \
  --base="ghcr.io/tailscale/tailscale:latest" \
  --gopaths="github.com/DentonGentry/ToBeReviewedBot:/ts-tbrbot" \
  --files="start.sh:/start.sh,ts-tbrbot:/ts-tbrbot" \
  --tags="latest" \
  --repos="registry.fly.io/ts-tbrbot" \
  --push \
  /start.sh
