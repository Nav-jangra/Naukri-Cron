# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "script.py"]

# Install cron
# RUN apt-get update && apt-get install -y cron

# # Copy crontab file to the cron.d directory
# COPY mycron /etc/cron.d/mycron

# # Give execution rights on the cron job
# RUN chmod 0644 /etc/cron.d/mycron

# # Apply cron job
# RUN crontab /etc/cron.d/mycron

# # Create the log file to be able to run tail
# RUN touch /var/log/cron.log

# # Run the command on container startup
# CMD cron && tail -f /var/log/cron.log
