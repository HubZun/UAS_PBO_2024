import tkinter as tk
from tkinter import messagebox

from . import LoginApp as app_login
from . import database as db

list_participant = {}

class Participant:
    def __init__(self, username, password, name, prodi, score):
        self.name = name
        self.score = score
        self.username = username
        self.password = password
        self.prodi = prodi
    
    def update_score(self, total_score):
        self.score += total_score

def import_participant():
    query = "select * from tbuser"
    db.cursor.execute(query)

    result = db.cursor.fetchall()

    for i in result:
        participant = Participant(i[1], i[2], "", i[3], i[4])
        list_participant[i[1]] = participant
        print(f"Participant: {participant}")
        
class RegisterApp:
    def __init__(self, root, username, password, nama_lengkap, prodi):
        self.root = root
        self.root.title("Register")
        self.username = username
        self.password = password
        self.nama_lengkap = nama_lengkap
        self.prodi = prodi
        bg_color = root.cget("bg")

        def on_select(event):
            # Mendapatkan indeks item yang dipilih
            global value
            index = listbox.curselection()[0]
            # Mendapatkan nilai item yang dipilih
            value = listbox.get(index)
            # Menampilkan nilai item yang dipilih
            selection_label.config(text="Selected: " + value)

        # Membuat frame dan menempatkannya di tengah jendela
        frame = tk.Frame(root, width=300, height=300, bg=bg_color)
        frame.place(relx=0.5, rely=0.4 , anchor=tk.CENTER)

        # Label "Register"
        self.register_label = tk.Label(frame, text="Register", font=("Futura", 14))
        self.register_label.grid(row=0, column=0, columnspan=2, pady=20)

        # Label "username:"
        self.username_label = tk.Label(frame, text="Username: ", font=("Futura", 14))
        self.username_label.grid(row=1, column=0, pady=5, sticky='e')

        # Entry for username
        self.username_entry = tk.Entry(frame, width=30)
        self.username_entry.grid(row=1, column=1, pady=5)

        # Label "nama lengkap:"
        self.name_label = tk.Label(frame, text="Nama Lengkap: ", font=("Futura", 14))
        self.name_label.grid(row=2, column=0, pady=5, sticky='e')

        # Entry for nama lengkap
        self.name_entry = tk.Entry(frame, width=30)
        self.name_entry.grid(row=2, column=1, pady=5)

        # Label "password:"
        self.password_label = tk.Label(frame, text="Password: ", font=("Futura", 14))
        self.password_label.grid(row=3, column=0, pady=5, sticky='e')

        # Entry for password
        self.password_entry = tk.Entry(frame, width=30)
        self.password_entry.grid(row=3, column=1, pady=5)

        # Label "konfirmasi password:"
        self.password_confirm_label = tk.Label(frame, text="Konfirmasi Password: ", font=("Futura", 14))
        self.password_confirm_label.grid(row=4, column=0, pady=5, sticky='e')

        # Entry for konfirmasi password
        self.password_confirm_entry = tk.Entry(frame, width=30)
        self.password_confirm_entry.grid(row=4, column=1, pady=5)

        # Membuat frame untuk Listbox
        listbox_frame = tk.Frame(frame, bg=bg_color)
        listbox_frame.grid(row=5, column=0, columnspan=2, pady=10)

        # Membuat Label untuk menampilkan item yang dipilih
        selection_label = tk.Label(listbox_frame, text="Program Studi: ",font=("Futura", 14))
        selection_label.grid(row=0, column=0)

        # Membuat Listbox
        listbox = tk.Listbox(listbox_frame, font=("Futura", 14))
        listbox.grid(row=1, column=0)

        # Menambahkan item ke Listbox
        for item in ["Informatika", "Sistem Informasi", "Kedokteran","Statistika", "Pendidikan Matematika","Hubungan Internasional", "Ilmu Pemerintahan","Ilmu Hukum", "Ilmu Komunikasi", "Psikologi"]:
            listbox.insert(tk.END, item)

        # Mengaitkan event handler dengan Listbox
        listbox.bind("<<ListboxSelect>>", on_select)

        # Button "Register"
        self.register_button = tk.Button(frame, text="Daftar", font=("Futura", 14), command=self.register)
        self.register_button.grid(row=6, column=0, columnspan=2, pady=10)

        # Button "kembali"
        self.exit_button = tk.Button(frame, text="kembali", font=("Futura", 14), command=self.exit_program)
        self.exit_button.grid(row=7, column=0, columnspan=2, pady=10)

    def register(self):
        username = self.username_entry.get().strip()
        password = self.password_entry.get().strip()
        namaLengkap = self.name_entry.get().strip()
        
        query = f"select * from tbuser "
        db.cursor.execute(query)
        
        result = db.cursor.fetchall()
        
        for i in result:
            if i[1] == username: 
                messagebox.showinfo("Registrasi","username telah digunakan")
                break
                
            else:
                data = [(username,password,value, namaLengkap ) ]
                query = "insert into tbuser (username, password, prodi, nama_lengkap) values (%s, %s, %s, %s)"
                
                db.cursor.executemany(query, data)
                
                # untuk mengubah data di database
                db.con.commit()
                
                messagebox.showinfo("Registrasi","Berhasil Registrasi")
                participant = Participant(username,password,"",value,0)
                self.root.destroy()
                app_login.start()
                
                print("Berhasil Sign Up")
        
        # if username == "a" and password == "a":
            
        # else:
        #     messagebox.showinfo("login","Gagal Login")

    def exit_program(self):
        self.root.destroy()
        app_login.start()

def start():
    root = tk.Tk()
    root.title("Register")
    root.attributes("-fullscreen", True)
    app = RegisterApp(root, "", "", "", "")
    root.mainloop()

global root
