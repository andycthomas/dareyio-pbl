- Create an AWS EC2 Ubuntu Server 
    - Name it Jenkins
    - Install JDK
    - Make sure Jenkins is running
![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2Fandy-devops%2FS8hxGosSYp.png?alt=media&token=3aa057e1-ba37-450b-adb4-f04814a6d402)
    - Open port 8080 for Jenkins
    - Perform Jenkins setup
    - Unlock Jenkins
    - Customize Jenkins
Jenkins is now available at http://54.159.88.46:8080/
![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2Fandy-devops%2FEaFOPzny23.png?alt=media&token=d01d22a9-4684-44da-ae04-cc687a485a90)
    - Add a webhook to the github repository. 
![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2Fandy-devops%2FwOTTzVCv7f.png?alt=media&token=d970e154-fffb-4ba5-8acc-52efaa260758)

    - Changed 1 line of the readme.md file in the github repo, and we see that the webhook triggered a new jenkins build after the changes were commited to the github repo.
![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2Fandy-devops%2Fb5_1ExUJzi.png?alt=media&token=c122e516-883c-416a-ade9-d4e7dd85d196)

    - Configure Jenkins to copy files to the NFS server via SSH
post build action failed to copy artefacts to the NFS server

![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2Fandy-devops%2F3PasgxGW3h.png?
    - Configure Jenkins to copy files to the NFS server via SSH
post build action failed to copy artefacts to the NFS server

![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2Fandy-devops%2F3PasgxGW3h.png?alt=media&token=253bb95e-31ee-49db-8d2b-72497757c68f)
    - Correct the configuration for the ssh-publisher in the post build action.
    - Made a change in one of the files in the github repositorary.
![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2Fandy-devops%2Fksn9GiEzdo.png?alt=media&token=c6b5a6ec-9ac6-4f32-be67-cc3807cd7896)
    - Jenkins build is successful
![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2Fandy-devops%2F5JKWXvzVYK.png?alt=media&token=40761f2f-55e7-42ff-a4a6-d3648ea298e0)
    - Checking the contents of /mnt/apps on the nfsServer shows that the post build actions from the jenkins job succeeded, and that the most recent changes to the README.md file in the github repository have been correctly propagated through to the nfs server.
![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2Fandy-devops%2FPB-ZdoBPgS.png?alt=media&token=39ed08d0-2f9a-4e6d-bd02-4a300d2d3753)

