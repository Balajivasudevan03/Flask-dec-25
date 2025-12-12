FROM python:3.12-alpine

WORKDIR /app  

# Install dependencies for Python packages (optional but recommended)
RUN apk add --no-cache build-base

# Copy files
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Run Flask app
CMD ["python", "-m", "flask", "--app", "loan", "run", "--host=0.0.0.0"]
