                                            # MENGINPORT MODULE

# IMPORT TKINTER
from tkinter import *
from tkinter import ttk
from tkinter.messagebox import *
from tkinter import messagebox
from tkcalendar import *

# INPORT DATETIME
from datetime import datetime, timedelta

# IMPORT PANDAS
import pandas as pd

                                            # LISTING

# LISTING FRAME DATAMOTOR KE LIST KOSONG
listnokendaraan = []
listkapasitasmotor = []
listkotatujuan = []
listtariflayanan = []
estimasi_kirim = []

                                            # 
list_tarif_pengiriman = []
listlabel = []
listtotalharga = []
tanggal_pengiriman = []
estimasi_sampai = []

waktunow = datetime.now()
formatwaktu = waktunow.strftime('%d, %A %B %Y')

listmetode = ['Cash','Debit','QRIS']

dataitem = pd.read_excel("Data Pengiriman Yang Tersedia Di LOSIK Cargo.xlsx")
tujuanpengiriman = dataitem['Tujuan Pengiriman'].tolist()
listkapasitas1 = dataitem['Kapasitas 1'].tolist()
listkapasitas2 = dataitem['Kapasitas 2'].tolist()
listkapasitas3 = dataitem['Kapasitas 3'].tolist()

datalayanan = pd.read_excel("Data Layanan Tambahan Yang Tersedia Di LOSIK Cargo.xlsx")
listlayanan = datalayanan['Jenis Layanan'].tolist()
listhargalayanan = datalayanan['Harga Layanan'].tolist()
print(listkapasitas1 or listkapasitas2 or listkapasitas3)
print(listlayanan)

# LOGIN
userpass = {'1' : '1'}
coba = 0

def login():
    global coba
    username = inputusername.get()
    password = inputpassword.get()
    if username in userpass and password == userpass[username]:
        window_login.destroy()
        window_main.deiconify()
    elif coba == 3:
        showwarning(message='Terminated')
        window_main.destroy()
        window_login.destroy()
    else:
        showerror(message='Username / Password salah')
        inputusername.delete(0,END)
        inputpassword.delete(0,END)
    coba += 1

