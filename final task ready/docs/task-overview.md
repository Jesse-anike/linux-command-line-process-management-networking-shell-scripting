# Task Overview — Linux Command Line Activities

Source: `Final Linux Task.pdf`.

The source defines ten activities:

1. **File & Directory Navigation:** show current directory, list hidden files in long format, create `/tmp/practice_dir`, return home.
2. **File Creation & Editing:** create `demo.txt`, write `Linux is powerful`, manually add another line with Nano/Vim, display it.
3. **File Permissions:** create `script.sh`, add `echo "Hello Linux"`, inspect permissions, make executable only by its owner, run it.
4. **File Operations:** copy `demo.txt` into `/tmp/practice_dir`, move `script.sh` there, rename `demo.txt` to `notes.txt`, delete `notes.txt`.
5. **User & Group Management:** inspect current user and logged-in users; create `student1` and add it to `sudo`.
6. **Process Management:** run `sleep 500` in background, list jobs, foreground, kill by PID, verify, use `top` only in the first assignment; this second source asks termination verification.
7. **Disk Usage & File Searching:** inspect `df -h`, `free -h`, find home `.sh` files, search `.txt` files in `/tmp/practice_dir` for `Linux`.
8. **Archiving & Compression:** create `backup_test`, add files, tar to `backup.tar`, gzip to `backup.tar.gz`, extract for verification.
9. **Networking Basics:** `ip a`, ping `google.com` three times, list listening ports, display hostname.
10. **System Monitoring & Logs:** inspect `/var/log/dmesg`, monitor live log output, check uptime, run `top`, identify highest CPU process.

The PDF does not prescribe a specific name for the overall working directory or the sample files placed inside `backup_test`. This workflow uses the user's home directory for `demo.txt` and `script.sh` as implied by the navigation steps, and creates three clearly named sample text files for the archive activity.