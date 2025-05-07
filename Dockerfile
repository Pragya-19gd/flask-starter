# Step 1: Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the current directory contents into the container at /app
COPY . /app

# Step 4: Install any dependencies listed in the requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Expose port 5000 for Flask
EXPOSE 5000

# Step 6: Define the environment variable for Flask app
ENV FLASK_APP=app.py

# Step 7: Run the Flask app (with 0.0.0.0 to make it accessible externally)
CMD ["flask", "run", "--host=0.0.0.0"]
