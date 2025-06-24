# Makefile - 5S Drifter Project Summary
# Author: Vinicius Carvalho PG56208
# Master’s in Industrial Electronics and Computers Engineering, University of Minho
# Professors: Luis Gonçalves and Sérgio Lopes

PROJECT_NAME := 5S_Drifter
YEAR := 2024_2025
GIT_REPO := https://github.com/viniciuscacarvalho/5S

# === General Info ===
DESCRIPTION := Sensoring System for Surface Sea Streams - low-cost autonomous drifter \
for oceanographic data collection (GPS, IMU, temperature)

# === Objectives ===
OBJECTIVES := \
    "Acquire surface ocean data (GPS, IMU, temperature)" \
    "Transmit data wirelessly using LTE/NB-IoT" \
    "Enable local data storage via SD card" \
    "Ensure minimum 30-day autonomous operation" \
    "Deploy resistant, buoyant shell for marine environment"

# === System Components ===
MICROCONTROLLER := STM32H755ZI-Q
COMMS_MODULE := SIM7000E (LTE/NB-IoT, GNSS)
IMU := GY-85 (ITG3205, ADXL345, HMC5883L)
TEMP_SENSOR := DS18B20 (1-Wire, waterproof)
STORAGE := Micro SD Card
POWER := 4x 3.7V 2500mAh Li-ion (manual swap required)
SHELL := EPS buoy with 3D-printed basket and tips (Fusion360)

# === Communication Protocol ===
PROTOCOL := LTE
DATA_FORMAT := JSON
DATABASE := MongoDB (via HTTP POST request)

# === Software Architecture ===
RTOS := Not used (due to time constraints)
SCHEDULING := Virtual Timer using SysTick
LANG := C (STM32CubeMX, HAL)
AT_COMMANDS := Used for GNSS and LTE communication abstraction

# === Data Packet Format ===
JSON_FORMAT := { \
    "package_number": int, \
    "utc_time": string, \
    "power_level": int, \
    "temperature": [float], \
    "imu": [float], \
    "gnss": [lat, long, alt], \
    "errors": int \
}

# === Tools Used ===
TOOLS := Inkscape draw.io STM32CubeMX Fusion360 LaTeX Minicom

# === Constraints ===
CONSTRAINTS := \
    "Limited team and hardware availability" \
    "Validation required at sea" \
    "Strict semester deadline"

# === Build Targets (Conceptual) ===
plan: ## Analyze problem, define requirements and architecture
	@echo "System planning complete."

design: plan ## Select hardware, design architecture, define software abstraction
	@echo "System design complete."

implement: design ## Build, assemble, and integrate components
	@echo "System implementation complete."

test: implement ## Perform lab testing and sea validation
	@echo "System testing complete."

report: test ## Document full development process
	@echo "Report compiled."

# === Default Target ===
all: plan design implement test report
	@echo "Project $(PROJECT_NAME) build complete."

# === Git Repository ===
git:
	@git clone $(GIT_REPO)

.PHONY: all plan design implement test report git
