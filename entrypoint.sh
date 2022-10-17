#!bin/bash
pid_dir=/tmp/pg_autoctl/var/lib/postgres/pgaf
if [ -d "$pid_dir" ]; 
then
  echo "Remove previous PID"
  rm -r $pid_dir/*
else
  echo "New deployment"
fi
echo "CMD: "
echo "$*"
bash -c "$*"