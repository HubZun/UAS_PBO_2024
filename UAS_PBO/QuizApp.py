import tkinter as tk
from tkinter import messagebox
import random
import sys

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
        super().__init__(prompt, choices, answer, time_limit=45)  # Ubah waktu menjadi 45 detik untuk Saintek

class SoshumQuestion(Question):
    def __init__(self, prompt, choices, answer):
        super().__init__(prompt, choices, answer)

class TPSQuestion(Question):
    def __init__(self, prompt, choices, answer):
        super().__init__(prompt, choices, answer)

class QuizApp:
    def __init__(self, root):
        self.root = root
        self.root.title("Aplikasi Kuis")
        self.root.attributes("-fullscreen", True)  # Aktifkan mode layar penuh

        self.questions = []
        self.score = 0
        self.current_question_index = 0
        self.time_left = 20
        self.timer_running = False

        self.frame = tk.Frame(root)
        self.frame.pack(expand=True)

        self.label_timer = tk.Label(self.frame, text=f"Waktu tersisa: {self.time_left} detik", font=("Arial", 12))
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

        self.root.bind("<Escape>", self.exit_fullscreen)  # Mengaitkan tombol Escape untuk keluar dari layar penuh

    def add_questions_automatically(self):
        # questions = [
        #     ("Saintek", "Apa ibu kota Perancis?", ["Paris", "London", "Berlin", "Roma", "Madrid"], "Paris"),
        #     ("Soshum", "Siapa penulis 'Romeo dan Juliet'?", ["Shakespeare", "Hemingway", "Tolstoy", "Austen", "Dickens"], "Shakespeare"),
        #     ("TPS", "Apa planet terbesar di tata surya kita?", ["Jupiter", "Saturnus", "Mars", "Venus", "Neptunus"], "Jupiter"),
        #     ("Saintek", "Apa simbol kimia untuk air?", ["H2O", "CO2", "O2", "N2", "He"], "H2O"),
        #     ("Soshum", "Siapa penulis '1984'?", ["George Orwell", "Mark Twain", "Jane Austen", "J.K. Rowling", "Ernest Hemingway"], "George Orwell"),
        #     ("TPS", "Berapa 9 + 10?", ["19", "21", "18", "20", "17"], "19"),
        #     ("Saintek", "Berapa kecepatan cahaya?", ["299.792.458 m/s", "150.000.000 m/s", "340 m/s", "1.080.000.000 m/s", "1.000.000 m/s"], "299.792.458 m/s"),
        #     ("Soshum", "Siapa pelukis Mona Lisa?", ["Leonardo da Vinci", "Pablo Picasso", "Vincent van Gogh", "Claude Monet", "Salvador Dalí"], "Leonardo da Vinci"),
        #     ("TPS", "Berapa akar kuadrat dari 64?", ["8", "6", "7", "9", "10"], "8"),
        #     ("Saintek", "Berapa titik didih air?", ["100°C", "90°C", "80°C", "110°C", "120°C"], "100°C"),
        #     ("Saintek", "Apa unsur kimia dengan simbol 'O'?", ["Oksigen", "Hidrogen", "Karbon", "Nitrogen", "Helium"], "Oksigen"),
        #     ("Soshum", "Siapa presiden pertama Indonesia?", ["Soekarno", "Suharto", "Habibie", "Megawati", "SBY"], "Soekarno"),
        #     ("TPS", "Berapa hasil dari 7 * 8?", ["56", "54", "58", "60", "52"], "56"),
        #     ("Saintek", "Apa rumus kimia dari garam dapur?", ["NaCl", "KCl", "MgCl2", "CaCl2", "LiCl"], "NaCl"),
        #     ("Soshum", "Siapa pendiri Microsoft?", ["Bill Gates", "Steve Jobs", "Mark Zuckerberg", "Elon Musk", "Larry Page"], "Bill Gates"),
        #     ("TPS", "Berapa hasil dari 12 - 7?", ["5", "4", "6", "3", "2"], "5"),
        #     ("Saintek", "Apa unsur kimia dengan simbol 'Fe'?", ["Besi", "Emas", "Perak", "Tembaga", "Aluminium"], "Besi"),
        #     ("Soshum", "Siapa penulis 'Harry Potter'?", ["J.K. Rowling", "J.R.R. Tolkien", "George R.R. Martin", "Suzanne Collins", "Stephenie Meyer"], "J.K. Rowling"),
        #     ("TPS", "Berapa hasil dari 100 / 4?", ["25", "20", "30", "40", "15"], "25"),
        #     ("Saintek", "Apa unsur kimia dengan simbol 'Ag'?", ["Perak", "Emas", "Platinum", "Tembaga", "Aluminium"], "Perak")
        # ]

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
            self.questions.append(question)
        
        # Acak pertanyaan dan pilih 15
        random.shuffle(self.questions)
        self.questions = self.questions[:15]
    
    def display_question(self):
        question = self.questions[self.current_question_index]
        self.label_question.config(text=question.prompt)
        
        random_choices = question.choices[:]
        random.shuffle(random_choices)
        
        for i, choice in enumerate(random_choices):
            self.answer_buttons[i].config(text=choice, state=tk.NORMAL)
        
        self.correct_answer_index = random_choices.index(question.answer)
        
        self.timer_running = True
        self.time_left = question.time_limit  # Atur waktu sesuai dengan tipe soal
        self.start_timer()
    
    def check_answer(self, index):
        self.timer_running = False
        question = self.questions[self.current_question_index]
        if index == self.correct_answer_index:
            self.score += 1
            messagebox.showinfo("Benar", "Jawaban benar!")
        else:
            messagebox.showinfo("Salah", f"Jawaban salah! Jawaban yang benar adalah: {question.answer}")
        for btn in self.answer_buttons:
            btn.config(state=tk.DISABLED)
        self.root.after(1000, self.next_question)
    
    def next_question(self):
        self.current_question_index += 1
        if self.current_question_index < len(self.questions):
            self.display_question()
        else:
            self.show_summary()

    def show_summary(self):
        summary_text = f"Skor akhir Anda adalah: {self.score} dari {len(self.questions)}\n\n"
        summary_text += "Daftar Pertanyaan dan Jawaban Benar:\n"
        for question in self.questions:
            summary_text += f"{question.prompt}\nJawaban Benar: {question.answer}\n\n"
        total_score = self.score*10
        summary_text += f"Skor +{total_score}"
        self.update_score(total_score)
        messagebox.showinfo("Kuis Selesai", summary_text)
        self.root.quit()

    def update_score(self, total_score):
        participant = app_register.list_participant[app_login.usernamelogin]
        participant.update_score(total_score)
        query = f"update tbuser set skor =  {app_login.skorlogin + self.score * 10} where username = '{app_login.usernamelogin}'"
        db.cursor.execute(query)
        db.con.commit()

        self.exit_button = tk.Button(text="Back", font=("Futura", 14), command=self.exitQuiz)
        self.exit_button.pack(pady=10)

    def exitQuiz(self):
        self.root.destroy()
        app_menu.start()
    
    def start_timer(self):
        if self.time_left > 0 and self.timer_running:
            self.label_timer.config(text=f"Waktu tersisa: {self.time_left} detik")
            self.time_left -= 1
            self.root.after(1000, self.start_timer)
        elif self.time_left == 0:
            self.check_answer(-1)  # Secara otomatis anggap jawaban salah jika waktu habis
    
    def exit_fullscreen(self, event=None):
        self.root.attributes("-fullscreen", False)  # Keluar dari mode layar penuh
    
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

