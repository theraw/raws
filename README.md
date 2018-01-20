# INSTALLATION.

First. Raws, is a simple Linux cli helper. Those are some simple scripts which can make some works easy. Also 'raws' is designed as i want and this means if you have install nginx like "apt-get install nginx" then if you will try to use 'raws nhost nginx.com' that will not work. Raws is designed to install nginx with different configs and creates virtualhosts configs with different configs. So if you'll like to use raws i suggest you to get a fresh server and use it. if you have something installed don't use raws because raws can remove or purge stuff which you have installed before, without your authorization! **Example if you have install apache2 before and you try to use 'raws iapache' raws will remove apache first then will install it again!**

* **`curl -s -LA "Raws InS" "https://bit.ly/rawsINS" | bash -s INSTALL`**

* **SUPPORTED OS:** `Ubuntu 14.04`

![](http://image.prntscr.com/image/931009a8a11543a8bd8c5c1a7a755dc9.png)

---

# IN PROCESS.

1. **`raws radio on`** Open a Radio station !
2. **`raws ts3 on`** Open a Teamspeak3 server!
3. **`-h | --help`** For every command so you can see how to use that command.

... Wasn't What was you expecting? [Suggest iT Here!](https://github.com/theraw/raws/issues/new)


---
# Command list and what they do.

**$** **`====================== SYSTEM ======================`** **$**
1. **`raws help`**`===========>` `Read command list And a short explain.`
2. **`raws update`**`=========>` `Update raws cli.`
3. **`raws sysinfo`**`========>` `Infos about your system, neet, Cpu, Ram, Space.`

**$** **`=====================================================`** **$**

**$** **`=================== INSTALLATIONS ===================`** **$**
1. **`raws iapache`**`========>` `Install Apache2, Php5, Mysql, PhpMyAdmin.`
2. **`raws iapache-new`**`====>` `Install Apache2, Php5.6,`
3. **`raws inginx`**`=========>` `Compile Ngninx From Source With` [Those Modules](https://github.com/theraw/my-nginx#modules) `+Php-fpm-5.6`
4. **`raws inode`**`==========>` `Installs NodeJS 6.9.0 + NPM.`
5. **`raws iyt`**`============>` `Installs Youtube-DL, And Creates 'down' cli.`
6. **`raws isql`**`===========>` `Installs Mysql And PhpMyAdmin - Suggested For Usage When You Install Nginx.`
7. **`raws switch`**`=========>` `Switch from Ubuntu 14.04 Server To Desktop and access it with` [VNC Viewer](https://www.realvnc.com/download/viewer/)

**$** **`=====================================================`** **$**

**$** **`=================== VIRTUALHOSTS ====================`** **$**
1. **`raws ahost ex.com`**`===>` `Host a domain with Apache2, which you installed with 'raws iapache'.`
2. **`raws adel ex.com`**`====>` `Delete domain 'ex.com' which you created with 'raws ahost'.`
3. **`raws nhost ex.com`**`===>` `Host a domain with Nginx, Which you installed with 'raws inginx'.`
4. **`raws ndel ex.com`**`====>` `Delete domain 'ex.com' which you created with 'raws nhost'.`
5. **`raws gen-ssl ex.com`**`=>` `Generate a SSL certificate by letsencrypt for domain 'ex.com'.`

**$** **`=====================================================`** **$**

---


## How to remove.

Clear And Purge Everything

**1.** **``$ raws bye``**
