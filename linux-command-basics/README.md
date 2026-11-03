# Linux Command Basics

Easy Linux commands for beginners and IT support work. Each section has the command, what it does, and a simple example.

---

## 1. First steps

| Command | What it does | Example |
|---|---|---|
| `pwd` | Show which folder you are in | `pwd` |
| `whoami` | Show your username | `whoami` |
| `clear` | Clear the screen | `clear` |
| `history` | Show commands you already typed | `history` |
| `date` | Show current date and time | `date` |

## 2. Moving around

| Command | What it does | Example |
|---|---|---|
| `ls` | List files in the current folder | `ls` |
| `ls -l` | List files with details (size, date, permissions) | `ls -l` |
| `ls -a` | List all files, including hidden ones | `ls -a` |
| `cd folder` | Go into a folder | `cd Documents` |
| `cd ..` | Go back one folder | `cd ..` |
| `cd ~` | Go to your home folder | `cd ~` |

## 3. Files and folders

| Command | What it does | Example |
|---|---|---|
| `touch file.txt` | Create an empty file | `touch notes.txt` |
| `mkdir folder` | Create a new folder | `mkdir backups` |
| `cp` | Copy a file | `cp notes.txt notes-copy.txt` |
| `mv` | Move or rename a file | `mv notes.txt docs/notes.txt` |
| `rm` | Delete a file (careful, no undo) | `rm old-file.txt` |
| `rm -r folder` | Delete a folder and everything inside | `rm -r old-folder` |

## 4. Looking inside files

| Command | What it does | Example |
|---|---|---|
| `cat` | Show the whole file | `cat notes.txt` |
| `less` | Read a long file page by page (press q to quit) | `less /var/log/syslog` |
| `head` | Show the first 10 lines | `head notes.txt` |
| `tail` | Show the last 10 lines | `tail notes.txt` |
| `tail -f` | Watch a log file live | `tail -f /var/log/syslog` |

## 5. Searching

| Command | What it does | Example |
|---|---|---|
| `grep` | Find a word inside a file | `grep error /var/log/syslog` |
| `grep -r` | Search inside every file in a folder | `grep -r password /etc` |
| `find` | Find files by name | `find /home -name notes.txt` |

## 6. Permissions

`ls -l` shows permissions like this: `-rwxr--r--`

- First letter: `-` is a file, `d` is a folder
- Next three groups are for the owner, the group, and everyone else
- `r` = read, `w` = write, `x` = run (execute)

| Command | What it does | Example |
|---|---|---|
| `chmod +x` | Make a file runnable | `chmod +x script.sh` |
| `chmod 644` | Owner can write, everyone can read | `chmod 644 notes.txt` |
| `chown` | Change the owner of a file (needs sudo) | `sudo chown shiv notes.txt` |

## 7. System information

| Command | What it does | Example |
|---|---|---|
| `uname -a` | Show system and kernel information | `uname -a` |
| `uptime` | How long the system has been running | `uptime` |
| `df -h` | Disk space, in an easy size | `df -h` |
| `free -h` | Memory (RAM) use, in an easy size | `free -h` |
| `top` | Live view of running programs (press q to quit) | `top` |

The `-h` means human readable, sizes like 2G instead of long numbers.

## 8. Processes and services

| Command | What it does | Example |
|---|---|---|
| `ps aux` | List all running programs | `ps aux` |
| `kill` | Stop a program using its ID number | `kill 1234` |
| `systemctl status` | Check if a service is running | `systemctl status ssh` |
| `systemctl restart` | Restart a service (needs sudo) | `sudo systemctl restart ssh` |

## 9. Networking

| Command | What it does | Example |
|---|---|---|
| `ip addr` | Show IP addresses of this machine | `ip addr` |
| `ping` | Test if another machine answers | `ping 8.8.8.8` |
| `ping -c 4` | Ping only 4 times, then stop | `ping -c 4 google.com` |
| `curl` | Test a website from the terminal | `curl -I https://example.com` |
| `ss -tuln` | Show open network ports | `ss -tuln` |

## 10. Installing software (Ubuntu and Debian)

| Command | What it does | Example |
|---|---|---|
| `sudo apt update` | Refresh the list of available software | `sudo apt update` |
| `sudo apt install` | Install a program | `sudo apt install htop` |
| `sudo apt remove` | Remove a program | `sudo apt remove htop` |

`sudo` means run this command as the administrator. The system will ask for your password. Be careful with sudo, it can change or break the system.

## 11. Getting help

| Command | What it does | Example |
|---|---|---|
| `man` | Open the manual for a command | `man ls` |
| `--help` | Quick help for most commands | `ls --help` |

## Quick tips

- Press the Tab key to finish a file or folder name automatically
- `Ctrl + C` stops a running command
- `Ctrl + L` clears the screen, same as `clear`
- `.` means the current folder, `..` means the folder above
- `~` is a short way to write your home folder
- Use the up arrow key to repeat your last commands
