## fp32
python onnx2tensorrt.py --onnx_model_path ./model_data/yolov5n_nchw.onnx \
       --tensorrt_model_path ./model_data/yolov5n_nchw.trt \
       --input_shape 1 3 640 640 \
       --model_type yolov5 \
       --mode fp32

python onnx2tensorrt.py --onnx_model_path ./model_data/yolov8n.onnx \
       --tensorrt_model_path ./model_data/yolov8n.trt \
       --input_shape 1 3 640 640 \
       --model_type yolov8 \
       --mode fp32


## fp16
python onnx2tensorrt.py --onnx_model_path ./model_data/yolov5n_nchw.onnx \
       --tensorrt_model_path ./model_data/yolov5n_nchw.trt \
       --input_shape 1 3 640 640 \
       --model_type yolov5 \
       --mode fp16

python onnx2tensorrt.py --onnx_model_path ./model_data/yolov8n.onnx \
       --tensorrt_model_path ./model_data/yolov8n.trt \
       --input_shape 1 3 640 640 \
       --model_type yolov8 \
       --mode fp16

## int8
python onnx2tensorrt.py --onnx_model_path ./model_data/yolov5n_nchw.onnx \
       --tensorrt_model_path ./model_data/yolov5n_nchw.trt \
       --input_shape 1 3 640 640 \
       --model_type yolov5 \
       --mode int8 \
       --calibrator_image_dir ./coco_calib/ \
       --calibrator_table_path ./model_data/yolov5n_coco_calibrator_table.cache \
       --data_type float32

python onnx2tensorrt.py --onnx_model_path ./model_data/yolov8n.onnx \
       --tensorrt_model_path ./model_data/yolov8n.trt \
       --input_shape 1 3 640 640 \
       --model_type yolov5 \
       --mode int8 \
       --calibrator_image_dir ./coco_calib/ \
       --calibrator_table_path ./model_data/yolov8n_coco_calibrator_table.cache \
       --data_type float32