
## Berikut Modul library date time, yang memiliki fungsi untuk menentukan estimasi waktu.

import datetime

kota_tujuan = ['SURABAYA', 'BANDUNG','DKI JAKARTA']
kapasitas1 = [350000,450000,500000]
kapasitas2 = [425000,520000,570000]
kapasitas3 = [550000,610000,650000]
layanan_tambahan = ['kuras bensin','asuransi','asuransi dan kuras bensin']
harga_layanan = [25000, 50000, 75000]
metode_bayar = ['cash','debit','qris']


hargatarif = []
hargalayanantarif = []
totalharga = []
estimasi_kirim = []
estimasi_sampai = [] 


## Login LOSIK CARGO
print('Login LOSIK Cargo')

user_pass = {'kelompok' : '18'}

coba = 0
salah = False
while coba < 3:
    username = str(input('masukkan username anda \t\t: ')).lower()
    password = str(input('masukkan password anda \t\t: '))
    if username in user_pass and user_pass[username] == password: 
      masuk = True
      print('\nSelamat Datang di LOSIK CARGO\n')
      break
    elif coba == 2: 
      print('\nterminated\n')
      exit()
    else:  
      print('\nLogin gagal, username atau password salah!\n')
      coba += 1

# input
if masuk:
    print("                        Tabel Tarif Pengiriman Motor LOSIK Cargo")
    print(".____._____________.________________________________________________._____________________.")
    print("|    |             |              Tarif Pengiriman Motor            |                     |")
    print("| No | Kota Tujuan |________________________________________________| Estimasi Pengiriman |")
    print("|____|_____________|_<_150_cc__|_>=_150cc_dan_<=_250_cc_|_>250_cc___|_____________________|")
    print("| 1  | Surabaya    | Rp350.000 | Rp425.000              | Rp550.000 | 2 Hari              |")
    print("| 2  | Bandung     | Rp450.000 | Rp520.000              | Rp610.000 | 4 Hari              |")
    print("| 3  | DKI Jakarta | Rp500.000 | Rp570.000              | Rp650.000 | 5 Hari              |")
    print("|____|_____________|___________.________________________|___________|_____________________|")
    print()
    nama = str(input('\nmasukkan nama\t\t: '))
    nik = int(input('\nmasukkan NIK\t\t: '))
    jumlah_motor = int(input('\nmasukkan jumlah motor\t: '))
    motor = []
    data = 0
    for data in range(jumlah_motor):
        print(f'\nmotor ke-{data+1}')
        nomor_kendaraan = str(input('masukkan nomor kendaraan: '))
        tujuan = str(input('masukkan kota tujuan\t: ')).upper()
        i = 0
        while tujuan not in kota_tujuan:
            print('coba lagi')
            tujuan = str(input('masukkan kota tujuan\t: ')).upper()
            if tujuan in kota_tujuan:
                break
        if tujuan in kota_tujuan:
            kapasitas = int(input('masukkan kapasitas\t: '))
            x = kota_tujuan.index(tujuan)
            if kapasitas < 150:
                hargatarif.append(kapasitas1[x])
            elif kapasitas >= 150 and kapasitas < 250:
                hargatarif.append(kapasitas2[x])
            else:
                hargatarif.append(kapasitas3[x])
            data += 1

            tanggal_pengiriman = str(input("Masukkan tanggal pengiriman (format: DD/MM/YYYY): "))
            tanggal_pengiriman = datetime.datetime.strptime(tanggal_pengiriman, "%d/%m/%Y")
            
            if tujuan == "Surabaya".upper():
                estimasiTiba = 2
            elif tujuan == "Bandung".upper():
                estimasiTiba = 4
            else:
                estimasiTiba = 5
            tanggal_sampai = tanggal_pengiriman + datetime.timedelta(days=estimasiTiba)
            estimasi_kirim.append(tanggal_pengiriman.strftime("%d/%m/%Y"))
            estimasi_sampai.append(tanggal_sampai.strftime("%d/%m/%Y"))  

    print()
    print(".____.___________________________._____________.")
    print("|    |                           |             |")
    print("| No |          Layanan          |    Harga    |")
    print("|____|___________________________|_____________|")
    print("| 1  | Asuransi                  | Rp. 50.000  |")
    print("| 2  | Kuras Bensin              | Rp. 25.000  |")
    print("| 3  | Asuransi dan Kuras Bensin | Rp. 75.000  |")
    print("|____|___________________________|_____________|")
    print()

    for data in range (jumlah_motor):
        tanya = input(f'\nApakah ingin menambah layanan tambahan untuk motor ke-{data+1}:? (y/n) \t: ')
        i = 0
        if tanya == 'y':
            print("\nLayanan Motor ke-" + str(data+1) + ":")
            layanan = str(input("Masukkan Layanan: "))
            if layanan in layanan_tambahan:
                if layanan == 'kuras bensin':
                    x = i
                    hargalayanantarif.append(harga_layanan[x])

                elif layanan == 'asuransi':
                    x = i
                    hargalayanantarif.append(harga_layanan[x+1])
                else:
                    x = i 
                    hargalayanantarif.append(harga_layanan[x+2])
            else:
                print('Layanan Tidak Tersedia')       
        else: 
            hargalayanantarif.append(0)
            continue
        data += 1

    for data in range (len(hargatarif)):
        totalharga.append(hargatarif[data] + hargalayanantarif[data])
        data += 1 
    

  
    print()
    print("==================================================================================================================================")
    print("||                                                 Rincian Pembelian                                                             ||")
    print("===================================================================================================================================")
    print('| NO | Tarif pengiriman   | Tanggal Pengiriman   | Tanggal Perkiraan Kedatangan   | Harga Layanan   |           Total Harga      ||')
    print("===================================================================================================================================")
    i = 0
    for data in range(jumlah_motor):
        
        print(
            '|', str(data + 1),
            ' |', hargatarif[data],
            '\t\t  |', estimasi_kirim[data],
            '\t\t |', estimasi_sampai[data],
            '\t\t\t  |', hargalayanantarif[data],
            '\t    |', totalharga[data],' \t\t\t  |'
        )
        data += 1
    print()
    print('Total Pembelian: Rp{:,.2f}'.format(sum(totalharga)))

    print()
    print("================================================================")
    print("||                    Rincian Pembayaran                      ||")
    print("================================================================")
    print('||                                                            ||')
    print('||     pilih metode pembayaran; CASH, DEBIT, atau QRIS        || \n')

    inputmetodepembayaran = input('metode pembayaran:').lower()   

    if inputmetodepembayaran in metode_bayar:
        if inputmetodepembayaran != 'cash':
            kembalian = 0
            nominalharga = int(sum(totalharga))
        else:
            print('Total harga \t\t\t: Rp{:,.2f}'.format(sum(totalharga)))
            nominalharga = int(input('Masukkan Nominal Pembayaran \t: '))
            kembalian = int(nominalharga) - int(sum(totalharga))
            if nominalharga < int(sum(totalharga)):
                print('Jumlah Pembayaran kurang dari Total Harga! \n')
            else:
                print()
print('\nRincian Pemesanan')
print('Tanggal Pemesanaan \t:', tanggal_pengiriman)
print('1.Total Pemesanan \t: Rp{:,.2f}'.format(sum(totalharga)))
print('2.Total Pembayaran \t: Rp{:,.2f}'.format(int(nominalharga)))
print('3.Jumlah Kembalian \t: Rp{:,.2f}'.format(kembalian))



    