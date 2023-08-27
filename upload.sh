bucket="camscript"
files_location=/opt/s3files/
now_time=$(date +"%H%M%S")
contentType="application/x-compressed-tar"
dateValue=`date -R`
# your key goes here..
s3Key=AKIAUBIUAVHZFWYG2AP2
# your secrets goes here..
s3Secret=2ZtsRSSLFPA7jT+VmBWIpTfiFE9dtQiOtaV8a0zI

function pushToS3()
{
  files_path="$PWD/cam1/20230811T132435.mkv"
  #for file in $files_path*
  #do
    fname=$(basename $files_path)
    logInfo "Start sending $fname to S3"
    resource="/${bucket}/${now_date}/${fname}_${now_time}"
    stringToSign="PUT\n\n${contentType}\n${dateValue}\n${resource}"
    signature=`echo -en ${stringToSign} | openssl sha1 -hmac ${s3Secret} -binary | base64`

     curl -X PUT -T "${file}" \
     -H "x-amz-acl: public-read" \
     -H "Date: ${dateValue}" \
     -H "Content-Type: ${contentType}" \
     "https://"${bucket}"cript.s3.ap-south-1.amazonaws.com/${fname}" \
     -H "Authorization: AWS ${s3Key}:${signature}"

  #done
}
pushToS3 $files_location