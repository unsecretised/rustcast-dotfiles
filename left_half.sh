#!/bin/bash
# Move the frontmost app's main window to the left half of the main screen.
# Requires: macOS + Accessibility permission for the script runner (Terminal/iTerm).

osascript <<'APPLESCRIPT'
tell application "System Events"
  set frontApp to first application process whose frontmost is true
  tell frontApp
    if (count of windows) is 0 then return

    tell window 1
      -- Get the size of the main screen in "global" coordinates
      set screenSize to size of first desktop
      set screenW to item 1 of screenSize
      set screenH to item 2 of screenSize

      -- Left half frame
      set newPos to {0, 0}
      set newSize to {screenW / 2, screenH}

      set position to newPos
      set size to newSize
    end tell
  end tell
end tell
APPLESCRIPT
