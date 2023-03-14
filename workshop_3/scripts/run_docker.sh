#/bin/bash

#docker run -itu root:root \
#    -p 8888:8888 \
#    --device-cgroup-rule='c 189:* rmw' \
#    --mount type=bind,source=/var/tmp,destination=/var/tmp \
#    -v /dev/bus/usb:/dev/bus/usb \
#    -v /home/chepe/hackerdojo/python-ml/workshop_3/notebooks:/home/openvino/openvino_tensorflow/examples/notebooks/notebooks \
#    openvino/openvino_tensorflow_ubuntu20_runtime:2.2.0
    #--device /dev/ion:/dev/ion \

docker run -it \
    --device=/dev/dri \
    --group-add=$(stat -c "%g" /dev/dri/render* | head -n 1) \
    -p 8888:8888 \
    hdpythonista/workshop3

