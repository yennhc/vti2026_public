#!/bin/bash

#grep [options] "pattern" [file]
#-i   Ignore case
#-n   Hiển thị số dòng
#-c   Đếm số dòng match
#-w   Match nguyên từ
#-v   Invert (không match)
#-r   Recursive (tìm trong thư mục)
#-E   Regex mở rộng

grep -i "error" /var/log/syslog #Tìm lỗi trong syslog (case-insensitive)
grep -n "root" /etc/passwd #Tìm dòng chứa "root" trong passwd và hiển thị số dòng
grep -c "ssh" /var/log/auth.log #Đếm số dòng chứa "ssh" trong auth.log
grep -w "user" /etc/passwd #Tìm dòng chứa từ "user" nguyên vẹn trong passwd
grep -v "localhost" /etc/hosts #Hiển thị các dòng không chứa "localhost" trong hosts
grep -r "TODO" /home/user/projects #Tìm tất cả các dòng chứa "TODO" trong thư mục projects và các thư mục con
grep -E "^[0-9]{3}-[0-9]{2}-[0-9]{4}$" file.txt #Tìm các dòng có định dạng số điện thoại trong file.txt

#sed [options] 's/pattern/replacement/flags' [file]
#s   Substitute (thay thế)
#g   Global (thay thế tất cả occurrences)
#i   Ignore case
#-i   Edit file in place (thay đổi trực tiếp trong file)    
sed 's/old/new/g' file.txt #Thay thế tất cả occurrences của "old" bằng "new" trong file.txt
sed -i 's/old/new/g' file.txt #Thay thế tất cả occurrences của "old" bằng "new" trực tiếp trong file.txt
sed 's/^[ \t]*//;s/[ \t]*$//' file.txt #Xóa khoảng trắng ở đầu và cuối dòng trong file.txt
sed -E 's/([0-9]{3})-([0-9]{2})-([0-9]{4})/\1\2\3/g' file.txt #Xóa dấu gạch ngang trong số điện thoại có định dạng 123-45-6789 trong file.txt

#awk [options] 'pattern {action}' [file]
#-F   Field separator (phân tách trường)
#-v   Assign a variable (gán biến)
awk -F: '{print $1}' /etc/passwd #In cột đầu tiên của file passwd (tên người dùng)
awk -F: '$3 > 1000 {print $1}' /etc/passwd #In tên người dùng có UID lớn hơn 1000
awk -v threshold=1000 -F: '$3 > threshold {print $1}' /etc/passwd #In tên người dùng có UID lớn hơn giá trị của biến threshold
df -h | awk '{print $5}'    
ps aux | awk '{print $1, $2, $11}'  

#Log analysis
grep "error" /var/log/syslog | awk '{print $1, $2, $3, $5}' #Tìm lỗi trong syslog và in ngày, giờ, hostname và message

#Kiểm tra disk > 80%
df -h | awk '$5+0 > 80 {print $1, $5}' #In tên thiết bị và phần trăm sử dụng nếu > 80%

#Kill process theo tên
ps aux | grep "process_name" | awk '{print $2}' | xargs kill #Thay "process_name" bằng tên thực tế của process bạn muốn kill

#Lấy user từ passwd
awk -F: '{print $1}' /etc/passwd #In cột đầu tiên của file passwd (tên người dùng)




