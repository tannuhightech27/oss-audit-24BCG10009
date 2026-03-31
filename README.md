Open Source Software Audit: Apache HTTP Server

Student Name: Tannu Kumari

Registration Number: 24BCG10009

Course: Open Source Software (OSS NGMC)

Submission Date: 31/03/2026

📌 Project Overview

This capstone project provides an in-depth audit of the Apache HTTP Server, exploring its historical evolution, licensing philosophy, ethical development model, and its deep integration within the Linux ecosystem. The project also includes a suite of five functional shell scripts designed for system administration and automation within an open-source environment.

\---

📂 Project Structure

The project is divided into the following core sections:
•	Part A: Origin \& Philosophy: Detailed analysis of Apache's creation in 1995 to solve the fragmentation of the NCSA HTTP server, and an evaluation of the Apache License 2.0.

•	Part B: Linux Footprint: Documentation of Apache's installation, directory structures (FHS compliance), and service management on Ubuntu/Debian and RHEL systems.

•	Part C: The FOSS Ecosystem: A map of Apache's role in the LAMP Stack and its dependencies on tools like OpenSSL and GCC.

•	Part D: Critical Analysis: A comparison between Apache (OSS) and proprietary alternatives like Microsoft IIS or NGINX Plus.

\---

💻 Shell Scripts Included

This repository contains five utility scripts developed to automate server auditing and system reporting:

1. script1.sh - System Identity Report: Generates a summary of the Linux kernel, distro, uptime, and current Apache service status.
2. script2.sh - FOSS Package Inspector: Uses dpkg and case statements to verify the version and description of installed packages.
3. script3.sh - Disk and Permission Auditor: Iterates through critical system directories to report file permissions, ownership, and disk usage.
4. script4.sh - Log File Analyzer: Processes system log files to count and display specific keywords (e.g., "error" or "warning").
5. script5.sh - Open Source Manifesto Generator: An interactive script that captures user input to generate a personalized OSS manifesto.



🛠️ Setup and Installation

1. Prerequisites

This project was developed and tested on Ubuntu 24.04 LTS (WSL2). Ensure you have a Linux environment ready.

2. Installing Apache HTTP Server

On Debian-based systems (Ubuntu), use the apt package manager:

sudo apt update
sudo apt install apache2 -y



For Red Hat-based systems (Fedora/RHEL):

sudo dnf install httpd -y



3. Verifying Installation

Check the installed version and service status to ensure the server is active:

# Check version

apache2 -v

# Check status

sudo systemctl status apache2



4. Important Directories

After installation, Apache follows the standard Linux Filesystem Hierarchy:

Configuration Files: /etc/apache2/

Web Content (Root): /var/www/html/

Log Files: /var/log/apache2/

Binaries: /usr/sbin/apache2

Running the Audit Scripts:

The repository includes five scripts to automate the audit process. Follow these steps to execute them:

Step 1: Grant Execution Permissions

chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh



Step 2: Script Descriptions \& Execution

script1.sh (System Identity Report):
Displays the Kernel version, Linux distribution, system uptime, and current Apache service status.
Execution: ./script1.sh

script2.sh (FOSS Package Inspector):
Audits specific packages like Apache2, MySQL, or Git to verify if they are installed and provide their version information.
Execution: ./script2.sh

script3.sh (Disk and Permission Auditor):
Scans important directories (like /etc and /var/log) to report file permissions, ownership, and current disk usage.
Execution: ./script3.sh

script4.sh (Log File Analyzer):
Analyzes Apache log files to count and display occurrences of specific keywords like "error" or "warning".
Execution: ./script4.sh /var/log/apache2/error.log

script5.sh (The Open Source Manifesto Generator):
An interactive tool that takes user input to generate a personalized text-based manifesto for open-source software.
Execution: ./script5.sh



📜 License

The Apache HTTP Server is distributed under the Apache License 2.0, a permissive license that allows for commercial use, modification, and redistribution without requiring derivative works to be open-sourced.

🗓️ Project Timeline

Days 1-3: Software Selection, Philosophy, and License Analysis.

Days 4-6: Linux Installation and Script Development (Scripts 1-4).

Days 7-8: Ecosystem Mapping and Final Scripting.

Days 9-10: Report Compilation and Final Review.

