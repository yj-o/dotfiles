#!/bin/bash

# List available serial devices based on OS
if [[ "$OS" == "Linux" ]]; then
    devices=$(ls /dev/tty* | grep -E "/dev/ttyUSB|/dev/ttyS|/dev/ttyACM")
elif [[ "$OS" == "Darwin" ]]; then
    devices=$(ls /dev/cu* | grep -E "/dev/cu.usb|/dev/cu.Bluetooth")
else
    echo "Unsupported OS: $OS"
    exit 1
fi

# If no devices found, exit
if [ -z "$devices" ]; then
    echo "No serial devices found."
    exit 1
fi

# Use fzf to select a device
selected_device=$(echo "$devices" | fzf --prompt="Select a serial device: ")

# If no device selected, exit
if [ -z "$selected_device" ]; then
    echo "No device selected."
    exit 1
fi


# # Ask user for the baud rate
selected=$(echo "9600
115200" | fzf --print-query --height 10 --border --prompt="Select/Input Baud Rate: ")

# Extract the input and selected option
input=$(echo "$selected" | head -n 1)
chosen=$(echo "$selected" | tail -n 1)

# Predefined options list
predefined_options="9600 115200"

# Check if chosen option is in the predefined options
if echo "$predefined_options" | grep -wq "$chosen"; then
    baud_rate="$chosen"
else
    baud_rate="$input"
fi

# Check if the input is a valid number
if ! echo "$baud_rate" | grep -Eq '^[0-9]+$'; then
    echo "Invalid baud rate: $baud_rate"
    exit 1
fi


tio -c bold --timestamp --baudrate "$baud_rate" "$selected_device"



# # Define common baud rates
# common_baud_rates=("9600" "115200")

# # Display prompt for baud rate selection
# echo "Select a baud rate or enter a custom value:"


# # Read user input
# echo -n "Enter your custom baud rate: "
# read baud_rate

# # Check if the input is 1, 2, or a custom baud rate
# if [[ "$user_input" == "1" ]]; then
#     baud_rate="${common_baud_rates[0]}"
# elif [[ "$user_input" == "2" ]]; then
#     baud_rate="${common_baud_rates[1]}"
# elif [[ "$user_input" =~ ^[0-9]+$ ]]; then
#     baud_rate="$user_input"  # Use custom baud rate if it's a valid number
# else
#     echo "Invalid input. Exiting."
# fi

# # Output the selected or entered baud rate
# echo "Selected baud rate: $baud_rate"



# # Run the serial monitor with the selected device and baud rate (using screen)
# echo "Starting serial monitor on $selected_device with baud rate $baud_rate..."
# screen "$selected_device" "$baud_rate"