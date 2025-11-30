# 📊 HOW TO ACCESS LOGS, CONSOLE & SERVER FILES

Once your Minecraft server is live on Render, here's how to access everything:

---

## 📋 VIEW SERVER LOGS

### Method 1: Render Dashboard (EASIEST)
1. Go to: https://render.com/dashboard
2. Click on any service (e.g., `mc-proxy-main`)
3. Click **"Logs"** tab
4. See real-time logs

### Method 2: Command Line
```bash
# Login to Render CLI
render login

# View logs for specific service
render logs mc-proxy-main

# View logs for game server
render logs mc-game-1

# Follow live logs (like tail -f)
render logs mc-proxy-main --follow
```

---

## 💻 CONSOLE & TERMINAL ACCESS

### Via Render Web Terminal:
1. Go to: https://render.com/dashboard
2. Click service (e.g., `mc-proxy-main`)
3. Click **"Shell"** tab
4. Run commands directly

### SSH to Service:
```bash
# SSH into Render service
ssh -i ~/.ssh/render_key render@service-url

# Example:
ssh -i ~/.ssh/render_key render@mc-proxy-main.onrender.com
```

---

## 📁 ACCESS SERVER FILES

### Method 1: Via Web Terminal
```bash
# List all files
ls -la

# View world files
ls -la /app/world

# View logs
cat /app/logs/latest.log

# Download files (from Render terminal)
cat /app/world/level.dat > level.dat
```

### Method 2: Download via SFTP
```bash
# Use SFTP to download server files
sftp -i ~/.ssh/render_key render@mc-proxy-main.onrender.com

# Commands in SFTP:
get /app/world/ ./world
get /app/server.log ./server.log
exit
```

### Method 3: Via Dashboard File Browser
1. Go to Render Dashboard
2. Click service
3. Click **"Files"** tab (if available)
4. Browse and download files

---

## 📥 BACKUP SERVER FILES TO GOOGLE DRIVE

Your server has automatic Google Drive backup every 30 minutes:

1. Go to: https://drive.google.com
2. Look for folder: `minecraft-cluster-backups`
3. Download worlds, plugins, configs automatically

---

## 🔍 CHECK SPECIFIC LOGS

### Server Status
```bash
# On Render terminal
ps aux | grep java
```

### Recent Errors
```bash
tail -100 /app/logs/latest.log | grep ERROR
```

### Player Activity
```bash
grep "Player joined\|Player left" /app/logs/latest.log
```

### Server Performance
```bash
top
df -h
free -h
```

---

## 🎯 COMMON COMMANDS

```bash
# SSH into service
ssh render@service-name.onrender.com

# View running processes
ps aux

# Check disk usage
df -h

# Check memory
free -h

# View file structure
tree /app

# Count players in logs
grep "Player joined" /app/logs/latest.log | wc -l

# View last 50 log lines
tail -50 /app/logs/latest.log

# Search for specific player
grep "PlayerName" /app/logs/latest.log

# Download config
cat /app/server.properties > backup.properties
```

---

## 🔗 USEFUL LINKS

- **Render Dashboard:** https://render.com/dashboard
- **Your Services:** Go to Dashboard → Find `mc-proxy-main`, `mc-game-1` etc
- **Google Drive Backups:** https://drive.google.com
- **Management Dashboard:** https://mc-management-70du.onrender.com

---

## ✅ QUICK ACCESS SUMMARY

| What | How |
|------|-----|
| View Logs | Render Dashboard → Logs tab |
| Terminal | Render Dashboard → Shell tab |
| Server Files | Terminal: `/app/` or SFTP |
| Backups | Google Drive: `minecraft-cluster-backups` |
| Restart | Render Dashboard → Restart button |
| Scale | Render Dashboard → Edit Plan |

---

## 🚀 NEXT STEPS

1. **Monitor Logs:** Check Render dashboard logs for errors
2. **Backup:** Files auto-sync to Google Drive every 30 min
3. **Scale:** Need more resources? Upgrade plan on Render
4. **Manage:** Use web terminal for commands

✅ Your server files are safe and automatically backed up!
