- Configure nginx as a load balancer
    1. Used the ec2 instance from project7, and installed nginx on it.
    2. Opened port 443 for inbound tcp traffic because that's used by https connections
    3. Add the web servers into /etc/hosts on the load balancer server.
    ![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2Fandy-devops%2F6TChuCN1ft.png?alt=media&token=408f9e23-6c5f-485a-9837-cc48bee5dcae)
    4. Add the web servers into the nginx config
    ![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2Fandy-devops%2FTwSqt2NQu9.png?alt=media&token=29fa1737-b3fa-4ceb-ab95-61ea453e90b6)
    5. Start nginx and verify that it is running
    ![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2Fandy-devops%2Futb2vKEHPG.png?alt=media&token=99d63a4f-d473-4bfc-8187-6016f8c69c8b)
    6. Attached an elastic IP address to the ec2 instance hosting the nginx server.
    7. Registered andycthomas.com as a new domain, and changed the A record to point to the elastic IP address associated with the nginx server. Domain registered at [register.com](https://www.register.com/)
    8. Updated nginx.com to recognise www.andycthomas.com
    9. Check that the snapd service is running 
    ![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2Fandy-devops%2Fl8trT1KTR2.png?alt=media&token=09d95917-76e7-4ea5-8280-2a6cd82150f5)
    10. Install certbot
    11. Request an ssl certificate for the domain
    ![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2Fandy-devops%2F_HlQtvwhqy.png?alt=media&token=2db99ed7-309a-44f8-b90b-eab58c7efd87)
    12. Browse to the site https://www.andycthomas.com
    ![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2Fandy-devops%2F_H3umR33Z3.png?alt=media&token=8dc8a441-0424-42a7-9b27-23328948786d)
    13. Fixed the following issues :-
        - /etc/hosts on the nginx load balancer should have had the private IP addresses of the 2 web servers.
        - The A record for my domain andycthomas.com did not contain the correct value for the Elastic IP address that I had allocated to the ec2 instance running the nginx server.
        - Having resolved those issues, and browsing to the site I can now securely browse to it and see the certificate details 
        ![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2Fandy-devops%2F6MHjskKZfL.png?alt=media&token=357d29df-57fc-4c97-9595-d04c16720b86)
        - ![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2Fandy-devops%2FgtASPlxbsS.png?alt=media&token=90c0076e-70f0-46ce-8c1f-0a3e56d2e96c)

    14. Update the crontab file to do a twice daily refresh of the certificate.
    ![](https://firebasestorage.googleapis.com/v0/b/firescript-577a2.appspot.com/o/imgs%2Fapp%2Fandy-devops%2FtJYmkOWZPm.png?alt=media&token=2b7ef74f-1eae-4d47-a79e-25f8fd6ee31c)

