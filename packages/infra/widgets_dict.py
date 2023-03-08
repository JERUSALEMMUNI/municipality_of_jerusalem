from collections import UserDict


class WidgetsDict(dict):
    def __init__(self, *args, **kwargs):
        self.driver = kwargs.pop('driver')
        super().__init__(*args, **kwargs)

    def __getitem__(self, key):
        widget = super().__getitem__(key)
        if widget.get_web_element() is None:
            web_element = self.driver.find_element(widget.locator['By'], widget.locator['Value'])
            widget.set_web_element(web_element)
        return widget

    def get_without_set_element(self, key):
        return super().__getitem__(key)
