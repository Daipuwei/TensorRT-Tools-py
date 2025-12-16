# TensorRT-Tools-py
这是TensorRT相关工具的项目，代码全部使用Python实现。

---

# 版本更新日志
- **[2025.12.16]**: 对代码结构进行重构，尽可能实现代码复用，yolov5和yolov7使用同一校准类，yolov6,yolov8-yolov13,ppyoloe模型校准类合并成统一校准类，并完成`onnx2tensorrt.py`转换脚本对TensorRT10新API的集成，版本为`v0.2`；
- **[2025.09.24]**: 实现yolov12和yolov13校准集类，并在校准集类中加入是否使用归一化的选项，版本为`v0.1`；
- **[2025.05.23]**：实现yolov6、yolov7、yolov9、yolov10、yolov11、yolox和ppyoloe的INT8校准集类，并利用注册机制完成对应接口封装，完成单例模式的日志类实现，版本为`v0.1`；
- **[2025.03.20]**：完成ONNX转TensorRT脚本，实现yolov5、yolov8和yolos的INT8校准集类，并利用注册机制完成对应接口封装，版本为`v0.1`；
