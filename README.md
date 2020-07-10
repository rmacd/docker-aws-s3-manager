## Dockerfile for AWS S3 manager

### Running

Ready to run, out of the box:

```
docker run \
    -e AWS_BUCKET='--bucket-name--' \
    -e AWS_ACCESS_KEY_ID='--key-id--' \
    -e AWS_SECRET_ACCESS_KEY='--secret-key--' \
    -p 8082:5000 rmacd/aws-s3-manager:1.0
```

At that point, the interface will be available on port 8082. Obviously, you'll want to
stick it behind some other form of authentication, probably via Apache.

### Building

```
## make sure submodules are up to date
./prebuild.sh
docker build . -t <tag>
```
