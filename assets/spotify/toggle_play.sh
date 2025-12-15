#!/usr/bin/env sh

if [ "$($HOME/.config/rustcast/assets/spotify/get_shuffle.sh)" = "true" ]; then
  osascript -e 'tell application "Spotify" to set shuffling to false'
else
  osascript -e 'tell application "Spotify" to set shuffling to true'
fi
