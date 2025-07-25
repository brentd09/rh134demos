#!/bin/bash

echo '[Unit]' > /etc/systemd/system/daily-inline-job.timer
echo 'Description=Timer for daily inline job' >> /etc/systemd/system/daily-inline-job.timer
echo '' >> /etc/systemd/system/daily-inline-job.timer
echo '[Timer]' >> /etc/systemd/system/daily-inline-job.timer
echo 'OnCalendar=*-*-* 06:00:00' >> /etc/systemd/system/daily-inline-job.timer
echo 'Persistent=true' >> /etc/systemd/system/daily-inline-job.timer
echo '' >> /etc/systemd/system/daily-inline-job.timer
echo '[Install]' >> /etc/systemd/system/daily-inline-job.timer
echo 'WantedBy=timers.target' >> /etc/systemd/system/daily-inline-job.timer

echo '[Unit]' > /etc/systemd/system/daily-inline-job.service
echo 'Description=Daily inline job' >> /etc/systemd/system/daily-inline-job.service
echo '' >> /etc/systemd/system/daily-inline-job.service
echo '[Service]' >>/etc/systemd/system/daily-inline-job.service
echo 'Type=oneshot' >>/etc/systemd/system/daily-inline-job.service
echo 'ExecStart=/bin/bash -c "echo -n Job ran at--- ;date" >> ~/sysd-timer-demo.log' >> /etc/systemd/system/daily-inline-job.service

systemctl enable --now daily-inline-job.timer
systemctl list-timers
