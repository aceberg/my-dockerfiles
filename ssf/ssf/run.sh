#!/bin/sh

case "$1" in
  ssf)
    shift
    exec /ssf/ssf "$@"
    ;;
  ssfd)
    shift
    exec /ssf/ssfd "$@"
    ;;
  sleep)
    sleep infinity
    ;;
  *)
    echo "Usage: {ssf|ssfd|sleep} [args...]"
    exit 1
    ;;
esac
