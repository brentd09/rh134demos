#!/bin/bash
echo $(yes "this text is repeated " | head -n 100 ) > ~/sftp_demo1.txt
echo $(yes "this text is repeated " | head -n 100 ) > ~/sftp_demo2.txt
echo $(yes "this text is repeated " | head -n 100 ) > ~/sftp_demo3.txt

sftp student@servera

