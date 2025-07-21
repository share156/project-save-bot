# #!/usr/bin/env bash
# # exit on error
# set -o errexit

# apt-get update && apt-get install -y build-essential
# pip install -r requirements.txt
#!/usr/bin/env bash
# exit on error
set -o errexit

# Use sudo to get permissions to install system packages
sudo apt-get update
sudo apt-get install -y build-essential

# Install your python packages
pip install -r requirements.txt
