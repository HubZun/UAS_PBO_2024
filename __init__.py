import UAS_PBO.LoginApp as app_login
import UAS_PBO.RegisterApp as app_register

def open_loginapp():
    app_register.import_participant()
    app_login.start()

open_loginapp()