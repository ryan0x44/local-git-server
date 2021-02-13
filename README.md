# Local Git Server

A minimalistic Alpine-based Docker image for running a local HTTP Git server using Lighttpd.

## Configuration

Any git repository directories mounted under `/var/www/git` in the container
will be accessible from `http://localhost:9010/git/*`

For example, by default we mount the current directory into `/var/www/git/repo`,
and you can clone it using `git clone http://localhost:9010/git/repo`

If you have a workspace such as `/home/user/workspace` containing all of your
git checkouts, change the following line in `docker-compose.yaml`:

```
    volumes:
      - .:/var/www/git/repo
```

to:

```
    volumes:
      - /home/user/workspace:/var/www/git
```

This would allow you to clone `/home/user/workspace/myrepo` 
using `git clone http://localhost:9010/git/myrepo`

## Usage

Start the server container:

```
docker-compose up -d
```

Clone this repo

```
git clone http://localhost:9010/git/repo
```
