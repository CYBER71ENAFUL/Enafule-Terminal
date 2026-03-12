#!/bin/bash

# Elite Terminal - 🌐CYBER🌐71🌐ENAFUL🌐
# Style: 99 - Custom Theme

# Colors
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
MAGENTA='\033[1;35m'
CYAN='\033[1;36m'
WHITE='\033[1;37m'
GRAY='\033[0;37m'
DARKGRAY='\033[1;30m'
RESET='\033[0m'
BOLD='\033[1m'

clear

# Top border
echo -e "${CYAN}╔═══════════════════════════════════════════════════════════════════════╗${RESET}"

# ASCII Art Banner
echo -e "${RED}${BOLD}"
cat << 'BANNER'
  ______   ______  _____ ____  _____ _ _____ _   _    _    _____ _   _ _     
 / ___\ \ / / __ )| ____|  _ \|___  / | ____| \ | |  / \  |  ___| | | | |    
| |    \ V /|  _ \|  _| | |_) |  / /| |  _| |  \| | / _ \ | |_  | | | | |    
| |___  | | | |_) | |___|  _ <  / / | | |___| |\  |/ ___ \|  _| | |_| | |___ 
 \____| |_| |____/|_____|_| \_\/_/  |_|_____|_| \_/_/   \_\_|    \___/|_____|
                                                                             

BANNER
echo -e "${RESET}"

# Subtitle
echo -e "${CYAN}╠═══════════════════════════════════════════════════════════════════════╣${RESET}"
echo -e "${WHITE}               ▰▰▰ ${WHITE}ELITE CYBER TERMINAL${WHITE} ▰▰▰${RESET}"
echo -e "${CYAN}╠═══════════════════════════════════════════════════════════════════════╣${RESET}"

# System Info
echo -e "${MAGENTA}┌─[${GREEN}SYSTEM INFO${MAGENTA}]${RESET}"
echo -e "${MAGENTA}│${RESET}"
echo -e "${MAGENTA}├──${CYAN}[${WHITE}○${CYAN}] ${GRAY}Operator    ${WHITE}:${RED} 🌐CYBER🌐71🌐ENAFUL🌐${RESET}"
echo -e "${MAGENTA}├──${CYAN}[${WHITE}○${CYAN}] ${GRAY}User        ${WHITE}:${RED} $(whoami)${RESET}"
echo -e "${MAGENTA}├──${CYAN}[${WHITE}○${CYAN}] ${GRAY}Hostname    ${WHITE}:${RED} $(hostname)${RESET}"
echo -e "${MAGENTA}├──${CYAN}[${WHITE}○${CYAN}] ${GRAY}Shell       ${WHITE}:${RED} $SHELL${RESET}"
echo -e "${MAGENTA}├──${CYAN}[${WHITE}○${CYAN}] ${GRAY}Date        ${WHITE}:${RED} $(date '+%d %B %Y')${RESET}"
echo -e "${MAGENTA}├──${CYAN}[${WHITE}○${CYAN}] ${GRAY}Time        ${WHITE}:${RED} $(date '+%H:%M:%S %Z')${RESET}"

# Platform detection
if [ -d "/data/data/com.termux" ]; then
    echo -e "${MAGENTA}├──${CYAN}[${WHITE}○${CYAN}] ${GRAY}Platform    ${WHITE}:${RED} Termux (Android)${RESET}"
    echo -e "${MAGENTA}├──${CYAN}[${WHITE}○${CYAN}] ${GRAY}Storage     ${WHITE}:${RED} $(df -h /data | tail -1 | awk '{print $4}') Free${RESET}"
else
    echo -e "${MAGENTA}├──${CYAN}[${WHITE}○${CYAN}] ${GRAY}Platform    ${WHITE}:${RED} $(uname -s)${RESET}"
    echo -e "${MAGENTA}├──${CYAN}[${WHITE}○${CYAN}] ${GRAY}Kernel      ${WHITE}:${RED} $(uname -r)${RESET}"
fi

echo -e "${MAGENTA}└──${CYAN}[${WHITE}○${CYAN}] ${GRAY}Status      ${WHITE}:${RED} ✓ READY${RESET}"

# Separator
echo -e "${CYAN}╠═══════════════════════════════════════════════════════════════════════╣${RESET}"

# Quotes
quotes=(
    "Access granted. System online."
    "Initializing cyber protocols..."
    "The quieter you become, the more you can hear."
    "In a world of locked rooms, the key is power."
    "Code is poetry written in logic."
    "Every system has vulnerabilities."
    "Think like a hacker, act like a guardian."
    "Knowledge is the ultimate weapon."
)

random_quote=${quotes[$RANDOM % ${#quotes[@]}]}
echo -e "${WHITE}   » ${WHITE}$random_quote${RESET}"

# Bottom border
echo -e "${CYAN}╚═══════════════════════════════════════════════════════════════════════╝${RESET}"

echo ""
echo -e "${RED}[${GREEN}✓${RED}]${CYAN} System initialized and ready...${RESET}"
echo ""

# Loading bar
echo -ne "${RED}[${RESET}"
for i in {1..50}; do
    echo -ne "${RED}═${RESET}"
    sleep 0.01
done
echo -e "${RED}]${WHITE} 100%${RESET}"
echo ""

# Set custom PS1 prompt permanently
export PS1="${RED}╭─${GREEN}[${CYAN}🌐CYBER🌐71🌐ENAFUL🌐${GREEN}@${CYAN}SPOOFING${GREEN}]${RED}─${YELLOW}[${WHITE}\w${YELLOW}]${RESET}\n${RED}🎭>${RESET} "
