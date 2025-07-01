# macOS Screenshot Automation

A background utility that automatically takes screenshots every hour using `screencapture` and `launchd`.

## 🔧 Files

- `screenshot.sh`: Bash script that saves screenshots to `~/Pictures/scheduled_screenshots`
- `com.gulcan.screenshot.plist`: LaunchAgent file that runs the script every 1 hour

## 📂 Usage

1. Place the script and plist in your project folder
2. Load with:
   `launchctl load ~/Library/LaunchAgents/com.gulcan.screenshot.plist`

