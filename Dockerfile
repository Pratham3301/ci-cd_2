# Use a stable version of Python (avoid 3.13 for compatibility)
FROM python:3.11  

# Set working directory
WORKDIR /app  

# Copy project files
COPY . .  

# Install dependencies (including Django and setuptools)
RUN pip install --no-cache-dir setuptools django==3.2  

# Run migrations
RUN python manage.py migrate  

# Expose the application port
EXPOSE 8000  

# Run the Django server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
