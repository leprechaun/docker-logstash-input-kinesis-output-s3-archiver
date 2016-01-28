input {
	kinesis {
		kinesis_stream_name => "${AWS_KINESIS_STREAM}"
		region => "${AWS_KINESIS_REGION}"
		application_name => "${AWS_KINESIS_APPLICATION_NAME}"
		codec => json { }
	}
}


filter {
}


output {
	s3 {
		region => "${AWS_S3_REGION}"
		bucket => "${AWS_S3_BUCKET}"
		prefix => "${AWS_S3_PREFIX}"
		time_file => 1
		size_file => 102400000
	}
}
