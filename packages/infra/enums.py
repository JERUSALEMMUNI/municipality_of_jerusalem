
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


class StepNumber(Enum):
    FIRST = 'app-first-step'
    SECOND = 'app-second-step'
    THIRD = 'app-third-step'
    FOURTH = 'app-fourth-step'
