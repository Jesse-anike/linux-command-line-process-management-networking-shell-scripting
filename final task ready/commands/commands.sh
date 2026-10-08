#!/usr/bin/env bash
# Print-only task command reference. No lab commands are executed automatically.
set -eu
cat <<'TASK_COMMANDS'
# Activity 1
pwd
ls -la
cd /tmp
ls -ld practice_dir
mkdir practice_dir
cd ~

# Activity 2
touch demo.txt
echo "Linux is powerful" > demo.txt
nano demo.txt
cat demo.txt

# Activity 3
touch script.sh
echo 'echo "Hello Linux"' > script.sh
ls -l script.sh
chmod u+x,go-x script.sh
ls -l script.sh
./script.sh

# Activity 4 - verify paths before moving/deleting
pwd
ls -la /tmp/practice_dir
cp demo.txt /tmp/practice_dir/
mv script.sh /tmp/practice_dir/
mv demo.txt notes.txt
ls -l notes.txt
rm notes.txt
ls -la
ls -la /tmp/practice_dir

# Activity 5 - only on an authorized lab system
whoami
w
getent passwd student1
sudo adduser student1
sudo usermod -aG sudo student1
id student1
getent group sudo

# Activity 6 - use actual job number and PID
sleep 500 &
jobs -l
fg %1
# Press Ctrl+Z and then: kill <PID>
# Verify with actual PID:
ps aux | grep sleep
ps -p <PID> -o pid,stat,cmd

# Activity 7
df -h
free -h
find "$HOME" -type f -name '*.sh' 2>/dev/null
grep -nH "Linux" /tmp/practice_dir/*.txt

# Activity 8
mkdir -p backup_test
printf "First sample file\n" > backup_test/file1.txt
printf "Second sample file\n" > backup_test/file2.txt
printf "Third sample file\n" > backup_test/file3.txt
tar -cvf backup.tar backup_test
gzip backup.tar
mkdir -p restore_test
tar -xzvf backup.tar.gz -C restore_test
find restore_test -type f -print
diff -r backup_test restore_test/backup_test

# Activity 9
ip a
ping -c 3 google.com
ss -tulnp
hostname

# Activity 10
sudo tail -n 10 /var/log/dmesg
sudo tail -f /var/log/dmesg
# Press Ctrl+C to stop live tail.
uptime
top
# In top press P to sort by CPU and q to quit.
TASK_COMMANDS
