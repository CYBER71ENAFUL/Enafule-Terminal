#!/bin/bash

# 🌐CYBER🌐71🌐ENAFUL🌐 Terminal Launcher

clear

echo ""
echo "╔═══════════════════════════════════════════════════════════════╗"
echo "║               🌐CYBER🌐71🌐ENAFUL🌐 TERMINAL LAUNCHER                "
echo "╚═══════════════════════════════════════════════════════════════╝"
echo ""
echo "Select your terminal:"
echo ""

echo "  [1] Standard Style"
echo "      - Clean and fast"
echo ""

echo "  [0] Exit"
echo ""
echo -n "Enter your choice: "
read choice

case $choice in

    1)
        echo ""
        echo "Loading Standard Style..."
        sleep 0.3
        ./welcome.sh
        ;;

    0)
        echo ""
        echo "Exiting..."
        exit 0
        ;;
    *)
        echo ""
        echo "Invalid choice!"
        exit 1
        ;;
esac
