# Description

This is to guide how to apply and set up a DNS name for a Cloudfront distribution.

# Pre-requisite

AWS Account


# Task 1: Create a route53 hosted zone

1. Login to AWS Route53 Console: https://console.aws.amazon.com/route53/home?region=us-east-1#hosted-zones:
2. Click "Created Hosted Zone" button, input your domain name ("your_name.jiangrendevops.com") and then click "Create" button.
![Alt text](images/DNS1.png?raw=true)
You can find a hosted zone created.
![Alt text](images/DNS2.png?raw=true)
3. Click "Create Record Set" to create a DNS name. In the right panel, select "Alias" as "Yes", then input your Cloudfront distribution domain name "e.g. d3pwhpmkfqjfqz.cloudfront.net" to the "Alias Target". Click "Create" button to create a DNS record.
![Alt text](images/DNS3.png?raw=true)

# Task 2: Set up DNS Delegation

Note: the delegation is between your domain name ("your_name.jiangrendevops.com") and jiangrendevops.com.

1. Go back to Route53 console, copy your NS record info. Note: it is your_name, not the name on the screen.
![Alt text](images/dns-ns-names.png)
2. Send the record to me.
3. I will create a redirect from my subdomain to your subdomain.

# Task 3: Add CNAME with Certification
1. Go back to AWS Cloudfront console: https://console.aws.amazon.com/cloudfront/home and select your Distribution.
![Alt text](images/DNS4_1.png?raw=true)
2. Click "Edit" button to continue edit.
![Alt text](images/DNS4.png?raw=true)
3. Click "Request or import a Certificate with ACM".
![Alt text](images/DNS5.png?raw=true)
4. Input your Domain Name.
![Alt text](images/DNS6.png?raw=true)
5. Select "DNS validation".
![Alt text](images/DNS7.png?raw=true)
6. Review the change.
![Alt text](images/DNS8.png?raw=true)
7. Expand your domain and then click "Create record in Route 53"
![Alt text](images/DNS9.png?raw=true)
You should get a successful result.
![Alt text](images/DNS11.png?raw=true)
8. After a few minutes, you will find your certificate is issued.
![Alt text](images/DNS12.png?raw=true)
9. Go back to the CDN distribution edit page and do following
- In "Custom SSL certificate", select the certification that you just created.
- In "Alternate domain name", put in your domain name "your_name.jiangrendevops.com".
![Alt text](images/DNS13.png?raw=true)
10. Click "Save changes" in the bottom right to save it. It should take 10 minutes or so to apply cloudfront changes to all the edge servers.
![Alt text](images/DNS14.png?raw=true)
11.You should be able to view your site in https
![Alt text](images/DNS17.png?raw=true)
