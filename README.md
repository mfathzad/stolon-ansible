# what is stolon?
stolon is a cloud native PostgreSQL manager for PostgreSQL high availability. It's cloud native because it'll let you keep an high available PostgreSQL inside your containers (kubernetes integration) but also on every other kind of infrastructure (cloud IaaS, old style infrastructures etc...)
[stolon official github](https://github.com/sorintlab/stolon)

# what dose this ansible-playbook do?

this ansible-playbook installs and configs stolon cluster components 
including:
* etcd
* stolon-sentinel
* stolon-keeper
* stolon-proxy




* create a directory in /var/lib/postgres/backup
* create virtualenv in backup directory:
```
virtualenv -p python3 venv
```

* activate venv
```
source venv/bin/activate
```

* install dependencies
```
pip install -r requirements.txt
apt install python3-dotenv
```
* put this reposirory content in **/var/lib/postgres/backup**

* edit .env file 

* add this command to crontab 
```
0 0 * * * /var/lib/postgresql/backup/venv/bin/python /var/lib/postgresql/backup/backup.py >> /var/lib/postgresql/backup/backup.logs

```

* if you have media files and you also wanna backup them, defind media path in .env file:  **LOCAL_MEDIA_PATH**
and you should call **upload_media_to_minio** 
