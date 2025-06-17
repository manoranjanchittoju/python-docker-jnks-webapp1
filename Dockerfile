FROM python:3.9-slim

WORKDIR /app

# Copy and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Document the port to be used (optional benefit)
EXPOSE 5001

CMD ["python", "app.py"]
