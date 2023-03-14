#/bin/bash

docker run -it \
    --device=/dev/dri \
    --group-add=$(stat -c "%g" /dev/dri/render* | head -n 1) \
    -p 8888:8888 \
    hdpythonista/workshop3

