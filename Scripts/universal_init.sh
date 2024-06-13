#############################################
###拷贝斐讯N1配置

git clone https://github.com/rmoyulong/AX6-Actions_Lede AX6-Actions_Lede

#如果files文件夹不存在，创建文件夹
if [ ! -d "./files" ]; then
  mkdir ./files
fi

word=$1
cp -rf AX6-Actions_Lede/union_files${word/patch/}/* ./files
rm -rf AX6-Actions_Lede

############################################################################################
#lede使用
if [[ "$3" == *"lede"* ]]; then
  sed -i 's/REENTRANT -D_GNU_SOURCE/LARGEFILE64_SOURCE/g' feeds/packages/lang/perl/perlmod.mk
  sed -i 's#GO_PKG_TARGET_VARS.*# #g' feeds/packages/utils/v2dat/Makefile
fi