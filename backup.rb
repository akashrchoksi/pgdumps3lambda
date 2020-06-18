require 'json'
require 'date'
require "zlib"

def lambda_handler(event:, context:)
  run_id = DateTime.now.to_s

system(
 
 "pg_dump  -U dbuser  -h dbhost  -Fc -c  -w -Z 9 -v dbname |gzip| " \
  "aws s3 cp - s3://s3bucketname/#{run_id}.dump.gz"
  
 )
end
