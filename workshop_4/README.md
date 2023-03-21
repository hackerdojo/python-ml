# Workshop 4: Object Detection with Keras, OpenVINO and NNCF

In this workshop, we covered the fundamentals of object detection, fine-tuning a pre-trained model using Keras. 
We will also export a pre-trained model to OpenVINO format, and optimizing the model using post-training quantization and NNCF.

## Object Detection: Summary

Object detection is a computer vision task that involves locating and identifying objects in images or videos. Unlike image classification, which assigns a single label to an entire image, object detection identifies multiple objects and their locations within the image. This is achieved by predicting the class and bounding box coordinates for each object.

Popular object detection methods include:

- Two-stage detectors (e.g., R-CNN, Fast R-CNN, Faster R-CNN)
- One-stage detectors (e.g., YOLO, SSD, RetinaNet)

## Fine-tuning a Model with Keras-CV

Keras-CV is a Python library that provides pre-trained object detection models, as well as tools for fine-tuning these models on custom datasets. We used Keras-CV to load a pre-trained RetinaNet model and fine-tune it on a custom dataset. This example was selected from keras.io because it is comprehensive and shows all the steps necessary to fine-tune an object detection model but unfortunately it can't be exported to OpenVINO without some modifications.

However, OpenVINO NNCF provides a similar example with RetinaNet here:

https://github.com/openvinotoolkit/nncf/tree/develop/examples/tensorflow/object_detection

## Optimizing with the Post-Training Optimization Tool (CLI)

Post-training quantization is a technique for reducing the precision of a trained model's weights and activations, leading to a smaller model size and lower inference latency. We used the OpenVINO Post-Training Optimization Tool (POT) to apply quantization to the exported IR model.

## Optimizing a pre-trained model with NNCF

NNCF provides a more extensive set of compression techniques and typically achieves better compression results at the cost of a more involved fine-tuning process.

