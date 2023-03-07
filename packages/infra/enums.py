
from enum import Enum


class UIStyle(Enum):
    OLD = 1
    NEW = 2


class SystemUnderTest(Enum):
    PROD = 1
    PREPROD = 2


class WaitInterval(Enum):
    SHORT = 5
    MEDIUM = 10
    LONG = 30
    TOO_LONG = 180
