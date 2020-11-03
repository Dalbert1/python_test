test-app-vol is name of volume
docker run -v test-app-vol:/app -it test_image

NFS mount on docker container

start container w/ privileged flag --privileged=true

mount the NFS on the host and pass it into the contaienr as a host volume

you@host > mount server:/dir /path/to/mount/point
you@host > docker run -v /path/to/mount/point:/path/to/mount/point


OR

you can use a docker volume plugin (like netshare) to directly mount NFS share as a container volume:

you@host > docker run -volume-driver=nfs -v server/dir:/path/to/mount/point

