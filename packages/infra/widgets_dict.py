class WidgetsDict(dict):
    def __init__(self, *args, **kwargs):
        self.current_step = None
        self.driver = kwargs.pop('driver')
        super().__init__(*args, **kwargs)

    def __getitem__(self, key):
        return self.get(key)

    def get(self, key, wait_for_element=True):
        widget = super().__getitem__(key)
        if type(widget) is dict:
            widget = widget.get(self.current_step, list(widget.values())[0])

        web_element = self.driver.find_elements(widget.locator['By'], widget.locator['Value'])[widget.index - 1]
        widget.set_web_element(web_element)
        if wait_for_element:
            self.driver.wait_for_presence_of_element(widget.locator['By'], widget.locator['Value'])
        return widget

    def get_without_set_element(self, key):
        return super().__getitem__(key)
