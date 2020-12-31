#!/bin/bash

sudo pigpiod
sudo bluetoothctl discoverable on
sudo rfcomm watch hci0 dp12cks34 &
# Waiting for bluetooth device to be connected in background
# dp12cks34 => chage this to your RPi password

python3 /home/pi/Capstone_RPi/Bluetooth/multiple_tracker_stepper_parse_servo.py
# Track face with servo motor
