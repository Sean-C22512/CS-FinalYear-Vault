

```markdown

Week: 1  
Module: CMPU 4050 - Systems Integration  
Topic: Introduction & Linux Foundation  
Tags: #lecture #week1 #CMPU4050

---

## 📘 Summary

This week introduces **Systems Integration** with a focus on Linux administration and foundational concepts such as users, groups, permissions, the Linux file system hierarchy, package management, and service control with SystemD. It also covers shell basics, automation with Cron, and provides an overview of the module structure and assessment.

---

## 🔑 Key Concepts & Definitions

- **Systems Integration** → The process of bringing together diverse systems and applications to act as a coordinated whole.
- **SUID** → Execute with the file owner’s privileges.
- **SGID** → Execute with the group’s privileges or enforce group inheritance on new files.
- **Sticky Bit** → Prevents deletion of others’ files in shared directories.
- **SystemD Unit** → A configuration object for services, sockets, timers, or mounts.
- **Cron** → A job scheduler for automating tasks in Linux.

### Definition and Core Focus (MLO1, MLO4)

Systems integration is defined as the **process of bringing together diverse computer systems and software applications physically or functionally to act as a coordinated whole**.

- **Core Focus:** Making different systems work together seamlessly.
    
- **Key Services:** DNS, DHCP, NFS, Authentication, and File sharing.
    
- **Platforms:** Primarily Linux, with Windows integration.
    
- **Industry Relevance:** Skills are fundamental for DevOps, cloud engineering, and infrastructure roles.
    
- **Integration Mindset Core Principles**:
    
    - Incremental changes (small, reversible modifications).
    - Documentation (every change must be documented).
    - Testing (verify in isolation before integration).
    - Monitoring (know when things break).
    - Automation (reduce manual configuration errors).
        

## Linux Administration Essentials

### Users and Groups

- Users are defined in `/etc/passwd`.
- Groups are defined in `/etc/group`.
- Passwords (hashed) are stored in `/etc/shadow`.
- Users can belong to a **primary group** and **supplementary groups**.
- **Key Command:** `sudo adduser alice` (Creates user with home directory).
- **Key Command:** `sudo usermod -aG sudo alice` (Adds user to supplementary group).
    

### File Permissions

Permissions are read in three sets: **owner**, **group**, and **other**. The structure is displayed as `-rwxr-xr--`.

- **Numeric Representation**:
    
    - Read (r) = 4
    - Write (w) = 2
    - Execute (x) = 1
    - Example: rwx (Owner) = 7; r-x (Group) = 5; r-- (Other) = 4.
        
- **Special Permissions**:
    - **SUID (4):** Execute with the owner’s privileges.
    - **SGID (2):** Execute with the group’s privileges or inherit group.
    - **Sticky Bit (1):** Prevents users from deleting others' files in shared directories.
        
- **Key Command:** `chmod 754 file.txt` (Set permissions).
- **Key Command:** `sudo chown alice:dev file.txt` (Change ownership).
    

### File System Hierarchy Standard (FHS)

- `/bin` → Essential binaries
- `/sbin` → System binaries
- `/lib` → Shared libraries
- `/etc` → Configuration files
- `/var` → Variable data (logs, mail)
- `/tmp` → Temporary files
- `/usr` → User programs
- `/home` → User home directories
- `/srv` → Service data
    

### Package Management
- **Debian/Ubuntu (APT)**:
    - `sudo apt update`
    - `sudo apt install nginx`
        
- **RedHat/Fedora (DNF/YUM)**:
    
    - `sudo dnf check-update`
    - `sudo dnf install nginx`
        

### SystemD Service Management (MLO2)
- **Service Control Commands**:
    
    - `sudo systemctl start nginx`
    - `sudo systemctl stop nginx`
    - `sudo systemctl restart nginx`
    - `sudo systemctl enable nginx`
        
- **Service Status Information**:
    - Loaded (unit file location and boot status).
    - Active (current state and uptime).
    - Main PID (primary process ID).
        
- **Viewing Logs (Journalctl)**:
    - `sudo journalctl` (All logs).
    - `sudo journalctl -u nginx` (Service-specific).
    - `sudo journalctl -f` (Follow logs).
    - `sudo journalctl -b -1` (Previous boot logs).


## Shell Basics and Automation

### Essential Commands

- **Network Diagnostics**:  
    `ip addr show`, `ip route show`, `ping -c 4 8.8.8.8`,  
    `nslookup tudublin.ie`, `ss -tulpn`
    
- **File Operations**:  
    `find /etc -name "*.conf"`, `grep -r "listen" /etc/nginx/`,  
    `tail -f /var/log/syslog`, `diff config.old config.new`,  
    `tar czf backup.tar.gz /etc/`
    
- **System Config Files**:  
    `/etc/passwd`, `/etc/group`, `/etc/sudoers`, `/etc/hosts`,  
    `/etc/ssh/`, `/etc/nginx/`
    
### Automation with Cron

- **Cron Schedule Format**: `minute hour day-of-month month day-of-week command`
    
- **Command:** `crontab -e` (Edit user crontab).
    
- **System-wide Cron:** `/etc/cron.d/`