# VIEW TABEL TARIF PENGIRIMAN DAN TARIF LAYANAN
def tarif():
    window_tabel = Toplevel()
    window_tabel.title('DAFTAR TARIF PENGIRIMAN MOTOR LOSIK CARGO')
    window_tabel.geometry('500x500')

    frametabel = Frame(window_tabel)
    frametabel.pack()
    
    frametabeltarif = LabelFrame(frametabel)
    frametabeltarif.grid(row=0, column=0, sticky='news', padx= 10, pady=4)

    framepengiriman1 = LabelFrame(frametabeltarif)
    framepengiriman1.grid(row=1, column=0, sticky='news',padx=10, pady=4)

    framepengiriman2 = LabelFrame(frametabeltarif)
    framepengiriman2.grid(row=2, column=0, sticky='news', padx=10, pady=4)

    framelayanan = LabelFrame(frametabel)
    framelayanan.grid(row=1, column=0, sticky='news', padx=10, pady=4)

    framelayanan1 = LabelFrame(framelayanan)
    framelayanan1.grid(row=1, column=0, sticky='news', padx=10, pady=4)

    framelayanan2 = LabelFrame(framelayanan)
    framelayanan2.grid(row=2, column=0, sticky='news',padx=10, pady=4)

    titlepengiriman = Label(frametabeltarif, text='TARIF PENGIRIMAN MOTOR')
    titlepengiriman.grid(row=0, column=0,sticky="w")

    judul1 = Label(framepengiriman1, text='Kota Tujuan')
    judul1.grid(row=1, column=0)

    judul2 = Label(framepengiriman1, text='<150 cc')
    judul2.grid(row=1, column=1)

    judul2 = Label(framepengiriman1, text='≥150 cc dan <250 cc')
    judul2.grid(row=1, column=2)

    judul3 = Label(framepengiriman1, text='>250 cc')
    judul3.grid(row=1, column=3)

    judul4 = Label(framepengiriman1, text='Estimasi Pengiriman')
    judul4.grid(row=1, column=4)

    for i in framepengiriman1.winfo_children(): 
        i.grid_configure(padx= 5, pady=2) 

    kota1 = Label(framepengiriman2, text='Surabaya')
    kota1.grid(row=2, column=0)

    kap1 = Label(framepengiriman2, text='Rp350.000,00')
    kap1.grid(row=2, column=1)

    kap2 = Label(framepengiriman2, text='Rp425.000,00')
    kap2.grid(row=2, column=2)

    kap3 = Label(framepengiriman2, text='Rp550.000,00')
    kap3.grid(row=2, column=3)

    hari1 = Label(framepengiriman2, text='      2 Hari')
    hari1.grid(row=2, column=4)

    kota2 = Label(framepengiriman2, text='Bandung')
    kota2.grid(row=3, column=0)

    kapp1 = Label(framepengiriman2, text='Rp450.000,00')
    kapp1.grid(row=3, column=1)

    kapp2 = Label(framepengiriman2, text='   Rp520.000,00')
    kapp2.grid(row=3, column=2)

    kapp3 = Label(framepengiriman2, text='   Rp610.000,00')
    kapp3.grid(row=3, column=3)

    hari2 = Label(framepengiriman2, text='      4 Hari')
    hari2.grid(row=3, column=4)

    kota3 = Label(framepengiriman2, text='DKI Jakarta')
    kota3.grid(row=4, column=0)

    kappp1 = Label(framepengiriman2, text='Rp500.000,00')
    kappp1.grid(row=4, column=1)

    kappp2 = Label(framepengiriman2, text='   Rp570.000,00')
    kappp2.grid(row=4, column=2)

    kappp3 = Label(framepengiriman2, text='   Rp650.000,00')
    kappp3.grid(row=4, column=3)

    hari3 = Label(framepengiriman2, text='      5 Hari')
    hari3.grid(row=4, column=4)

    for i in framepengiriman2.winfo_children(): 
        i.grid_configure(padx = 5, pady=2) 

    titlelayanan = Label(framelayanan, text='TARIF LAYANAN TAMBAHAN')
    titlelayanan.grid(row=0, column=0,sticky="w")

    judull1 = Label(framelayanan1, text='Layanan')
    judull1.grid(row=1, column=0)

    judull2 = Label(framelayanan1, text='                                   Harga')
    judull2.grid(row=1, column=1)

    layanan1 = Label(framelayanan2, text='Asuransi')
    layanan1.grid(row=2, column=0)

    harga1 = Label(framelayanan2, text='Rp50.000,00')
    harga1.grid(row=2, column=1)

    layanan2 = Label(framelayanan2, text='Kuras Bensin')
    layanan2.grid(row=3, column=0)

    harga2 = Label(framelayanan2, text='Rp25.000,00')
    harga2.grid(row=3, column=1)

    layanan3 = Label(framelayanan2, text='Asuransi dan Kuras Bensin')
    layanan3.grid(row=4, column=0)

    harga3 = Label(framelayanan2, text='Rp75.000,00')
    harga3.grid(row=4, column=1)

    layanan4 = Label(framelayanan2, text='Tidak Ada')
    layanan4.grid(row=5, column=0)

    harga4 = Label(framelayanan2, text='Rp0,00')
    harga4.grid(row=5, column=1)

# 
def get_date():
    if not input_no_kendaraan.get():
        showerror(title='Error', message = 'Silahkan Masukkan Nomor Kendaraan')
    elif not input_tujuan.get():
        messagebox.showerror(title='Error', message= 'Silahkan Masukkan Tujuan Pengiriman')
    elif not input_kapasitas_motor.get().isdigit():
        showerror(title='Error', message='Silahkan Masukkan Kapasitas Kendaraan')
    elif not input_layanan.get():
        showerror(title='Error', message='Silahkan Masukkan Layanan Pengiriman')
    else:
        tanggal_pengiriman = inputtanggal.get_date()
        if input_tujuan.current() == 0:
            estimasiTiba = 2
        elif input_tujuan.current() == 1:
            estimasiTiba = 4
        else:
            estimasiTiba = 5
        tanggal_sampai = tanggal_pengiriman + timedelta(days=estimasiTiba)
        estimasi_kirim.append(tanggal_pengiriman.strftime("%d/%m/%Y"))
        estimasi_sampai.append(tanggal_sampai.strftime("%d/%m/%Y"))
        print('tanggal pengiriman',tanggal_pengiriman) # ini print tanggal pengiriman
        print('tanggal sampai',tanggal_sampai) # ini print tanggal sampai

