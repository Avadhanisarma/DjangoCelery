# Use an official Python runtime as the base image
FROM python:3.9

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY  requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Django project code into the container
COPY . /app/

# Expose the port on which your Django app runs (e.g., 8000)
EXPOSE 8000

# Define the command to run when the container starts
CMD ["bash","run.sh"]
