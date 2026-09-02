#!/bin/bash

# Detect GPU type and get usage
if command -v nvidia-smi &> /dev/null; then
    # NVIDIA GPU
    gpu_usage=$(nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits | head -n 1)
    gpu_temp=$(nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader,nounits | head -n 1)
    echo "󰢮 ${gpu_usage}% ${gpu_temp}°C"
    
elif command -v radeontop &> /dev/null; then
    # AMD GPU (requires radeontop)
    gpu_usage=$(radeontop -d - -l 1 | grep -oP 'gpu \K[0-9]+' | head -n 1)
    if [ -n "$gpu_usage" ]; then
        echo "󰢮 ${gpu_usage}%"
    else
        echo "󰢮 N/A"
    fi
    
elif [ -d "/sys/class/drm/card0/device" ]; then
    # AMD GPU (alternative method using sysfs)
    if [ -f "/sys/class/drm/card0/device/gpu_busy_percent" ]; then
        gpu_usage=$(cat /sys/class/drm/card0/device/gpu_busy_percent)
        echo "󰢮 ${gpu_usage}%"
    else
        echo "󰢮 N/A"
    fi
    
elif command -v intel_gpu_top &> /dev/null; then
    # Intel GPU
    gpu_usage=$(intel_gpu_top -l 1 -J | jq -r '.engines."Render/3D".busy')
    if [ -n "$gpu_usage" ]; then
        echo "󰢮 ${gpu_usage}%"
    else
        echo "󰢮 N/A"
    fi
    
else
    echo "󰢮 No GPU"
fi