# filebrowser-docker
filebrowser docker image


```
https://github.com/filebrowser/filebrowser/issues/627

### Example Docker
# Adding user on a running container called "filebrowser"
docker exec filebrowser bash -c 'pm2 stop filebrowser && filebrowser users add john secret --perm.execute=false; pm2 start filebrowser'

# Removing user
docker exec filebrowser bash -c 'pm2 stop filebrowser && filebrowser users rm john; pm2 start filebrowser'
```