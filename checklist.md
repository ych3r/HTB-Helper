# Checklist

- Service Enumeration
- Web Enumeration
    - Auto script
    - Manual
        - Table: Page + Contents
- Exploitation
    - Upgrading TTY: `python -c 'import pty; pty.spawn("/bin/bash")'`
- Privilege Escalation
    - Checklists
        - [Linux](https://github.com/swisskyrepo/PayloadsAllTheThings/blob/master/Methodology%20and%20Resources/Linux%20-%20Privilege%20Escalation.md)
        - [Windows](https://github.com/swisskyrepo/PayloadsAllTheThings/blob/master/Methodology%20and%20Resources/Windows%20-%20Privilege%20Escalation.md)
    - Auto script
        - [LinEnum](https://raw.githubusercontent.com/rebootuser/LinEnum/master/LinEnum.sh)
    - Kernel Exploits
    - Vulnerable Software
        - `dpkg -l`
        - `C:\Program Files`
    - User Privileges
        - `sudo -l` → `sudo su -`
        - https://gtfobins.github.io/
        - https://lolbas-project.github.io/#
    - Scheduled Tasks
    - Exposed Credentials
        - `bash_history`
        - `PSReadLine`
    - SSH Keys
- Lateral Movement