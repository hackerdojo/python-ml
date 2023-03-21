#/bin/bash

docker run -it \
    --device=/dev/dri \
    --group-add=$(stat -c "%g" /dev/dri/render* | head -n 1) \
    -p 8888:8888 \
    -p 6006:6006 \
    hdpythonista/workshop3