#Input Data
def tambah():
    listnokendaraan.append(input_no_kendaraan.get())
    listkotatujuan.append(input_tujuan.get())
    listkapasitasmotor.append(input_kapasitas_motor.get())
    listlayanan.append(input_layanan.get())
    print('listkotatujuan: ', listkotatujuan)
    global tabel_no, tabel_tarif_pengiriman, tabel_tanggal_Pengiriman, tabel_tanggal_sampai, tabel_harga_layanan
    data = 0
    while data < len(listkotatujuan):
        tabel_no = Label(framerincian1, text=data+1)
        tabel_no.grid(row=data+1, column=0)

        tabel_no_kendaraan= Label(framerincian1, text=listnokendaraan[data]) 
        tabel_no_kendaraan.grid(row=data+1, column=1)

        tabel_tarif_pengiriman = Label(framerincian1, text= 'Rp{:,.2f}'.format(list_tarif_pengiriman[data])) 
        tabel_tarif_pengiriman.grid(row=data+1, column=2)

        tabel_tanggal_Pengiriman = Label(framerincian1, text = estimasi_kirim[data])
        tabel_tanggal_Pengiriman.grid(row= data+1, column=3)

        tabel_tanggal_sampai = Label(framerincian1, text = estimasi_sampai[data])
        tabel_tanggal_sampai.grid(row= data+1, column=4)

        tabel_harga_layanan = Label(framerincian1, text='Rp{:,.2f}'.format(listtariflayanan[data])) 
        tabel_harga_layanan.grid(row= data+1, column=5)

        totalll = Label(framebayar,  text='Rp. {:,.2f}'.format(sum(listtotalharga)))
        totalll.grid(row=1, column=1)

        listlabel.append(totalll) 
        listlabel.append(tabel_no)
        listlabel.append(tabel_no_kendaraan)
        listlabel.append(tabel_tarif_pengiriman)
        listlabel.append(tabel_tanggal_Pengiriman)
        listlabel.append(tabel_tanggal_sampai)
        listlabel.append(tabel_harga_layanan)

        if data+1 >= int(inputjumlah.get()):
            input_no_kendaraan['state'] = DISABLED
            input_kapasitas_motor['state'] = DISABLED
            input_tujuan['state'] = DISABLED
            input_layanan['state'] = DISABLED
            buttoninput['state'] = DISABLED
        
        print('listnokendaraan',listnokendaraan)
        print('listkotatujuan',listkotatujuan)
        print('listkapasitasmotor',listkapasitasmotor)
        print('listlayanan',listlayanan)
        print('listsampai',estimasi_sampai)
        print('listkirim',estimasi_kirim)
        print('data',data)
        input_no_kendaraan.delete(0,END)
        input_kapasitas_motor.delete(0,END)
        input_tujuan.delete(0, END)
        input_layanan.delete(0,END)
        input_kapasitas_motor.delete(0, END)
        data += 1


def motor():
    print('motor')
    x = tujuanpengiriman.index(input_tujuan.get())
    if int(input_kapasitas_motor.get()) < 150:
        list_tarif_pengiriman.append(listkapasitas1[x])
        listtotalharga.append(listkapasitas1[x])
    elif int(input_kapasitas_motor.get()) >= 150 and int(input_kapasitas_motor.get()) < 250:
        list_tarif_pengiriman.append(listkapasitas2[x])
        listtotalharga.append(listkapasitas2[x])
    else:
        list_tarif_pengiriman.append(listkapasitas3[x])
        listtotalharga.append(listkapasitas3[x])
    print('list tarif pengiriman',list_tarif_pengiriman)

def layanan():
    a = listlayanan.index(input_layanan.get())
    listtariflayanan.append(listhargalayanan[a])
    listtotalharga.append(listhargalayanan[a])
   
