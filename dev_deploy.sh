#/bin/bash
#Copy everything over to S3 bucket
aws s3 cp --profile sdc . s3://test-sdc-microsite --recursive --exclude ".git/*" --metadata-directive REPLACE --cache-control max-age=86400 --acl public-read
#Bust open the cache
aws s3 cp --profile sdc ./index.html s3://test-sdc-microsite/index.html --region us-east-1 --metadata-directive REPLACE --cache-control max-age=0 --acl public-read
