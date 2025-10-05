#Base image
FROM python:3.11-slim

# Set working directory 
WORKDIR /app

#Copy requirements and install 
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt 

#Copy the Flask source code
COPY myflask.py .

#If you have a folder with multiple files, copy like:
#COPY other_files/  ./other_files/

# Expose port for the container

EXPOSE 5000

#Command to run the app using gunicorn ; you can run like this  
#CMD ["gunicorn", "--bind", "0.0.0.0:8000", "myflask:app", "--workers", "3"]
#but 

#we will run simply by providing cmd and entrypoint to understand

ENTRYPOINT ["python3"]

CMD ["myflask.py"]


###################DOCKERFILE ENDS#########################

