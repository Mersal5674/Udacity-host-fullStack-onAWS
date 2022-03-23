eb init udgram-api --platform node.js --region us-east-1
eb create --sample udagram-api-dev
eb setenv POSTGRES_USERNAME="postgres" POSTGRES_PASSWORD="postgres" POSTGRES_DB="postgres" DB_PORT="5432" POSTGRES_HOST="postgres.cxxd4kjd5ux0.us-east-1.rds.amazonaws.com" AWS_REGION="us-east-1" AWS_BUCKET="nemo-bucket" JWT_SECRET="nemoone" AWS_ACCESS_KEY_ID="AKIA3RSDEFRPJANQNA5P" AWS_SECRET_ACCESS_KEY="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"
eb depoly