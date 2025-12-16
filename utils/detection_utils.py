# -*- coding: utf-8 -*-
# @Time    : 2025/3/20 16:15
# @Author  : DaiPuWei
# @Email   : daipuwei@qq.com
# @File    : detection_utils.py
# @Software: PyCharm

import cv2
from copy import deepcopy

def letterbox(image, resize_shape=(640, 640), color=(114, 114, 114)):
    h, w, _ = image.shape
    input_h,input_w = resize_shape
    # Calculate widht and height and paddings
    r = min(input_w / w,input_h / h)
    if r >= 1.0:
        r = 1.0
    new_unpad = int(round(w * r)), int(round(h * r))
    dw,dh = input_w-new_unpad[0],input_h-new_unpad[1]
    if r >= 1.0:
        resize_image = deepcopy(image)
    else:
        resize_image = cv2.resize(image, new_unpad, interpolation=cv2.INTER_LINEAR)
    top, bottom = 0, int(round(dh + 0.1))
    left, right = 0, int(round(dw + 0.1))
    resize_image = cv2.copyMakeBorder(resize_image, top, bottom, left, right,
                                      cv2.BORDER_CONSTANT, value=color)  # add border
    #cv2.imwrite('letterbox.jpg', resize_image)
    return resize_image
