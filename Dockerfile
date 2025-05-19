# FROM python:3.10.12
# WORKDIR /app
# COPY . .
# RUN pip3 install -r requirements.txt
# EXPOSE 5000
# CMD ["flask", "run", "--host=0.0.0.0"]

# Use the official Python image
FROM python:3.10.12

# Set working directory
WORKDIR /app

# Install dependencies
COPY . .
RUN pip3 install -r requirements.txt

# Expose port (adjust if your Flask app uses a different port)
EXPOSE 5000

# Run the Flask app
CMD ["flask", "run", "--host=0.0.0.0"]
