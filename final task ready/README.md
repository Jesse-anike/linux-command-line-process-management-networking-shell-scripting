# Linux Command Line Activities

**Source assignment:** `Final Linux Task.pdf`  
**Purpose:** A GitHub-ready, learning-friendly workflow for completing the supplied Linux practical tasks.

A ten-activity command-line practice lab covering filesystem navigation, creating/editing files, executable permissions, copy/move/rename/delete, user and group management, background processes, disk and file searches, tar/gzip archives, networking, and system monitoring/logs. The workflow preserves the original task's commands and uses explanatory verification steps.

> **Important:** This repository is a guide and evidence template. It does not claim any commands have been run or that the lab has been completed. Use your own actual terminal results.

## How to use this repository

1. Read `workflow/workflow.md` before starting.
2. Use a disposable Linux VM or a machine you are authorized to administer.
3. Follow the activities in their original order and run commands manually.
4. Capture authentic screenshots and terminal output under `evidence/`.
5. Complete the checklist in `submission/README.md`.
6. Review all files and evidence for passwords, tokens, private details, and unrelated system information before publishing the repository to GitHub.

## Included files

```text
linux-command-line-activities/
├── README.md
├── .gitignore
├── docs/
│   ├── README.md
│   └── task-overview.md
├── workflow/
│   ├── README.md
│   └── workflow.md
├── commands/
│   ├── README.md
│   └── commands.sh
├── scripts/
│   ├── README.md
│   └── verify_repo.sh
├── evidence/
│   ├── README.md
│   ├── screenshots/
│   └── terminal-output/
└── submission/
    ├── README.md
    ├── command-history.txt
    └── final-output.txt
```

## Requirements and environment

- A Linux machine/VM with a terminal.
- For activities requiring administrative operations, an authorized account with `sudo`.
- On the Debian/Ubuntu package-management activity, access to `apt` and network connectivity may be required.
- Some networking checks require internet connectivity; results depend on your network and DNS.

## Safety and integrity

- The user-management activity creates `student1` and adds it to `sudo`; perform it only on a system you are authorized to administer.
- `rm notes.txt` is part of the supplied task. Confirm you are in the intended home/work directory and that `notes.txt` is the task file before deleting it.
- Process management intentionally terminates the started `sleep 500` process. Use the actual PID shown by your own `jobs -l`; never guess a PID.
- The archive, file movement, and `/tmp/practice_dir` activities can affect existing files. Inspect the target directory before reusing it.
- `ss -tulnp` may require privileges to show process details. Network/ping results depend on DNS and network policy.
- `tail -f` does not exit by itself; press Ctrl+C when you finish collecting evidence.

The command reference `commands/commands.sh` is deliberately print-only. It shows the command sequence without executing it automatically, so you can learn each operation, inspect its result, and capture evidence at the correct moment.

## Validation

Run the package structure check from the extracted project:

```bash
bash scripts/verify_repo.sh
```

This checks repository files and folders only. It does not certify that the practical tasks were completed.
