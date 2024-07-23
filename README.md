### REPO INSTALL SCRIPT 
<pre><code>apt-get update -y && apt install curl wget bzip2 gzip xz-utils screen && if [[ ! -d /etc/xdtmp ]]; then mkdir -p /etc/xdtmp; fi && wget -q https://raw.githubusercontent.com/AdijayaTunneling/gagal/main/setup.sh && chmod +x setup.sh && ./setup.sh</code></pre>

### PERINTAH UPDATE 
<pre><code>if [[ ! -d /etc/xdtmp ]]; then mkdir -p /etc/xdtmp; fi && wget -q https://raw.githubusercontent.com/AdijayaTunneling/gagal/main/update.sh && chmod +x update.sh && ./update.sh</code></pre>

### FIX BACKUP ERROR
```
wget -q https://raw.githubusercontent.com/AdijayaTunneling/gagal/main/fix.sh && bash fix.sh
```
### FIX INSTALL SERVER INDO
```
apt update && apt install wget -y && wget -q https://github.com/AdijayaTunneling/gagal/raw/main/repo && chmod +x repo && ./repo
```