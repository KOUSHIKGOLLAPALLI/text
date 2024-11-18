# Step 1: Use the official Python image from Docker Hub
FROM python:3.11-slim

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy the requirements file (for installing dependencies)
COPY requirements.txt .

# Step 4: Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Copy the rest of your application files
COPY . .

# Step 6: Expose a port (if your application needs it)
EXPOSE 8000

# Step 7: Define the command to run your application (for example, a Flask app)
CMD ["python", "app.py"]

