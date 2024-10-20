#!/bin/bash

# Define colors
CYAN='\033[1;36m'
RESET='\033[0m'

# Display the logo in light cyan
echo -e "${CYAN}"
echo -e "─█▀▀█ ░█▀▀▀█ █──█ █▀▀▄ █▀▀"
echo -e "░█▄▄█ ─▀▀▀▄▄ █──█ █▀▀▄ ▀▀█"
echo -e "░█─░█ ░█▄▄▄█ ─▀▀▀ ▀▀▀─ ▀▀▀"
echo -e "${RESET}"
echo -e "Ryomen | Dhane Ashley Dibajo"

# Usage function to display how to use the script
usage() {
    echo "Usage: $0 -d <target_domain>"
    exit 1
}

# Parse the command-line arguments
while getopts ":d:" opt; do
    case "${opt}" in
        d)
            TARGET_DOMAIN=${OPTARG}
            ;;
        *)
            usage
            ;;
    esac
done

# Check if the target domain was provided
if [ -z "${TARGET_DOMAIN}" ]; then
    usage
fi

# Main commands
echo "${TARGET_DOMAIN}" | subfinder -silent | httpx -silent | anew | tee subdomains.txt > /dev/null && \
cat subdomains.txt | naabu --passive -silent > ports.txt && \
cat subdomains.txt | httpx -silent -sc -title -cl --tech-detect > httpx-details.txt && \
subzy run --targets subdomains.txt > subzy.txt && \
subjack -w subdomains.txt > subjack.txt

echo "Process complete! Check the output files for results."
