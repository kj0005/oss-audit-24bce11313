# Open Source Audit of Git
**Course:** Open Source Software (OSS) | **Capstone Project**

## 1. Student Details
* **Name:** Kshitij Verma
* **Registration Number:** 24BCE11313
* **Chosen Software:** Git (Distributed Version Control System)

---

## 2. Project Description
This project presents a comprehensive Open Source Audit of **Git**. It analyzes Git’s historical origins—specifically its creation by Linus Torvalds to replace the proprietary tool BitKeeper—and its development under the **GPL v2 license**. 

The audit explores the philosophical values of transparency, speed, and community collaboration that Git represents. It also documents Git’s footprint in the Linux ecosystem and compares it against proprietary alternatives. Included in this repository are five functional shell scripts demonstrating Linux automation, system analysis, and the practical application of FOSS principles.

---

## 3. Scripts Included

### Script 1: System Identity Report (`script1.sh`)
* **Purpose:** Displays system information including Linux distribution, kernel version, current user, uptime, and a message regarding the OS license.
* **Concepts:** Variables, command substitution, and output formatting.

### Script 2: FOSS Package Inspector (`script2.sh`)
* **Purpose:** Verifies if Git is installed on the system, retrieves its version, and provides a philosophical description using a case statement.
* **Concepts:** If-then-else logic, Case statements, and package checking.

### Script 3: Disk and Permission Auditor (`script3.sh`)
* **Purpose:** Audits critical system directories to display their disk usage and ownership permissions using loops and filtering tools.
* **Concepts:** For loops, Arrays, `ls -ld`, `awk`, and `du`.

### Script 4: Log File Analyzer (`script4.sh`)
* **Purpose:** Processes log files to count occurrences of specific keywords (like "ERROR") and displays a summary of recent matching entries.
* **Concepts:** While-read loops, file redirection, and keyword filtering.

### Script 5: Open Source Manifesto Generator (`script5.sh`)
* **Purpose:** An interactive tool that generates a personalized open-source philosophy statement based on user input and saves it to a text file.
* **Concepts:** User input (`read`), file creation (`>`), and appending (`>>`).

---

## 4. Execution Instructions
To run these scripts in a standard Linux terminal or a GitHub Codespace, follow these steps:

1.  **Grant Execute Permissions:**
    Open your terminal in the directory where the files are located and run:
    ```bash
    chmod +x *.sh
    ```

2.  **Run the Scripts:**
    Execute the desired script by using the `./` prefix:
    * **System Report:** `./script1.sh`
    * **Package Check:** `./script2.sh`
    * **Disk Audit:** `./script3.sh`
    * **Log Analysis:** `./script4.sh [filename]`
    * **Manifesto:** `./script5.sh`

---

## 5. Repository Structure
* `script1.sh` to `script5.sh`: Functional Bash scripts.
* `README.md`: Project documentation and instructions (this file).

---


