# Project 8

Initial set-up

![Project%208%2039d6be252f86438fa65acfa850cfd724/Untitled.png](Project%208%2039d6be252f86438fa65acfa850cfd724/Untitled.png)

Install apache load balancer on the load balancer server and configure it

![Project%208%2039d6be252f86438fa65acfa850cfd724/Untitled%201.png](Project%208%2039d6be252f86438fa65acfa850cfd724/Untitled%201.png)

![Project%208%2039d6be252f86438fa65acfa850cfd724/Untitled%202.png](Project%208%2039d6be252f86438fa65acfa850cfd724/Untitled%202.png)

Browse to the site via the load balancer's public ip4 address

![Project%208%2039d6be252f86438fa65acfa850cfd724/Untitled%203.png](Project%208%2039d6be252f86438fa65acfa850cfd724/Untitled%203.png)

It failed.

Checked the instances again

![Project%208%2039d6be252f86438fa65acfa850cfd724/Untitled%204.png](Project%208%2039d6be252f86438fa65acfa850cfd724/Untitled%204.png)

and opened port 80 for inbound traffic from anywhere for the web servers, and the load balancer.

These are the load balancer details

![Project%208%2039d6be252f86438fa65acfa850cfd724/Untitled%205.png](Project%208%2039d6be252f86438fa65acfa850cfd724/Untitled%205.png)

Now logged into the site by browsing to the public DNS name of the load balancer, and not browsing directly to either of the 2 web servers.

![Project%208%2039d6be252f86438fa65acfa850cfd724/Untitled%206.png](Project%208%2039d6be252f86438fa65acfa850cfd724/Untitled%206.png)

Re-loading the web page that was presented by browsing to the load balance DNS, and at the same time tailing the access_log files on both web servers we can see that during the period that I was re-loading the web page via the load balancer DNS, the page was rendered 32 times from one of the web servers, and 22 times from the other one.

![Project%208%2039d6be252f86438fa65acfa850cfd724/Untitled%207.png](Project%208%2039d6be252f86438fa65acfa850cfd724/Untitled%207.png)