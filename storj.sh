#uplink access import main storjaccesskey.txt
#uplink mb sj://cakes
#uplink cp "$PWD/cam1/20230811T132435.mkv" sj://cakes

search_dir="${PWD}/cam1"


while true
do
  for entry in "$search_dir"/*
  do
  lastUpdate="$(stat -c %Y ${entry})"
  now="$(date +%s)"
  let diff="${now}-${lastUpdate}"
  echo $diff
#  uplink cp "$entry" sj://cakes
#  unlink $entry
  done
#  sleep 5
done