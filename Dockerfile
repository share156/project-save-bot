# FROM python:3.9
# WORKDIR /app
# COPY requirements.txt /app/
# RUN pip3 install -r requirements.txt
# COPY . /app
# CMD python3 main.py

# Use a specific, full version of Python
FROM python:3.9.18

# Install system-level build tools needed for packages like cchardet
RUN apt-get update && apt-get install -y build-essential && rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /app

# Copy just the requirements file first to leverage Docker cache
COPY requirements.txt .

# Install Python dependencies
RUN pip install -r requirements.txt

# Copy the rest of your application code
COPY . .

# Command to run your application
CMD ["python3", "main.py"]
