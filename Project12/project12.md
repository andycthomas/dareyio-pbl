- Created new directory for build artefacts. /home/ubuntu/ansible-config-artifact
- Installed copy artifact plugin in jenkins
- Change the readme.md file on the master branch
![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2Fandy-devops%2FogkzJowZeo.png?alt=media&token=77604ab6-5749-4888-bb6f-07cbb6e744a9)
- Triggers the ansible build job
![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2Fandy-devops%2FWsDoTx4M5C.png?alt=media&token=69400870-a8c4-46fa-a13e-6545fe77e62e)
- Successful completion of that build triggers the save_artifacts build
![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2Fandy-devops%2F17mXm_PoU7.png?alt=media&token=ae4c693d-3990-456a-a2c4-e5fef5312cf5)
- The expected changes appear on the jenkins-ansible server.
![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2Fandy-devops%2FpZrDMcaJUF.png?alt=media&token=7f0a667d-a0c8-4e47-b95b-18290e5fdb93)
- Refactor the ansible project to use import_playbook, and test it by deleting wireshark from all of the servers.
![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2Fandy-devops%2FBKSt80RbCV.png?alt=media&token=0aef9741-28c5-4d19-91d9-06230164a08e)
- Run ansible playbook to delete wireshak from all servers
![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2Fandy-devops%2FW5Ck_KwTKO.png?alt=media&token=f7aa9aa4-2ae0-48c4-a0f1-01d97573d89e)
- Verify that wireshark is now not on any of the servers because the playbook run has removed it.
![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2Fandy-devops%2FxyOGOgJDZP.png?alt=media&token=3fa1cb4c-b824-4203-b378-a83b196b6517)

- Make changes to setup a role for uat webservers on the refactor branch, and then raise a pull request to merge it onto the master and trigger the jenkins builds.
Also update the roles path in ansible.cfg.
![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2Fandy-devops%2FUTfYl9dUNV.png?alt=media&token=f09cbd10-56df-4be4-91c2-e91ab7cb32b3)
- Verify that the 2 jenkins jobs run.

- Test the ansiblle playbook and roles against the uat web servers.
![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2Fandy-devops%2F2E6fbtaPke.png?alt=media&token=d644b766-936c-43e0-b703-1b54098cf550)
- Apache and git successfully installed to the 2 UAT web servers. Cannot browse to them though. I'm satisfied that this is because for this project I shut down all ec2 instances that I wasn't using
and was only running 2 x ec2 instances for the uat webservers, and 1  ec2 instance for the jenkins-ansible server.
