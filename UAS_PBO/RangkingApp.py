import tkinter as tk
from tkinter import ttk

from . import MenuApp as app_menu
from . import database as db

class RankingApp:
    def __init__(self, root, ranking_data):
        self.root = root
        self.root.title("Peringkat")
        self.ranking_data = ranking_data

        self.main_frame = tk.Frame(root)
        self.main_frame.pack(expand=True)

        self.rank_frame = tk.Frame(self.main_frame)
        self.rank_frame.pack(pady=20)

        self.title_label = tk.Label(self.rank_frame, text="Peringkat", font=("Futura", 16))
        self.title_label.grid(row=0, columnspan=2)

        self.rank_tree = ttk.Treeview(self.rank_frame, columns=("Username", "Points"), show="headings")
        self.rank_tree.heading("Username", text="Username")
        self.rank_tree.heading("Points", text="Points")
        self.rank_tree.grid(row=1, columnspan=2)

        self.show_ranking()

        self.exit_button = tk.Button(self.main_frame, text="Kembali", command=self.exit_app, font=("Futura", 14))
        self.exit_button.pack(pady=10)

    def show_ranking(self):
        query = f"select * from tbuser order by skor desc "
        db.cursor.execute(query)
        
        result = db.cursor.fetchall()
        
        for i in result:
            self.rank_tree.insert("", "end", values=(i[1], i[4]))

    def exit_app(self):
        self.root.destroy()
        app_menu.start()

ranking_data = {}

def start():
    root = tk.Tk()
    root.attributes("-fullscreen", True)
    app = RankingApp(root, ranking_data)

    root.update_idletasks()
    width = root.winfo_width()
    height = root.winfo_height()
    x = (root.winfo_screenwidth() // 2) - (width // 2)
    y = (root.winfo_screenheight() // 2) - (height // 2)
    root.geometry(f"{width}x{height}+{x}+{y}")

    root.mainloop()

global root
