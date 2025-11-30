# 🎮 MINECRAFT CLUSTER - 5 FILES SIMPLIFIED

## Quick Deploy to Render (5 min)

### STEP 1: Create GitHub Repo
Go to: https://github.com/new
- Name: minecraft-cluster
- Visibility: PUBLIC
- Create!

### STEP 2: Push Files
```bash
cd MINECRAFT_CLUSTER_5FILES
git init
git add .
git commit -m "Minecraft Cluster"
git remote add origin https://github.com/YOUR_USERNAME/minecraft-cluster.git
git branch -M main
git push -u origin main
```

### STEP 3: Deploy to Render
1. Go: https://render.com/dashboard
2. New → Infrastructure → Blueprint
3. Paste: https://github.com/YOUR_USERNAME/minecraft-cluster
4. Deploy!

## CONNECT
Server: mc-proxy-main.onrender.com:25565

## FILES
- `.env` - Your Google credentials
- `render.yaml` - Deployment config
- `Dockerfile` - Server image
- `server.properties` - Minecraft config
- `README.md` - This file

✅ DONE! 🚀
