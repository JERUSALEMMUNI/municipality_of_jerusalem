class WidgetsDict(dict):
    def __init__(self, *args, **kwargs):
        self.driver = kwargs.pop('driver')
        super().__init__(*args, **kwargs)

    def __getitem__(self, key, wait_for_element=True):
        widget = super().__getitem__(key)
        web_element = self.driver.find_elements(widget.locator['By'], widget.locator['Value'])[widget.index - 1]
        widget.set_web_element(web_element)
        if wait_for_element:
            self.driver.wait_for_presence_of_element(widget.locator['By'], widget.locator['Value'])
        return widget

    def get_without_set_element(self, key):
        return super().__getitem__(key)
