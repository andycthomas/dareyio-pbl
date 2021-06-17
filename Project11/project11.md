- Changed the name of the jenkins server to jenkins-ansible
- Created new github repo https://github.com/andycthomas
- Added webhook to the new repo.
- Created a new jenkins job that is tirggered by the webhook to bduil from the master branch.
    - Jenkins job fails.
    - The default branch name for the new repo was "main". Changed that to "master" and the jenkins runs correctly.
    - Change a file to test the webhook, and jenkins build
![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2Fandy-devops%2FKMY_y7niDo.png?alt=media&token=9a8f9b48-3392-43e6-bca8-537438d91dbe)
    - Build failed.
    - Fixed an issue with the wrong url in the web hook, and made another small change to the file.![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2Fandy-devops%2FUXQ8L-EqXr.png?alt=media&token=f5ee3ad4-7607-4b76-9694-403301597407)
    - Jenkins job  successfully completed.
![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2Fandy-devops%2Fbo_BMuKIA_.png?alt=media&token=9d5b6014-f163-4bce-a4c3-9b128ee578c4)
    - Post build action successfully completed, and archived the file that had been changed in the repo.
![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2Fandy-devops%2FtmvnSNrc-8.png?alt=media&token=0096a996-6516-44c0-8334-17c557273a5f)
    - Created a feature branch in the new repo.
    - Added private ssh-key to ssh-agent
    - Jenkins build succeeded. 
    - Ansible run failed. Looks like some permission error with the private keys. 
    - Forgot to load the private keys into the ssh-agent on the jenkins-ansible server. Having done that
the issue is now resolved.
    - Ansible successfully deployed wireshark to 2 x web servers. 1 database server, and 1 load balancer.
Failed to deploy wireshark to the nfs server 
![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2Fandy-devops%2FvsBYtTlJ-I.png?alt=media&token=decaf04c-5934-4288-adf5-8f718981721d) 
    - Upon further investigation I discovered that I had previously created my nfs server as an Amazon linux ec2 instance, rather than a redhat or ubuntu ec2 instance and there are /known problems 
with installing wireshark on amazon linux.

https://stackoverflow.com/questions/44925325/wireshark-installed-but-not-working-on-amazon-linux
    - Since the objective for this project was to get ansible installed, and run a small test playbook against
a number of servers, and this has worked correctly for all of the others, and I know why it failed with the NFS server. I'm happy to leave it at that for now. Maybe sometime I will re-build the nfs servers
as a redhat ec2 instance rather than an amazon one.
