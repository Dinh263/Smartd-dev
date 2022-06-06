import os
import platform

def terminate_all_current_session():
    """ This keyword is used for terminating the current appium process
        First it wil try to fins which os is? because each of different OS we will have different commands to terminate appium
        Then we will use command to terminate appium session.
    """
    os_name = get_current_os()
    if os_name.startswith('win'):
        os.system('cmd /c "taskkill /F /IM node.exe')
    else:
        os.system('killall node')

def get_current_os():
    os_name = platform.system().lower()
    return os_name