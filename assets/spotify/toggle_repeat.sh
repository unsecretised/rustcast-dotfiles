#!/usr/bin/env sh

if [ "$($HOME/.config/rustcast/assets/spotify/get_repeat.sh)" = "true" ]; then
  osascript -e 'tell application "Spotify" to set repeating to false'
else
  osascript -e 'tell application "Spotify" to set repeating to true'
fi
