# docker-logstash-input-s3-frontend-output-kinesis

** This image is part of a logging framework in development. **

This container will listen on a defined AWS Kinesis stream, and output to
an S3 bucket.


## Usage

```
docker run \
 -e AWS_KINESIS_REGION=ap-southeast-2 \
 -e AWS_KINESIS_STREAM=my-output-kinesis-stream \
 -e AWS_KINESIS_APPLICATION_NAME=my-kinesis-checkpointing-key \
 -e AWS_S3_REGION=ap-southeast-2 \
 -e AWS_S3_BUCKET=my-s3-bucket \
 -e AWS_S3_PREFIX=some-prefix/ \
 leprechaun/logstash-input-kinesis-output-s3-archiver
```

All of those environment variables are required. The container will bork if either one is not provided.