def enable2():
    input_no_kendaraan['state'] = NORMAL
    input_kapasitas_motor['state'] = NORMAL
    input_tujuan['state'] = NORMAL
    input_layanan['state'] = NORMAL
    inputtanggal.configure(state='normal')
    buttoninput['state'] = NORMAL

def enable3():
    inputmembayar['state'] = NORMAL
    inputmetodebayar['state'] = NORMAL
    button_frame_bayar['state'] = NORMAL

def disable1():
    if not inputnama.get().isalpha():   
        showerror(title='Error', message = 'Silahkan Masukkan Nama')
    elif not inputnik.get().isdigit():
        showerror(title='Error', message= 'Silahkan Masukkan NIK')
    elif len(inputnik.get()) != 16:
        showerror(title='Error', message='NIK harus terdiri dari 16 digit.')
    elif not inputjumlah.get():
        showerror(title='Error', message='Silahkan Masukkan Jumlah Motor')
    else:
        inputnama['state'] = DISABLED
        inputnik['state'] = DISABLED
        inputjumlah['state'] = DISABLED
        buttonidentitas['state'] = DISABLED

def pembayaran_kembalian():
    nominalharga = int(sum(listtotalharga))
    if inputmetodebayar.get() == 'Cash':
        if int(inputmembayar.get()) < nominalharga:
            showerror(title='Error', message='BIAYA PEMBAYARAN KURANG')
        else:
            inputmembayar['state'] = DISABLED
            inputmetodebayar['state'] = DISABLED
            button_frame_bayar['state'] = DISABLED 
            return int(inputmembayar.get()) - nominalharga
    else:
        if int(inputmembayar.get()) < nominalharga:
            showerror(title='Error', message='BIAYA PEMBAYARAN INVALID')                              
        else:
            inputmembayar['state'] = DISABLED
            inputmetodebayar['state'] = DISABLED
            button_frame_bayar['state'] = DISABLED 
            return 0   
    
    
                
def rincian_nota():

    if int(inputmembayar.get()) < int(sum(listtotalharga)):
        showerror(title='Error', message='BIAYA PEMBAYARAN KURANG')
    else:
        nama_pengirim =  Label(framenota, text = f'Nama Pengirim\t\t = {inputnama.get()}')
        nama_pengirim.grid(row=1, column=0, sticky= 'w')

        nik_pengirim =  Label(framenota, text = f'Nik Pengirim\t\t = {inputnik.get()}')
        nik_pengirim.grid(row=2, column=0, sticky= 'w')
  
        tanggal_Pengiriman = Label(framenota, text=f"Tanggal Pengiriman\t = {inputtanggal.get_date()}")
        tanggal_Pengiriman.grid(row=4,column=0,sticky='w')

        totalpemesanan = Label(framenota, text = f"Total Pemesanan\t\t = Rp{sum(listtotalharga):,.2f}")
        totalpemesanan.grid(row=5, column=0,sticky='w')

        totalpembayaran = Label(framenota, text = f"Total Pembayaran\t\t = Rp{int(inputmembayar.get()):,.2f}")
        totalpembayaran.grid(row=6, column=0,sticky='w')

        pengembalian= Label(framenota, text = f"Kembalian\t\t = Rp{pembayaran_kembalian():,.2f}")
        pengembalian.grid(row=7, column=0,sticky='w')

def selesai():
    window_main.destroy()

# Main Window
window_main = Tk()
window_main.title('LOSIK Cargo')
window_main.withdraw()

#Frame
frame = Frame(window_main)
frame.pack()

framepengiriman = LabelFrame(frame)
framepengiriman.grid(row=0, column=0, sticky='news', padx=20, pady=4, columnspan=2)
framepengiriman.columnconfigure(0, weight=1)
framepengiriman.columnconfigure(1, weight=1)
framepengiriman.columnconfigure(2, weight=1)

frameidentitas = LabelFrame(frame)
frameidentitas.grid(row=1, column=0, sticky='news', padx=20, pady=4)
frameidentitas.columnconfigure(0, weight=1)
frameidentitas.columnconfigure(1, weight=1)

