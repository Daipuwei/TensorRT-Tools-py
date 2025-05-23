# -*- coding: utf-8 -*-
# @Time    : 2023/3/28 下午2:34
# @Author  : DaiPuWei
# @Email   : daipuwei@qq.com
# @File    : logger_utils.py
# @Software: PyCharm

"""
    这是定义日志相关工具的脚本
"""

import logging

def logger_config(log_path):
    """
    这是配置日志实例的函数
    Args:
        log_path: 日志文件路径
    Returns:
    """
    # 获取logger对象,取名
    logger = logging.getLogger()
    # 输出DEBUG及以上级别的信息，针对所有输出的第一层过滤
    logger.setLevel(level=logging.DEBUG)
    # 获取文件日志句柄并设置日志级别，第二层过滤
    handler = logging.FileHandler(log_path, encoding='UTF-8')
    handler.setLevel(logging.INFO)
    # 生成并设置文件日志格式
    formatter = logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s')
    handler.setFormatter(formatter)
    # console相当于控制台输出，handler文件输出。获取流句柄并设置日志级别，第二层过滤
    console = logging.StreamHandler()
    console.setLevel(logging.DEBUG)
    # 为logger对象添加句柄
    logger.addHandler(handler)
    logger.addHandler(console)
    return logger

def init_logger(cfg):
    """
    这是初始化日志类的函数
    Args:
        cfg: 参数配置字典
    Returns:
    """
    logger = logger_config(cfg['log_path'])
    return logger


"""
    基于单例模式的日志工具类
"""

import logging
import threading
from logging.handlers import RotatingFileHandler
from concurrent_log_handler import ConcurrentRotatingFileHandler

LOG_FILE_SIZE = 100 * 1024 * 1024            # 单个日志文件最大大小，100MB
LOG_FILE_PATH = "./log.log"                  # 日志文件路径
LOG_FILE_MAX_NUM = 5                         # 日志文件最大个数
LOG_NAME = "ALGO"                            # 日志实例名称


class Logger:

    _instance = None
    _lock = threading.Lock()
    _default_path = LOG_FILE_PATH  # 默认日志路径

    def __new__(cls):
        """
        这是双检锁实现线程安全单例日志实例的函数
        """
        if not cls._instance:
            with cls._lock:
                if not cls._instance:
                    cls._instance = super().__new__(cls)
                    cls._instance.init_logger()
        return cls._instance

    def init_logger(self, log_path=None):
        """
        这是初始化日志类实例的函数
        Args:
            log_path: 日志文件路径，默认为None
        Returns:
        """
        self.log_path = log_path or self._default_path
        self.logger = logging.getLogger("SingletonLogger")
        self.logger.setLevel(logging.DEBUG)

        # 清空已有处理器防止重复
        for handler in self.logger.handlers[:]:
            self.logger.removeHandler(handler)

        # 文件处理器（按需滚动）
        self.file_handler = RotatingFileHandler(
            filename=self.log_path,
            encoding='utf-8',
            maxBytes=LOG_FILE_SIZE,
            backupCount=LOG_FILE_MAX_NUM
        )
        self.file_handler.setLevel(logging.INFO)
        file_formatter = logging.Formatter(
            '%(asctime)s - %(name)s - %(levelname)s - %(message)s'
        )
        self.file_handler.setFormatter(file_formatter)

        # 控制台处理器
        self.console_handler = logging.StreamHandler()
        self.console_handler.setLevel(logging.DEBUG)
        console_formatter = logging.Formatter(
            '%(asctime)s - %(name)s - %(levelname)s - %(message)s'
        )
        self.console_handler.setFormatter(console_formatter)

        # 添加处理器
        self.logger.addHandler(self.file_handler)
        self.logger.addHandler(self.console_handler)

    @classmethod
    def get_logger(cls):
        """获取日志器实例"""
        return cls().logger

    @classmethod
    def set_log_path(cls, new_path):
        """动态修改日志路径"""
        instance = cls()
        with cls._lock:
            instance._init_logger(new_path)


LOGGER = Logger.get_logger()
SET_LOG_PATH = Logger.set_log_path
