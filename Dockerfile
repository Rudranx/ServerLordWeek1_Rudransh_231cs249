# Use Python base image
FROM python:3.9-slim

# Copy requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install flask

# Copy the application code
COPY main.py .

# Expose the port the app runs on
EXPOSE 5050

# Command to run the application
CMD ["python", "main.py"]
