read -e -p "路径:" path
read -e -p "输入文件名:" file_name
read -e -p "输出文件名:" output_file_name
if [ $path=="" ]
then
	echo 无路径指向,默认在c.sh同目录下查找文件
else
	cd $path
fi
echo 编译......
g++ -fno-asm -Wall -lm --static -std=c++11 -o $output_file_name $file_name
echo 编译结束.
echo 运行......
chmod +x $output_file_name
./$output_file_name
echo 运行结束.
