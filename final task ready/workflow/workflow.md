# Linux Command Line Activities — Step-by-Step Workflow

## Activity 1 — File & Directory Navigation
Start in a terminal:
```bash
pwd
ls -la
cd /tmp
ls -ld practice_dir
mkdir practice_dir
cd ~
pwd
```
If `/tmp/practice_dir` already exists, inspect it before reusing it. Do not overwrite or remove files that belong to another exercise. `ls -la` lists hidden entries in long format. **Evidence:** `01-navigation.png`.

## Activity 2 — File Creation & Editing
From your home directory:
```bash
touch demo.txt
echo "Linux is powerful" > demo.txt
nano demo.txt
```
In Nano, add one more line manually, then save with Ctrl+O, Enter, and exit with Ctrl+X. (Vim is an alternative if you know it.) Display the content:
```bash
cat demo.txt
```
**Expected:** the original line and your additional line appear. **Evidence:** `02-demo-file.png`.

## Activity 3 — File Permissions
Create the script and add the required line:
```bash
touch script.sh
echo 'echo "Hello Linux"' > script.sh
ls -l script.sh
```
The requirement is that only the owner has execute permission. Use:
```bash
chmod u+x,go-x script.sh
ls -l script.sh
./script.sh
```
This adds execute for the owner and removes execute from group/others while retaining other existing read/write bits. If your instructor means the owner alone should have *any* access, ask them or use `chmod 700 script.sh` and document that interpretation. Expected script output: `Hello Linux`. **Evidence:** `03-script-permissions.png`.

## Activity 4 — File Operations
First confirm you are in the intended home directory and check the target directory:
```bash
pwd
ls -la /tmp/practice_dir
```
Perform the requested operations:
```bash
cp demo.txt /tmp/practice_dir/
mv script.sh /tmp/practice_dir/
mv demo.txt notes.txt
ls -l notes.txt
rm notes.txt
ls -la
ls -la /tmp/practice_dir
```
`rm notes.txt` is destructive. Confirm it refers to the task file before running. After the sequence, `script.sh` and the copied `demo.txt` should be in `/tmp/practice_dir`; `notes.txt` should be absent from the home directory. **Evidence:** `04-file-operations.png`.

## Activity 5 — User & Group Management
```bash
whoami
w
```
(`who` is the alternative requested by the assignment.) Only on your authorized lab system, create and verify `student1`:
```bash
getent passwd student1
sudo adduser student1
sudo usermod -aG sudo student1
id student1
getent group sudo
```
If `student1` already exists, inspect it instead of recreating it. If you lack permission, record the limitation rather than bypassing it. Group membership changes may require a new login session for the user to take effect. **Evidence:** `05-user-group-management.png`.

## Activity 6 — Process Management
Start the exact background process:
```bash
sleep 500 &
jobs -l
```
Use `jobs -l` to identify its job number and PID. Bring the relevant job to the foreground (replace `%1` with the actual job number):
```bash
fg %1
```
The command now occupies the terminal. Press Ctrl+Z to suspend the job, then terminate the **actual PID** shown by `jobs -l`:
```bash
kill <PID>
```
Replace `<PID>` with the numeric PID—do not type the angle brackets or guess. Alternatively, use a second terminal to issue `kill <PID>` while `sleep` is foregrounded. Verify:
```bash
ps aux | grep sleep
ps -p <PID> -o pid,stat,cmd
```
The `grep` process may appear in its own output; distinguish it from the original `sleep`. **Evidence:** `06-process-management.png`.

## Activity 7 — Disk Usage & File Searching
```bash
df -h
free -h
find "$HOME" -type f -name '*.sh' 2>/dev/null
grep -nH "Linux" /tmp/practice_dir/*.txt
```
The last command searches `.txt` files directly inside `/tmp/practice_dir`, as stated. If no `.txt` file matches or the glob finds no file, report that accurately instead of treating it as a successful match. **Evidence:** `07-disk-search.png`.

## Activity 8 — Archiving & Compression
Create a test directory and add sample files:
```bash
mkdir -p backup_test
printf "First sample file\n" > backup_test/file1.txt
printf "Second sample file\n" > backup_test/file2.txt
printf "Third sample file\n" > backup_test/file3.txt
```
Create and gzip the tar archive:
```bash
tar -cvf backup.tar backup_test
gzip backup.tar
```
Extract to the test extraction directory:
```bash
mkdir -p restore_test
tar -xzvf backup.tar.gz -C restore_test
```
Verify:
```bash
find restore_test -type f -print
diff -r backup_test restore_test/backup_test
```
Normally no output from `diff -r` indicates the original and restored directory trees match. Record the real result. **Evidence:** `08-archive-restore.png`.

## Activity 9 — Networking Basics
```bash
ip a
ping -c 3 google.com
ss -tulnp
hostname
```
If `ss -tulnp` cannot display process details due to permissions, repeat it with `sudo` only if authorized. Ping results can fail because of DNS, network policy, or connectivity. Capture the real outputs. **Evidence:** `09-networking.png`.

## Activity 10 — System Monitoring & Logs
First try the exact source path:
```bash
sudo tail -n 10 /var/log/dmesg
```
If `/var/log/dmesg` does not exist on your distribution, document that. An optional alternate view, where permitted, is:
```bash
dmesg | tail -n 10
```
Monitor live output:
```bash
sudo tail -f /var/log/dmesg
```
Press Ctrl+C to stop `tail -f`. Then:
```bash
uptime
top
```
In `top`, press `P` to sort by CPU usage if necessary, identify the process currently using the most CPU, and press `q` to exit. The highest-CPU process may change over time; record what you actually observe. **Evidence:** `10-monitoring-logs.png`.

## Final verification
Review all files and directory states, script permissions and output, `student1` group membership if the step was permitted, the stopped `sleep` process, archive comparison, networking outputs, and the log/monitoring results. Complete the submission checklist with actual results.