
<details> <summary><strong>README.md Yeni İçerik</strong> (tıklayıp aç)</summary># 📸 macOS Screenshot Automation

A simple background automation tool for macOS that **takes screenshots every hour** and saves them to a folder. Useful for productivity tracking or passive desktop monitoring.

---

## 🚀 Features

- 📅 Automatically takes a screenshot every hour
- 🖥️ Uses native macOS `screencapture`
- 🧩 Configured with `launchd` (LaunchAgent)
- 💾 Saves images to `~/Pictures/scheduled_screenshots/`
- 🔧 Fully customizable with script & plist

---

## 📁 Files

# macOS Screenshot Automation

A background utility that automatically takes screenshots every hour using `screencapture` and `launchd`.

## 🔧 Files

- `screenshot.sh`: Bash script that saves screenshots to `~/Pictures/scheduled_screenshots`
- `com.gulcan.screenshot.plist`: LaunchAgent file that runs the script every 1 hour

## 📂 Usage

1. Place the script and plist in your project folder
2. Load with:
   `launchctl load ~/Library/LaunchAgents/com.gulcan.screenshot.plist`

