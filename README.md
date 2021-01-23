# age-dockerhub

Docker container for the [age encryption tool](https://github.com/FiloSottile/age).

## Example Usage

### Encryption

Encrypting a file in the current directory:

```bash
$ ls
secrets.txt

$ docker run --rm -it -v `pwd`:/here jamesfrosty/age-dockerhub:latest age -p -o /here/secrets.age /here/secrets.txt
Enter passphrase (leave empty to autogenerate a secure one):
Confirm passphrase:

$ ls
secrets.age	secrets.txt
```

### Decryption

Decrypting a file in the current directory:

```bash
$ ls
secrets.age

$ docker run --rm -it -v `pwd`:/here jamesfrosty/age-dockerhub:latest age -d -o /here/secrets.txt /here/secrets.age
Enter passphrase:

$ ls
secrets.age	secrets.txt

```

### Key Generation

```bash
$ docker run --rm -it -v `pwd`:/here jamesfrosty/age-dockerhub:latest age-keygen -o /here/key.txt
Public key: age1zftrgf42x6t97dkujtw0u4yaq3thxamzcgmp4afzvt67hpcfe52sc07fg4

$ ls
key.txt
```

## Building

To build the Docker container, run:

```bash
$ make image
```

Specifying a version of the age tool:


```bash
$ make VERSION=v1.0.0-beta6 image
```

## Links

* [Dockerhub](https://hub.docker.com/r/jamesfrosty/age-dockerhub)
* [GitHub](https://github.com/JamesFrost/age-dockerhub)
