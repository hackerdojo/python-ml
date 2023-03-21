FROM tensorflow/tensorflow:2.11.0-gpu-jupyter
RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y
COPY assets /assets
RUN pip install --upgrade pip
RUN cd /assets && pip install -r requirements.txt
RUN useradd -ms /bin/bash tensorflow
USER tensorflow
RUN git clone https://github.com/hackerdojo/python-ml
WORKDIR /tf/python-ml/workshop_4


