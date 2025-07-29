mkdir ~/rsync_files 2> /dev/null
echo $(yes "this is a demo for rsync" | head -n 200) > ~/rsync_files/rsync_demo.txt

rsync -av ~/rsync_files servera:/home/student/rsync_data1
rsync -av ~/rsync_files/ servera:/home/student/rsync_data2
