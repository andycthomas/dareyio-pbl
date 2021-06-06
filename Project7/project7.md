# Project 7


1. Spin up 5 new ec2 instance running rhel 8. Database server, 3 x webserver, and NFS file server. 

![Project%207%20196716dc19f3441387088f9224dab2f1/Untitled.png](Project%207%20196716dc19f3441387088f9224dab2f1/Untitled.png)

1. Configure LVM on the nfs server.
    1. Format the disks as xfs
    2. Create 3 logical volumes
        1. lv-opt, lv-apps, and lv-logs
        2. Create mount points on /mnt for the logical volumes
            1. lv-apps on /mnt/apps and lv-logs on /mnt/logs
    3. Install NFS server and configure it to start on reboot.
        1. Disks without partitions

            ![Project%207%20196716dc19f3441387088f9224dab2f1/Untitled%201.png](Project%207%20196716dc19f3441387088f9224dab2f1/Untitled%201.png)

            Disk with partitions

            ![Project%207%20196716dc19f3441387088f9224dab2f1/Untitled%202.png](Project%207%20196716dc19f3441387088f9224dab2f1/Untitled%202.png)

            Physical volumes

            ![Project%207%20196716dc19f3441387088f9224dab2f1/Untitled%203.png](Project%207%20196716dc19f3441387088f9224dab2f1/Untitled%203.png)

            Volume group and logical volumes

            ![Project%207%20196716dc19f3441387088f9224dab2f1/Untitled%204.png](Project%207%20196716dc19f3441387088f9224dab2f1/Untitled%204.png)

            Mount points

            ![Project%207%20196716dc19f3441387088f9224dab2f1/Untitled%205.png](Project%207%20196716dc19f3441387088f9224dab2f1/Untitled%205.png)

            Configure NFS for clients

            ![Project%207%20196716dc19f3441387088f9224dab2f1/Untitled%206.png](Project%207%20196716dc19f3441387088f9224dab2f1/Untitled%206.png)

            Check NFS port

            ![Project%207%20196716dc19f3441387088f9224dab2f1/Untitled%207.png](Project%207%20196716dc19f3441387088f9224dab2f1/Untitled%207.png)

            Open NFS 2049, TCP 111, UDP 111, and UDP 2049 ports so that the NFS server is accessible from the client.

            Setup the database server, create the tooling database and grant access to the webaccess user.

            ![Project%207%20196716dc19f3441387088f9224dab2f1/Untitled%208.png](Project%207%20196716dc19f3441387088f9224dab2f1/Untitled%208.png)

            1 ec2 instance as an nfs server, and 3 ec2 instances that will be used as web servers.
            The nfs service is running on the nfs server, and the nfs file system is mounted to /var/www on each of the web server instances. Test files create from each of the web server instances are visible on each of the other instances, and on the nfs server in /nfs/apps

            ![Project%207%20196716dc19f3441387088f9224dab2f1/Untitled%209.png](Project%207%20196716dc19f3441387088f9224dab2f1/Untitled%209.png)

        The web servers are all on the same subnet, and the database server's inbound firewall rules will only allow traffic from the webservers' subnet.

        ![Project%207%20196716dc19f3441387088f9224dab2f1/Untitled%2010.png](Project%207%20196716dc19f3441387088f9224dab2f1/Untitled%2010.png)

        Run the tooling sql script

        ![Project%207%20196716dc19f3441387088f9224dab2f1/Untitled%2011.png](Project%207%20196716dc19f3441387088f9224dab2f1/Untitled%2011.png)

        Add a new entry into the users table of the tooling database. 

        ![Project%207%20196716dc19f3441387088f9224dab2f1/Untitled%2012.png](Project%207%20196716dc19f3441387088f9224dab2f1/Untitled%2012.png)

        Browse to the website for on one of my web servers [http://34.227.91.236/index.php](http://34.227.91.236/index.php) 

        Had some problems with this.

        1. The first time I tried it I didn't get a login page. After further investigation i realised that I had forgotten to install php on the webservers.

        2. After installing php and re-starting the apache webserver I tried browsing to the site again. This time it failed with a different error. (screenshot is from the apache error log file).

        ![Project%207%20196716dc19f3441387088f9224dab2f1/Untitled%2013.png](Project%207%20196716dc19f3441387088f9224dab2f1/Untitled%2013.png)

        3. Resolved this error by installing the php-mysqli package and then re-starting the web server.

        1. The first time I tried it I didn't get a login page. After further investigation i realised that I had forgotten to install php on the webservers.
        2. After installing php and re-starting the apache webserver I tried browsing to the site again. This time it failed with a different error. (screenshot is from the apache error log file).
        3. Resolved this error by installing the php-mysqli package and then re-starting the web server.
        4. After restarting the apache webserver again, browsing to the website presented me 
        with the login page, and I was able to successfully login as the myuser user.

        ![Project%207%20196716dc19f3441387088f9224dab2f1/Untitled%2014.png](Project%207%20196716dc19f3441387088f9224dab2f1/Untitled%2014.png)

        ![Project%207%20196716dc19f3441387088f9224dab2f1/Untitled%2015.png](Project%207%20196716dc19f3441387088f9224dab2f1/Untitled%2015.png)