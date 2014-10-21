echo Cleaning up
rm *.txt 
rm *.tmp
rm *.csv

echo Download data 
curl https://github.com/zonca/swcarpentry-workshop-pandas/blob/master/rawdata/rawdata.zip?raw=true -o rawdata.zip -L

echo unpack data
unzip rawdata.zip

echo remove ZIP and TMP
rm rawdata.zip 
rm *.tmp 

echo covert txt to csv 
for f in *.txt 
do 
    mv $f ${f/txt/csv}
done 

echo Available files 
ls *.csv 
