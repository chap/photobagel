69.164.192.66
ssh -L 8888:localhost:3306 root@69.164.192.66 
glow7/assents

## Logfile created on Sun Aug 23 13:54:15 +0000 2009

apache2/conf.d/restart
mysqladmin -u root
CREATE DATABASE photobagel_production

~/.ssh
ssh-keygen -t dsa
cat id_dsa.pub

scp ~/.ssh/id_dsa.pub root@69.164.192.66:.ssh/authorized_keys

gem sources -a http://gems.github.com
sudo gem install monde-mms2r
sudo gem install aws-s3

cd cd //var/www/photobagel.com/
mkdir shared
cd shared
mkdir log

mysql -u root -p
CREATE DATABASE photobagel_production DEFAULT CHARACTER SET utf8;

a2ensite example.conf
/etc/init.d/apache2 reload

# watch for updates
tail -f production.log



creating the user:

i107-66:~# adduser rumble --disabled-password
Adding user `rumble' ...
Adding new group `rumble' (1000) ...
Adding new user `rumble' (1000) with group `rumble' ...
Creating home directory `/home/rumble' ...
Copying files from `/etc/skel' ...
Changing the user information for rumble
Enter the new value, or press ENTER for the default
	Full Name []: 
	Room Number []: 
	Work Phone []: 
	Home Phone []: 
	Other []: 
Is the information correct? [Y/n] Y
li107-66:~# usermod -aG www-data rumble
li107-66:~# su - rumble
rumble@li107-66:~$ ssh keygen
ssh: Could not resolve hostname keygen: Name or service not known
rumble@li107-66:~$ ssh -keygen
Bad escape character 'ygen'.
rumble@li107-66:~$ ssh-keygen
Generating public/private rsa key pair.
Enter file in which to save the key (/home/rumble/.ssh/id_rsa): 
Created directory '/home/rumble/.ssh'.
Enter passphrase (empty for no passphrase): 
Enter same passphrase again: 
Your identification has been saved in /home/rumble/.ssh/id_rsa.
Your public key has been saved in /home/rumble/.ssh/id_rsa.pub.
The key fingerprint is:
da:bb:9e:ad:09:10:76:16:42:68:c4:bb:c8:b8:ee:1d rumble@li107-66
The key's randomart image is:
+--[ RSA 2048]----+
| o.oo .          |
|  +  . .         |
| . .o o          |
|  .. +           |
|o. ..   S        |
|o..  . o         |
| . E  o .        |
|. . .  . =       |
|oo .   .Bo.      |
+-----------------+
rumble@li107-66:~$ touch ~/.ssh/authorized_keys 
rumble@li107-66:~$ nano ~/ .ssh/authorized_keys 
rumble@li107-66:~$ nano ~/ .ssh/authorized_keys 
rumble@li107-66:~$ nano ~/.ssh/authorized_keys

--copy that thing matt sent me


rumble@li107-66:~$ chmod 0700 ~/.ssh                
rumble@li107-66:~$ chmod 0644 ~/.ssh/authorized_keys

