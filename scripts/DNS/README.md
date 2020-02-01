# Plex Portal
[Github Project](https://github.com/pknw1/plex-portal)

My version of a Cloud deployed Plex Server and supporting services
	*	IAAS Media Server
	* 	IAAS Services Server
	* 	OpenStack Object Storage for Media (OVH)
	* 	GitLab private repositories for persistence
	
## DNS 

While it is not neccesary to use a domain for all this, I find it easier to have a reference domain to point people at, plus

*	customise web interfaces
*	SSL certs from Letsencrypt for free


1.	Create a new domain with your provide

** you will need IP Address from IAAS VMs created for this section**
2.	Create an A record plex.yourdomain.co.uk -> your IP
3.	Create an A record admin.yourdomain.co.uk -> your IP

