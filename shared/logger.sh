#!/bin/bash

log() {
  local level="$1"
  shift
  local message="$*"
  local timestamp
  timestamp=$(date +"%Y-%m-%d %H:%M:%S")

  case "$level" in
    "INFO")  echo "[\033[1;34m$timestamp\033[0m] [\033[1;32mINFO\033[0m] $message" ;;
    "WARN")  echo "[\033[1;34m$timestamp\033[0m] [\033[1;33mWARN\033[0m] $message" ;;
    "ERROR") echo "[\033[1;34m$timestamp\033[0m] [\033[1;31mERROR\033[0m] $message" ;;
    *)       echo "[\033[1;34m$timestamp\033[0m] [\033[1;37m$level\033[0m] $message" ;;
  esac
}
