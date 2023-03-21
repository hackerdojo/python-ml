#/bin/bash

docker run -it \
    --gpus all \
    --device=/dev/dri \
    --group-add=$(stat -c "%g" /dev/dri/render* | head -n 1) \
    -p 8888:8888 \
    -p 6006:6006 \
    -v $WORKSHOP_4_DIR/tensorflow_datasets:/home/tensorflow/tensorflow_datasets \
    -v $WORKSHOP_4_DIR/logs:/tf/python-ml/workshop_4/logs \
    hdpythonista/workshop4

