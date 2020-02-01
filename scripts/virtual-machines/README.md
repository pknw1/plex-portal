# Plex Portal
[Github Project](https://github.com/pknw1/plex-portal)

My version of a Cloud deployed Plex Server and supporting services
	*	IAAS Media Server
	* 	IAAS Services Server
	* 	OpenStack Object Storage for Media (OVH)
	* 	GitLab private repositories for persistence
	
## Virtual-Machines

### base-config
Here we configure elements common across all server we will launch
	*	updates
	*	root user config
	*	SSH daemon config
	*	Groups
	*	Users
	*	sudoers

plus we will install required packages and additional services from the OS repository
	*	fail2ban
	*	xrdp
	*	shellinabox

Additionally we will install common third party products
	*	webmin
	
finally disabling and removing extraneous services
	* 	TBC
	
### Plex Server
Configured to run [Plex Media Server](https://plex.tv) and accessing media stored remotely in Objkect storage

	*	Plex Server
	
### Services Server
	*	Docker
	*	docker-compose
	* 	letsencrypt
	*	certbot
	* 	HA Proxy
	
