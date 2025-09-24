# int8 multioutputs
python onnx2tensorrt.py --onnx_model_path /home/dpw/onnx/20250511/ppyoloe_plus_s_fast_coco_640x640_nhwc.onnx \
       --input_shape 1 640 640 3 \
       --model_type ppyoloe \
       --mode int8 \
       --use_normalize True \
       --calibrator_image_dir ./coco_calib/ \
       --calibrator_table_path /home/dpw/onnx/20250511/

python onnx2tensorrt.py --onnx_model_path /home/dpw/onnx/20250511/yolov5n_coco_640x640_nhwc.onnx \
       --input_shape 1 640 640 3 \
       --model_type yolov5 \
       --mode int8 \
       --use_normalize True \
       --calibrator_image_dir ./coco_calib/ \
       --calibrator_table_path /home/dpw/onnx/20250511/

python onnx2tensorrt.py --onnx_model_path /home/dpw/onnx/20250511/yolov6n_coco_640x640_nhwc.onnx \
       --input_shape 1 640 640 3 \
       --model_type yolov6 \
       --mode int8 \
       --use_normalize True \
       --calibrator_image_dir ./coco_calib/ \
       --calibrator_table_path /home/dpw/onnx/20250511/

python onnx2tensorrt.py --onnx_model_path /home/dpw/onnx/20250511/yolov7_tiny_coco_640x640_nhwc.onnx \
       --input_shape 1 640 640 3 \
       --model_type yolov7 \
       --mode int8 \
       --use_normalize True \
       --calibrator_image_dir ./coco_calib/ \
       --calibrator_table_path /home/dpw/onnx/20250511/

python onnx2tensorrt.py --onnx_model_path /home/dpw/onnx/20250511/yolov8n_coco_640x640_nhwc.onnx \
       --input_shape 1 640 640 3 \
       --model_type yolov8 \
       --mode int8 \
       --use_normalize True \
       --calibrator_image_dir ./coco_calib/ \
       --calibrator_table_path /home/dpw/onnx/20250511/

python onnx2tensorrt.py --onnx_model_path /home/dpw/onnx/20250511/yolov9t_coco_640x640_nhwc.onnx \
       --input_shape 1 640 640 3 \
       --model_type yolov9 \
       --mode int8 \
       --use_normalize True \
       --calibrator_image_dir ./coco_calib/ \
       --calibrator_table_path /home/dpw/onnx/20250511/

python onnx2tensorrt.py --onnx_model_path /home/dpw/onnx/20250511/yolov10n_coco_640x640_nhwc.onnx \
       --input_shape 1 640 640 3 \
       --model_type yolov10 \
       --mode int8 \
       --use_normalize True \
       --calibrator_image_dir ./coco_calib/ \
       --calibrator_table_path /home/dpw/onnx/20250511/

python onnx2tensorrt.py --onnx_model_path /home/dpw/onnx/20250511/yolov11n_coco_640x640_nhwc.onnx \
       --input_shape 1 640 640 3 \
       --model_type yolov11 \
       --mode int8 \
       --use_normalize True \
       --calibrator_image_dir ./coco_calib/ \
       --calibrator_table_path /home/dpw/onnx/20250511/

python onnx2tensorrt.py --onnx_model_path /home/dpw/onnx/20250511/yolov12n_coco_640x640_nhwc.onnx \
       --input_shape 1 640 640 3 \
       --model_type yolov12 \
       --mode int8 \
       --use_normalize True \
       --calibrator_image_dir ./coco_calib/ \
       --calibrator_table_path /home/dpw/onnx/20250511/

python onnx2tensorrt.py --onnx_model_path /home/dpw/onnx/20250511/yolov13n_coco_640x640_nhwc.onnx \
       --input_shape 1 640 640 3 \
       --model_type yolov13 \
       --mode int8 \
       --use_normalize True \
       --calibrator_image_dir ./coco_calib/ \
       --calibrator_table_path /home/dpw/onnx/20250511/

python onnx2tensorrt.py --onnx_model_path /home/dpw/onnx/20250511/yolox_nano_coco_640x640_nhwc.onnx \
       --input_shape 1 640 640 3 \
       --model_type yolox \
       --mode int8 \
       --use_normalize True \
       --calibrator_image_dir ./coco_calib/ \
       --calibrator_table_path /home/dpw/onnx/20250511/