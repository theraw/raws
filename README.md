#Wanna Take A Look?

**1.** **``$ curl -s https://raw.githubusercontent.com/systemroot/raws-dev/master/install | bash -s --``**

**2.** **``$ raws help``**



#New.

1. **Fixed,** **`raws update`**

2. **Fixed,** **`raws info`**

---

1. **ADDED,** **`raws iyt`** which allow you to download and convert yt videos on .mp3 it's very simple 
**`down https://www.youtube.com/watch?v=BuJtLePAcGw`**

2. **ADDED,** **`raws inode`** install NodeJS Latest Stable!

3. **ADDED,** **`raws inginx`** [Build Nginx + Php5.6 Fpm](https://github.com/systemroot/my-nginx)

4. **ADDED,** **`raws nhost ex.com`** Create a virtualhost with nginx. (you know you can't use both nginx&apache in :80 xD)

5. **ADDED,** **`raws switch`** Turn Your Ubuntu 14.04 server on desktop and connect it from [VNC Viewer](https://www.realvnc.com/download/viewer/)


#in proccess.

1. ~~Fixing check mode when new version is out, problem is because you will not be able to read alert!~~ **Done.**
2. ~~**`raws switch`** - Turn Your Ubuntu 14.04 Server To Ubuntu 14.04 Desktop, And manage it from VNC.~~ **Done.**
3. Adding raws to official ubuntu repository, which means one day u'll be able to install raws like "apt-get install raws" .
4. ~~**`raws cs-build`** To create a counter-strike 1.6 server, no like others. but official hlds + ReHlds + ReUnion + MetaMod + AmxModX.~~ Sorry can't add this there are some problems and rehlds wont run! if you know how to fix pr is accepted! http://shorted.me/luJRU
5. ~~**`raws inginx`** To build nginx from source + a lot of modules and php 5.6 .~~ **Done.**
6. ~~**`raws nhost example.com`** Creating a virtualhost with nginx.~~ **Done.**
7. **`raws idocker`**
8. **`raws ivagrant`**

#How to remove.
Old version 0.5 - 0.6 was something like beta. 
so on that wasn't "raws bye" ready yet so you need to delete it manually like

**1.** **``$ rm -Rf /usr/local/raws; rm -Rf /bin/raws; rm -Rf /opt/lolcat*``**

For version 0.7 and +, you can simply do

**1.** **``$ raws bye``**
