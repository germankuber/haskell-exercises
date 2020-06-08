data InputDevice = Mouse Integer | Keyboard String | Joystick Integer Integer
myMouse = Mouse 3
myKeyboard = Keyboard "US101"

check :: InputDevice -> String
check m = case m of
    Mouse buttons -> show buttons
    Keyboard layout -> show layout
    Joystick buttons axes -> show buttons ++ " " ++ show axes