framemotor = LabelFrame(frame)
framemotor.grid(row=1, column=1, pady=4, padx=20, sticky='news')
framemotor.columnconfigure(0, weight=1)
framemotor.columnconfigure(1, weight=1)

framerincian = LabelFrame(frame)
framerincian.grid(row=2, column=0, sticky='news', padx=20, pady=4, columnspan=2) 

framerincian1 = LabelFrame(framerincian) 
framerincian1.grid(row=0, column=0, sticky='news', padx=20, pady=4) 

framebayar = LabelFrame(frame) 
framebayar.grid(row=3, column=0, sticky='news', padx=20, pady=4, columnspan=2)

framenota = LabelFrame(frame, padx=10)
framenota.grid(row=3, column=1, padx=20, pady=4, sticky='news', columnspan=2)

frame_selesai = LabelFrame(frame)
frame_selesai.grid(row=6, column=0,columnspan= 2,sticky='news', padx=20, pady=5)
frame_selesai.grid_columnconfigure(1,weight=1)

# WIDGET
tabel = Label(framepengiriman, text='DAFTAR TARIF PENGIRIMAN MOTOR LOSIK CARGO')
tabel.grid(row=0, column=0, sticky="w")

buttontabel = Button(framepengiriman, text='Lihat', bg='#7ED957', command= lambda: [tarif()] ) 
buttontabel.grid(row=0, column=1, sticky='news')

title1 = Label(frameidentitas, text='DATA IDENTITAS PENGIRIM')
title1.grid(row=0, column=0,sticky="w")

nama = Label(frameidentitas, text='Nama Pengirim')
nama.grid(row=1, column=0,sticky="w", padx=20, pady=10)

inputnama = Entry(frameidentitas)
inputnama.grid(row=1, column=1,padx= 20, pady=10, sticky='w') 

nik = Label(frameidentitas, text='NIK')
nik.grid(row=2, column=0,sticky="w", padx=20, pady=10)

inputnik = Entry(frameidentitas)
inputnik.grid(row=2, column=1,padx= 20, pady=10, sticky='w') 

jumlah = Label(frameidentitas, text='Jumlah Motor')
jumlah.grid(row=3, column=0,sticky='w',padx=20,pady=10)

inputjumlah = Spinbox(frameidentitas, text = 'Jumlah Motor', 
    from_=1, to_=1000)
inputjumlah.grid(row=3, column=1,padx= 20, pady=10,sticky='w') 

buttonidentitas = Button(frameidentitas, text='Input', bg='#7ED957', command= lambda: [disable1(), enable2()] ) 
buttonidentitas.grid(row=4, column=1, sticky='w', padx=20, pady=10)

title2 = Label(framemotor, text='DATA MOTOR YANG AKAN DIKIRIM')
title2.grid(row=0, column=0,sticky='w')
 
no_kendaraan = Label(framemotor, text='Nomor Kendaraaan') 
no_kendaraan.grid(row=1, column=0, sticky="w",padx=20,pady=10)

input_no_kendaraan = Entry(framemotor) 
input_no_kendaraan.grid(row=1, column=1, sticky="w", pady=10, padx=20) 

kapasitas_motor = Label(framemotor, text='Kapasitas Motor') 
kapasitas_motor.grid(row=2, column=0, sticky="w", padx=20, pady=10) 

input_kapasitas_motor = Spinbox(framemotor, from_=50, to=2500)
input_kapasitas_motor.grid(row=2, column=1,sticky='w', padx=20, pady=10)

tujuan = Label(framemotor, text='Kota Tujuan') 
tujuan.grid(row=3, column=0, sticky="w", padx=20, pady=10) 

input_tujuan = ttk.Combobox(framemotor, values=tujuanpengiriman, state='readonly') 
input_tujuan.grid(row=3, column=1, sticky="w", pady=10, padx=20) 

layanan1 = Label(framemotor, text='Layanan Tambahan') 
layanan1.grid(row=4, column=0, sticky="w", padx=20, pady=10) 

input_layanan = ttk.Combobox(framemotor, values=listlayanan, state='readonly') 
input_layanan.grid(row=4, column=1, sticky="w", pady=10, padx=20) 

