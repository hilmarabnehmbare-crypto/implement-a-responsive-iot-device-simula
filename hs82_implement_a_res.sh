#!/bin/bash

# API Specification for IoT Device Simulator

# Device Configuration
DEVICE_ID="HS82-IoT-DEV"
DEVICE_TYPE="Smart Home Security System"
DEVICE_IP="192.168.1.100"

# API Endpoints
BASE_URL="http://${DEVICE_IP}:8080/api/v1"

# API Endpoints for Device Status
DEVICE_STATUS_ENDPOINT="${BASE_URL}/device/status"
SENSOR_DATA_ENDPOINT="${BASE_URL}/sensors/data"

# API Endpoints for Device Control
TURN_ON_LIGHT_ENDPOINT="${BASE_URL}/lights/on"
TURN_OFF_LIGHT_ENDPOINT="${BASE_URL}/lights/off"
OPEN_DOOR_ENDPOINT="${BASE_URL}/door/open"
CLOSE_DOOR_ENDPOINT="${BASE_URL}/door/close"

# IoT Device Simulator Functions
get_device_status() {
  curl -X GET ${DEVICE_STATUS_ENDPOINT}
}

get_sensor_data() {
  curl -X GET ${SENSOR_DATA_ENDPOINT}
}

turn_on_light() {
  curl -X POST ${TURN_ON_LIGHT_ENDPOINT}
}

turn_off_light() {
  curl -X POST ${TURN_OFF_LIGHT_ENDPOINT}
}

open_door() {
  curl -X POST ${OPEN_DOOR_ENDPOINT}
}

close_door() {
  curl -X POST ${CLOSE_DOOR_ENDPOINT}
}

# Main Program
while true
do
  clear
  echo "IoT Device Simulator - ${DEVICE_ID}"
  echo "-------------------------"
  echo "1. Get Device Status"
  echo "2. Get Sensor Data"
  echo "3. Turn On Light"
  echo "4. Turn Off Light"
  echo "5. Open Door"
  echo "6. Close Door"
  echo "7. Quit"
  read -p "Choose an option: " option

  case $option in
    1) get_device_status ;;
    2) get_sensor_data ;;
    3) turn_on_light ;;
    4) turn_off_light ;;
    5) open_door ;;
    6) close_door ;;
    7) exit ;;
    *) echo "Invalid option. Please try again." ;;
  esac
done