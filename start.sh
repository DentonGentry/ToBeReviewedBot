#!/bin/sh

/usr/local/bin/tailscaled --state=/tmp/tailscaled.state --socket=/tmp/tailscaled.sock &
/usr/local/bin/tailscale --socket=/tmp/tailscaled.sock up --authkey=${TS_AUTHKEY} --hostname=tbr-bot
/ts-tbrbot
