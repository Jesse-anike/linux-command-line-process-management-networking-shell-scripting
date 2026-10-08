# Evidence collection guide

Capture authentic screenshots and terminal output from your own run. The source assignment is a task document, not a supplied completed lab transcript; no fake screenshots or simulated output are included.

## Suggested screenshot sequence

- `01-navigation.png` — show `pwd`, `ls -la`, `/tmp/practice_dir`, and return to home.
- `02-demo-file.png` — show file contents after manual edit.
- `03-script-permissions.png` — show `ls -l`, `chmod` result, and the actual script output.
- `04-file-operations.png` — show the final location of copied/moved files and confirm `notes.txt` was removed.
- `05-user-group-management.png` — show account lookup and actual `sudo` group result, if permitted.
- `06-process-management.png` — show job/PID and termination verification.
- `07-disk-search.png` — show disk/memory and search results.
- `08-archive-restore.png` — show archive creation, restore listing, and `diff` result.
- `09-networking.png` — show IP, ping, listening-port, and hostname results.
- `10-monitoring-logs.png` — show actual log, uptime, and top/process observation.

## Terminal-output folder

Save relevant real command output in `evidence/terminal-output/` using names that describe what was captured. Keep outputs readable and redact passwords, tokens, private keys, and sensitive host information before publishing.

## Evidence quality

- Show the command and its result together where possible.
- Capture after commands finish.
- Do not fabricate successful results or hide errors that affect the outcome.
- Explain when a command is unavailable or a result differs due to the Linux distribution.
- Do not include secrets or unrelated personal information.
