import tkinter as tk
from tkinter import messagebox
import random

from . import RegisterApp as app_register
from . import LoginApp as app_login
from . import database as db
from . import MenuApp  as app_menu

questions = []

class Question:
    def __init__(self, prompt, choices, answer, time_limit=20):
        self.prompt = prompt
        self.choices = choices
        self.answer = answer
        self.time_limit = time_limit
    
    def check_answer(self, given_answer):
        return given_answer.lower() == self.answer.lower()

class SaintekQuestion(Question):
    def __init__(self, prompt, choices, answer):
        super().__init__(prompt, choices, answer, time_limit=45)

    def check_answer(self, given_answer):
        return given_answer.lower() == self.answer.lower() and given_answer.lower() in self.choices

class SoshumQuestion(Question):
    def __init__(self, prompt, choices, answer):
        super().__init__(prompt, choices, answer)

    def check_answer(self, given_answer):
        return given_answer.lower() == self.answer.lower() and given_answer.lower() in self.choices

class TPSQuestion(Question):
    def __init__(self, prompt, choices, answer):
        super().__init__(prompt, choices, answer)

    def check_answer(self, given_answer):
        return given_answer.lower() == self.answer.lower() and given_answer.lower() in self.choices


class QuizApp:
    def __init__(self, root):
        self._root = root
        self._root.title("Aplikasi Kuis")
        self._root.attributes("-fullscreen", True)

        self.__questions = []
        self.__score = 0
        self.__current_question_index = 0
        self.__time_left = 20
        self.__timer_running = False

        self.frame = tk.Frame(root)
        self.frame.pack(expand=True)

        self.label_timer = tk.Label(self.frame, text=f"Waktu tersisa: {self.__time_left} detik", font=("Arial", 12))
        self.label_timer.pack(pady=20)
        
        self.label_question = tk.Label(self.frame, text="", font=("Arial", 16))
        self.label_question.pack(pady=20)
        
        self.answer_buttons = []
        for i in range(5):
            btn = tk.Button(self.frame, text="", font=("Arial", 12), command=lambda i=i: self.check_answer(i), width=30)
            btn.pack(pady=5)
            self.answer_buttons.append(btn)

        self.add_questions_automatically()
        self.display_question()
        self.start_timer()

        self._root.bind("<Escape>", self.exit_fullscreen)  

    def get_score(self):
        return self.__score
    
    def set_score(self, score):
        self.__score = score
    
    def get_current_question_index(self):
        return self.__current_question_index
    
    def set_current_question_index(self, index):
        self.__current_question_index = index

    def add_questions_automatically(self):

        for question_type, prompt, choices, answer in questions:
            global tipejurusan
            if app_login.prodilogin == "Informatika" or app_login.prodilogin == "Sistem Informasi" or app_login.prodilogin == "Kedokteran" or app_login.prodilogin == "Statistika" or app_login.prodilogin == "Pendidikan Matematika":
                tipejurusan = "saintek"
            elif app_login.prodilogin == "Hubungan Internasional" or app_login.prodilogin == "Ilmu Pemerintahan" or app_login.prodilogin == "Ilmu Hukum" or app_login.prodilogin == "Ilmu Komunikasi" or app_login.prodilogin == "Psikologi":
                tipejurusan = "soshum"
            else:
                tipejurusan = ""
                
            if tipejurusan == "saintek" and question_type not in ["saintek", "TPS"]:
                continue
            elif tipejurusan == "soshum" and question_type not in ["soshum","TPS"]:
                continue

            if question_type == "saintek":
                question = SaintekQuestion(prompt, choices, answer)
            elif question_type == "soshum":
                question = SoshumQuestion(prompt, choices, answer)
            elif question_type == "TPS":
                question = TPSQuestion(prompt, choices, answer)
            else:
                raise ValueError("Tipe pertanyaan tidak valid")
            self.__questions.append(question)
        
        random.shuffle(self.__questions)
        self.__questions = self.__questions[:15]
    
    def display_question(self):
        question = self.__questions[self.__current_question_index]
        self.label_question.config(text=question.prompt)
        
        random_choices = question.choices[:]
        random.shuffle(random_choices)
        
        for i, choice in enumerate(random_choices):
            self.answer_buttons[i].config(text=choice, state=tk.NORMAL)
            
            if len(choice) < 35:
                self.answer_buttons[i].config(width=35)
            else:
                self.answer_buttons[i].config(width=len(choice))
        
        self.correct_answer_index = random_choices.index(question.answer)
        
        self.__timer_running = True
        self.__time_left = question.time_limit
        self.start_timer()
    
    def check_answer(self, index):
        self.__timer_running = False
        question = self.__questions[self.__current_question_index]
        if index == self.correct_answer_index:
            self.__score += 1
            messagebox.showinfo("Benar", "Jawaban benar!")
        else:
            messagebox.showinfo("Salah", f"Jawaban salah! Jawaban yang benar adalah: {question.answer}")
        for btn in self.answer_buttons:
            btn.config(state=tk.DISABLED)
        self._root.after(1000, self.next_question)
    
    def next_question(self):
        self.__current_question_index += 1
        if self.__current_question_index < len(self.__questions):
            self.display_question()
        else:
            self.show_summary()

    def show_summary(self):
        summary_window = tk.Toplevel(self._root)
        summary_window.title("Ringkasan Kuis")

        summary_text = tk.Text(summary_window, wrap="word", height=20, width=60)
        summary_text.pack(side="left", fill="both", expand=True)

        scrollbar = tk.Scrollbar(summary_window, orient="vertical", command=summary_text.yview)
        scrollbar.pack(side="right", fill="y")
        summary_text.configure(yscrollcommand=scrollbar.set)

        summary_text.insert("end", f"Skor akhir Anda adalah: {self.__score} dari {len(self.__questions)}\n\n")
        summary_text.insert("end", "Daftar Pertanyaan dan Jawaban Benar:\n")
        for question in self.__questions:
            summary_text.insert("end", f"{question.prompt}\nJawaban Benar: {question.answer}\n\n")
        total_score = self.__score * 10
        summary_text.insert("end", f"Skor +{total_score}")

        self.update_score(total_score)
        self._root.quit()


    def update_score(self, total_score):
        participant = app_register.list_participant[app_login.usernamelogin]
        participant.update_score(total_score)

        self.exit_button = tk.Button(text="Back", font=("Futura", 14), command=self.exitQuiz)
        self.exit_button.pack(pady=10)

    def exitQuiz(self):
        self._root.destroy()
        app_menu.start()
    
    def start_timer(self):
        if self.__time_left > 0 and self.__timer_running:
            self.label_timer.config(text=f"Waktu tersisa: {self.__time_left} detik")
            self.__time_left -= 1
            self._root.after(1000, self.start_timer)
        elif self.__time_left == 0:
            self.check_answer(-1) 
    
    def exit_fullscreen(self, event=None):
        self._root.attributes("-fullscreen", False) 
    
def start():
    query = f"select * from soal"
    db.cursor.execute(query)
    
    result = db.cursor.fetchall()
    
    for i in result:
        soal = (i[1], i[2], [i[3], i[4], i[5], i[6], i[7]], i[8])
        questions.append(soal)
        
    
    root = tk.Tk()
    root.title("Quiz")
    app = QuizApp(root)
    root.mainloop()

global root
