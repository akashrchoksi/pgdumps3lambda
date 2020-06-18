This is very simple ruby script (compitable with rub 2.5 version only) which able to take backup from postgres to s3 using pg_dump and awscli command line.


# postgresql-s3-lambda-backup(serverless)
By using this script (written in ruby) at aws lambda function with ruby 2.5 runtime  you can able to take native backup from postgres db server to Amazon S3 bucket.
#  Prerequisite
Two Packages are requried to run my script behind the Lambda function. These packages are awscli and pg_dump. These two packages we have to    upload as layer in our Lambda function.
The placement of pg_dump and awscli is very important. Both should be placed in the bin folder before preapring the zip file for them.



