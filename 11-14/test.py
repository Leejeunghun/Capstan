from tkinter import *
from tkinter import ttk
import subprocess # 바로 python 실행하기 위해서 사용

def button_pressed(value):
    number_entry.insert("end",value)
    print(value,"pressed")
def insertNum_on():
    txt.insert(100, "On")
    subprocess.call('gpio -g write 21 1',shell=True)
def insertNum_off():
    txt.insert(100, "Off")
    subprocess.call('gpio -g write 21 0',shell=True)


subprocess.call('gpio -g mode 21 out',shell=True)  #GPIo 21 번을 출력으르로 사용 

root = Tk()
root.title("Calculator")
root.geometry("250x200")  # 버튼폭에 맞춰서 확장.
 
entry_value = StringVar(root, value='')
 
number_entry = ttk.Entry(root, textvariable = entry_value, width=20)
number_entry.grid(row=0, columnspan=4) #columnspan 은 여러칸에 걸쳐서 표시함.
 
# button 12개 추가
button1 = ttk.Button(root, text="ON", command = insertNum_on)
button1.grid(row=4, column=0)
button2 = ttk.Button(root, text="OFF", command = insertNum_off)
button2.grid(row=4, column=1)
button3 = ttk.Button(root, text="Check", command = lambda:button_pressed('3'))
button3.grid(row=4, column=2)

button7 = ttk.Button(root, text="7", command = lambda:button_pressed('7'))
button7.grid(row=1, column=0)
button8 = ttk.Button(root, text="8", command = lambda:button_pressed('8'))
button8.grid(row=1, column=1)
button9 = ttk.Button(root, text="9", command = lambda:button_pressed('9'))
button9.grid(row=1, column=2)
 
button4 = ttk.Button(root, text="4", command = lambda:button_pressed('4'))
button4.grid(row=2, column=0)
button5 = ttk.Button(root, text="5", command = lambda:button_pressed('5'))
button5.grid(row=2, column=1)
button6 = ttk.Button(root, text="6", command = lambda:button_pressed('6'))
button6.grid(row=2, column=2)
 
button1 = ttk.Button(root, text="1", command = lambda:button_pressed('1'))
button1.grid(row=3, column=0)
button2 = ttk.Button(root, text="2", command = lambda:button_pressed('2'))
button2.grid(row=3, column=1)
button3 = ttk.Button(root, text="3", command = lambda:button_pressed('3'))
button3.grid(row=3, column=2)
 
root.mainloop()
# Connection 닫기
