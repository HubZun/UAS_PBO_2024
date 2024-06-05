import tkinter as tk
from tkinter import messagebox

from . import LoginApp as app_login
from . import RangkingApp as app_ranking
from . import QuizApp as app_quiz

class MenuApp:
    def __init__(self, root, username, password):
        self.root = root
        self.root.title("Login")
        self.username = username
        self.password = password
        bg_color = root.cget("bg")

        frame = tk.Frame(root, width=300, height=300, bg=bg_color)
        frame.place(relx=0.5, rely=0.4 , anchor=tk.CENTER)

        self.welcome_label = tk.Label(frame, text= f"Halo, selamat datang {app_login.usernamelogin}", font=("Futura", 14))
        self.welcome_label.grid(row=0, column=0, columnspan=2, pady=(50, 20)) 

        self.login_button = tk.Button(frame, text="      Try Out      ", font=("Futura", 20), command=self.quizstart)
        self.login_button.grid(row=1, column=0, columnspan=2, pady=10)

        self.signup_button = tk.Button(frame, text="Lihat Peringkat", font=("Futura", 20), command=self.seeRank)
        self.signup_button.grid(row=2, column=0, columnspan=2, pady=10)

        self.exit_button = tk.Button(frame, text="     Log Out    ", font=("Futura", 20), command=self.back)
        self.exit_button.grid(row=3, column=0, columnspan=2, pady=10)

    def quizstart(self):
        self.root.destroy()
        app_quiz.start()

    def seeRank(self):
        self.root.destroy()
        app_ranking.start()

    def back(self):
        self.root.destroy()
        app_login.start()

def start():
    root = tk.Tk()
    root.title("Menu")
    root.attributes("-fullscreen", True) 

    app = MenuApp(root, "", "")

    root.mainloop()

global root


