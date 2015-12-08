+++
date = "2015-12-05T16:00:21-08:00"
draft = false
title = "Self Hosting"
weight = 5
+++

Get started by downloading the image from DockerHub:

```
sudo docker pull lgtm/lgtm
```

Create a file to hold your configuration parameters in `KEY=VALUE` format. Please
note that these variables should not be quoted.

```
GITHUB_CLIENT=
GITHUB_SECRET=
```

Create and run your container:

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

Note the above example mounts a volume on the host machine. This is important
because the default configuration uses a sqlite database and should therefore
be mounted on the host machine as a volume to avoid data loss.

```
--volume /var/lib/lgtm:/var/lib/lgtm
```

## Reverse Proxies

If you are running behind a reverse proxy please ensure the `X-Forwarded-For`
and `X-Forwarded-Proto` variables are configured.

This is an example nginx configuration:

```nginx
location / {
    proxy_set_header X-Forwarded-For $remote_addr;
    proxy_set_header X-Forwarded-Proto $scheme;
    proxy_set_header Host $http_host;
	proxy_pass http://127.0.0.1:8000;
}
```

This is an example caddy server configuration:

```nginx
lgtm.mycomany.com {
        proxy / localhost:8000 {
                proxy_header X-Forwarded-Proto {scheme}
                proxy_header X-Forwarded-For {host}
                proxy_header Host {host}
        }
}
```

Note that when running behind a reverse proxy you should change the recommended
port mappings from `--publish=80:8000` to something like ``--publish=8000:8000`.
