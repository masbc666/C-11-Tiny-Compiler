read -e -p "路径:" path
read -e -p "输入文件名:" file_name
read -e -p "输出文件名:" output_file_name
cd $path
echo 编译......
g++ -fno-asm -Wall -lm --static -std=c++11 -o $output_file_name $file_name
echo 编译结束.
echo 运行......
chmod +x $output_file_name
./$output_file_name
echo 运行结束.
