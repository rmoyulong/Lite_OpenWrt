#############################################
###拷贝斐讯N1配置

git clone https://github.com/rmoyulong/AX6-Actions_Lede AX6-Actions_Lede

#如果files文件夹不存在，创建文件夹
if [ ! -d "./files" ]; then
  mkdir ./files
fi

word=$1
if [ ! -d "AX6-Actions_Lede/union_files${word/patch/}" ]; then
  echo "该固件的自定义files文件夹不存在，无需拷贝！"
  rm -rf ./files
else
  cp -rf AX6-Actions_Lede/union_files${word/patch/}/* ./files
  rm -rf AX6-Actions_Lede
fi