# ASubs
# Subdomain Enumeration Toolset

**Description:**  
This repository contains a Bash script for efficient subdomain enumeration. Utilizing various tools, the script automates the process of gathering subdomains, scanning for open ports, and identifying web technologies. The toolset is designed for security researchers, bug bounty hunters, and penetration testers who aim to streamline their reconnaissance efforts.

**Features:**
- Automatically retrieves subdomains using `subfinder`.
- Validates subdomains with `httpx`.
- Scans for open ports using `naabu`.
- Performs additional checks with `httpx` for status codes, titles, and technology detection.
- Enhances results using `subzy` for active scanning.
- Checks for potential subdomain takeover with `subjack`.

---

## Installation Instructions

### Prerequisites:
Before running the script, ensure you have the following tools installed:

1. **Go Programming Language** (required for installing certain tools)
   - Follow the official installation guide: [Install Go](https://golang.org/doc/install)

2. **Install Required Tools:**
   You can install the required tools using the following commands:

   ```bash
   # Install subfinder
   go install github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest

   # Install httpx
   go install github.com/projectdiscovery/httpx/cmd/httpx@latest

   # Install naabu
   go install github.com/projectdiscovery/naabu/v2/cmd/naabu@latest

   # Install subzy
   go install github.com/lc/subzy@latest

   # Install subjack
   go install github.com/haccer/subjack@latest
3. **Install ASubs**
   ```bash
   git clone https://github.com/RyomenSukuna0x00/asubs.git
   
   cd asubs &7 chmod +x asubs.sh && sudo mv asubs.sh /usr/bin/asubs
5. **Usage**
   ```bash
   asubs -d <target domain>
