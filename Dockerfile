FROM apache/airflow:2.10.5

# ADD requirements.txt .
# RUN pip install -r requirements.txt

# Always generate requirements.txt inside the container
RUN cat <<EOF > requirements.txt
# Placeholder requirements
boto3==1.37.33
zstandard==0.23.0
EOF

# Copy requirements.txt to container
# COPY requirements.txt .
# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt


