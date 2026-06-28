# Linux System Administration & Automation Assignment

This repository contains the shell scripts and directory architectures developed for **CSC520 (Operating Systems)** Assignment 1. The project focuses on utilizing Bash automation scripts to collect system analytics, organize raw workspace data, and dynamically generate standardized folder structures from text inputs.

## 📁 Repository Structure
* **`system_info.sh`**: A shell utility that collects kernel version, uptime, hardware resources, and active user tracking logs.
* **`file_organizer.sh`**: An automated extension-parsing tool that moves unorganized data records into dedicated targets (Documents, Images, etc.).
* **`create_student_folders.sh`**: A robust automation script that parses student name configurations, formats string strings, builds localized team folders, and generates an administrative log history.

## 🛠️ Installation & Execution
To clone this project workspace and execute the administrative utilities natively, execute the following commands in your Linux shell:

```bash
# Clone the repository workspace
git clone [https://github.com/2026138823-fh/linux_assignment.git](https://github.com/2026138823-fh/linux_assignment.git)

# Move into the scripts workspace directory
cd linux_assignment

# Grant strict executable access privileges
chmod 755 *.sh

# Execute the core automation script
./create_student_folders.sh
