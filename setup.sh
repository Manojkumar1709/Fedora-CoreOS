#!/bin/bash

# Define the Ignition URL
IGNITION_URL="http://192.168.21.232/config.ign"

# Create a configuration file to use during the next boot
cat <<EOF > /tmp/ignition_config
coreos.inst.ignition-url=${IGNITION_URL}
EOF

# Create a new Fedora CoreOS ISO with the Ignition configuration
echo "Creating a new Fedora CoreOS image with Ignition configuration..."

# The following steps depend on the tools you have for building or modifying CoreOS images
# You might need to use tools like coreos-installer, or manually adjust the boot parameters

# Example: If you were using a custom boot parameter for a VM (adjust as needed)
# Note: The actual method depends on your virtualization environment (e.g., Hyper-V, QEMU, etc.)
# For QEMU:
# qemu-system-x86_64 -m 2048 -cdrom /path/to/fedora-coreos.iso -append "coreos.inst.ignition-url=${IGNITION_URL}"

echo "Configuration script executed. Please ensure that Fedora CoreOS is booted with the provided Ignition URL."
