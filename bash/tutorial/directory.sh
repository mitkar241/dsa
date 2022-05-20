#!/bin/bash

echo -n "Enter directory name : "
read dir

if [ -d "$dir" ]
then
  echo "Directory exists : $dir"
else
  mkdir $dir
  echo "Directory created : $dir"
fi

if [ -d "$dir" ]
then
  rm -ri $dir
  echo "Deleting Directory : $dir"
else
  echo "Directory doesnot exist : $dir"
fi

for F in *
do
  if [[ -f $F ]]
  then
    echo $F: $(cat $F | wc -l)
  fi
done

if [ -d "$@" ]; then
  echo "Files found: $(find "$@" -type f | wc -l)"
  echo "Folders found: $(find "$@" -type d | wc -l)"
else
  echo "[ERROR] Please try again."
  exit 1
fi

pwd

mkdir temp/
cd temp/
cd ..
rm -rf temp/
