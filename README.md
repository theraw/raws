## INSTALLATION.

**1.** **``$ curl -s https://raw.githubusercontent.com/systemroot/raws-dev/master/install | bash /dev/stdin INSTALL``**

**2.** **``| As for now Only Ubuntu 14.04 Is Supported.``**

![](http://image.prntscr.com/image/931009a8a11543a8bd8c5c1a7a755dc9.png)



## New.

1. **Fixed,** **`raws update`**

2. **Fixed,** **`raws info`**

3. **Fixed,** **`raws iapache`** Now Using Php5.6

---

1. **ADDED,** **`raws iyt`** which allow you to download and convert yt videos on .mp3 it's very simple 
**`down https://www.youtube.com/watch?v=BuJtLePAcGw`**

2. **ADDED,** **`raws inode`** install NodeJS Latest Stable!

3. **ADDED,** **`raws inginx`** [Build Nginx + Php5.6 Fpm](https://github.com/systemroot/my-nginx)

4. **ADDED,** **`raws nhost ex.com`** Create a virtualhost with nginx. (you know you can't use both nginx&apache in :80 xD)

5. **ADDED,** **`raws switch`** Turn Your Ubuntu 14.04 server on desktop and connect it from [VNC Viewer](https://www.realvnc.com/download/viewer/)

6. **ADDED,** **`raws adel`** Remove a virtualhost which you used **`raws ahost`** to create it.

7. **ADDED,** **`raws ndel`** Remove a virtualhost which you used **`raws nhost`** to create it.

---

* **Released,** `Installation script. Add Better installation way.`

* **Released,** `Total Release, Removing .sh extension and more..`

## in proccess.

1. ~~Fixing check mode when new version is out, problem is because you will not be able to read alert!~~ **Done.**
2. ~~**`raws switch`** - Turn Your Ubuntu 14.04 Server To Ubuntu 14.04 Desktop, And manage it from VNC.~~ **Done.**
3. Adding raws to official ubuntu repository, which means one day u'll be able to install raws like "apt-get install raws" .
4. ~~**`raws inginx`** To build nginx from source + a lot of modules and php 5.6 .~~ **Done.**
5. ~~**`raws nhost example.com`** Creating a virtualhost with nginx.~~ **Done.**
6. **`raws idocker`**
7. **`raws ivagrant`**
8. **`raws ilxd`**
9. ~~**`raws iapache`** Will use php5.6 !~~ **Done.**
10. **`raws radio on`** Open a Radio station !
11. ~~**`raws adel`** Delete the site which you used "**raws ahost**" to create.~~ **Done.**
12. **`raws ndel`** Delete the site which you used "**raws nhost**" to create.
13. **`raws ts3 on`** Open a Teamspeak3 server!
14. **`raws isql`** Will install phpmyadmin mysql server, cause if you install them as normal when you are using nginx, that will install apache and some other unneeded modules. so "raws isql" will install only mysql server and phpmyadmin in strict mode!.
15. **`hot release!`** Version 1.0 of **`raws`** will be more strict. There will be a check who will check every command, example you try to install apache2 with raws, raws first will check if apache exist and will delete it then will install apache again. This check will not be just for apache but for everything!

## How to remove.
Old version 0.5 - 0.6 was something like beta. 
so on that wasn't "raws bye" ready yet so you need to delete it manually like

**1.** **``$ rm -Rf /usr/local/raws; rm -Rf /bin/raws; rm -Rf /opt/lolcat*``**

For version 0.7 and +, you can simply do

**1.** **``$ raws bye``**
