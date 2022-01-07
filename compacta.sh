now=$(date +"%Y%m%d")
folder="[diretorio]${now}"
mkdir -p $folder

cd [diretorio]
for i in $( ls . )
do
tar czvf $folder/$i.tar.gz $i
done
