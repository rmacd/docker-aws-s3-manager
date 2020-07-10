# Dockerfile for AWS S3 manager

This utility was designed to allow end-users upload / download access to an S3 bucket, without having to share access keys etc with them. 

## Running

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

## Building

```bash
## make sure submodules are up to date
./prebuild.sh
docker build . -t <tag>
```

## Usage

A screenshot of the utility is below. Interface is pretty simple.

![Screenshot of S3 manager utility](https://rmacd.s3.amazonaws.com/s3mgr-screenshot.png)