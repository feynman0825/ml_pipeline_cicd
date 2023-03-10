FROM python:3.9.4

# Create the user that will run the app
RUN adduser --disabled-password --gecos '' ml-api-user

WORKDIR /opt/ml_pipeline_api

ARG PIP_EXTRA_INDEX_URL

# Install requirements, including from Gemfury
ADD ./src/ml_pipeline_api /opt/ml_pipeline_api/
RUN pip install --upgrade pip
RUN pip install -r /opt/ml_pipeline_api/requirements.txt

RUN chmod +x /opt/ml_pipeline_api/run.sh
RUN chown -R ml-api-user:ml-api-user ./

USER ml-api-user

EXPOSE 8001

CMD ["bash", "./run.sh"]
