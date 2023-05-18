# Use an official Python runtime as the base image
FROM python:3

# Set the working directory in the container to /app
WORKDIR /app

# Add the current directory contents into the container at /app
ADD . /app

# Install the project dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the requirements file to the working directory
COPY requirements.txt .

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Set the command to run your application
CMD ["python", "app.py"]
