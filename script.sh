#!/bin/sh
SOURCE="${BASH_SOURCE[0]}"
echo "SOURCE is '$SOURCE'"
RDIR="$( dirname "$SOURCE" )"
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

for zip in *.zip
do
dirname=`echo $zip | sed 's/\.zip$//'`
rm -rf "$dirname"
if mkdir "$dirname"
then
if cd "$dirname"
then
unzip ../"$zip"
cd $(find . -type d -name "src" -print)
cd ..
cp "$DIR"/build.xml .
cp "$DIR"/eval_testFiles/*  ./src/tests/
ant clean build-project junitreport
ln -sf "$(pwd)"/junit/tests/package-summary.html "$DIR"/"$dirname"
cd "$DIR"

# rm -f $zip # Uncomment to delete the original zip file
else
echo "Could not unpack $zip - cd failed"
fi
else
echo "Could not unpack $zip - mkdir failed"
fi
done
