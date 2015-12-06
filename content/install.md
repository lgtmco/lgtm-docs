+++
date = "2015-12-05T16:00:21-08:00"
draft = true
title = "Install"

+++

```
GITHUB_CLIENT=
GITHUB_SECRET=
```

```
sudo docker pull lgtm/lgtm
```


```
sudo docker run \
	--volume /var/lib/lgtm:/var/lib/lgtm \
	--env-file /etc/lgtm/lgtmrc \
	--restart=always \
	--publish=80:8000 \
	--detach=true \
	--name=lgtm \
	lgtm/lgtm
```