tanggal_pengiriman_motor = ttk.Label(framemotor, text = 'Masukkan Tanggal Pengiriman (DD/MM/YY):')
tanggal_pengiriman_motor.grid(row=5, column=0, padx=20, pady=10,  sticky="w")

inputtanggal = DateEntry(framemotor,selectmode="day", date_pattern="dd/MM/yy" )
inputtanggal.grid(row=5, column=1, pady=10, sticky='w', padx=20)

buttoninput = Button(framemotor, text='Input', bg='#7ED957',command= lambda: [get_date(), motor(), layanan(), tambah(), enable3()]) 
buttoninput.grid(row=6, column=1,  padx=20, pady=10, sticky='w')

tabel_no = Label(framerincian1, text='No')
tabel_no.grid(row=0, column=0)

tabel_no_kendaraan = Label(framerincian1, text='No Kendaraan') 
tabel_no_kendaraan.grid(row=0, column=1)

tabel_tarif_pengiriman = Label(framerincian1, text='Tarif Pengiriman') 
tabel_tarif_pengiriman.grid(row=0, column=2)

tabel_tanggal_Pengiriman = Label(framerincian1, text='Tanggal Pengiriman')
tabel_tanggal_Pengiriman.grid(column=3,row=0)

tabel_tanggal_sampai = Label(framerincian1, text='Tanggal Perkiraan Kedatangan')
tabel_tanggal_sampai.grid(column=4,row=0)

tabel_harga_layanan = Label(framerincian1, text='Harga Layanan') 
tabel_harga_layanan.grid(row=0, column=5) 

for i in framerincian1.winfo_children(): 
    i.grid_configure(padx= 20, pady=2) 

widget_judul_frame_bayar = Label(framebayar, text='PEMBAYARAN' )
widget_judul_frame_bayar.grid(row=0, column=0, sticky='w')

totall = Label(framebayar, text="Nominal Harga") 
totall.grid(row=1, column=0, sticky='w')

membayar = Label(framebayar, text="Nominal Bayar") 
membayar.grid(row=2, column=0, sticky='w')

metodebayar = Label(framebayar, text=f"Metode Pembayaran") 
metodebayar.grid(row=3, column=0, sticky="w")

inputmembayar = Entry(framebayar)
inputmembayar.grid(row = 2, column=1, sticky='w')

button_frame_bayar = Button(framebayar, text="Bayar", command= lambda : [pembayaran_kembalian(), rincian_nota()])
button_frame_bayar.grid(row=3, column=2, sticky='w')

inputmetodebayar = ttk.Combobox(framebayar, values=listmetode, state='readonly')
inputmetodebayar.current(0)
inputmetodebayar.grid(row = 3, column=1, sticky='w')

widget_judul_frame_nota = Label(framenota, text='RINCIAN PENGIRIMAN\n' )
widget_judul_frame_nota.grid(row=0, column=0, sticky='w')

button_selesai = Button(frame_selesai, text="Selesai", command= lambda: [selesai()], bg="#7ED957", padx=10)
button_selesai.grid(row=0, column=0, sticky='news', columnspan=4)

# Login GUI
window_login = Toplevel()
window_login.title('LOGIN LOSIK CARGO')
window_login.geometry("250x250")

framelogin = Frame(window_login)
framelogin.pack(padx=10, fill='x')

dashboardlogin = Label(
    framelogin,
    text="SILAHKAN LOGIN",
    font=('Algerian', 15, 'bold')
)
dashboardlogin.grid(row=0, column=0, columnspan=2)

username = Label(framelogin, text='Username')
username.grid(row=1, column=0, sticky="w")

inputusername = Entry(framelogin)
inputusername.grid(row=1, column=1, padx= 20, pady=10)

password = Label(framelogin, text='Password')
password.grid(row=2,column=0, sticky="w")

inputpassword = Entry(framelogin, show='*')
inputpassword.grid(row=2,column=1)

buttonlogin= Button(framelogin, text='Login', command= lambda: [login()])
buttonlogin.grid(row=3,column=1,columnspan=2, sticky='w',padx=10,pady=10)            

#End of Window
window_main.mainloop()
