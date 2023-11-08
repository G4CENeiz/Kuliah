
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
    nama = str(input('\nmasukkan nama\t\t:'))
    nik = int(input('\nmasukkan NIK\t\t:'))
    jumlah_motor = int(input('\nmasukkan jumlah motor\t:'))
    motor = []
    data = 0
    for data in range(jumlah_motor):
        print(f'\nmotor ke-{data+1}')
        nomor_kendaraan = str(input('masukkan nomor kendaraan:'))
        tujuan = str(input('masukkan kota tujuan\t:')).upper()
        i = 0
        while tujuan not in kota_tujuan:
            print('coba lagi')
            tujuan = str(input('masukkan kota tujuan\t:')).upper()
            if tujuan in kota_tujuan:
                break
        if tujuan in kota_tujuan:
            kapasitas = int(input('masukkan kapasitas\t:'))
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
        tanya = input(f'\nApakah ingin menambah layanan tambahan untuk motor ke-{data+1}:? (y/n) \t:')
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
    print('| NO | Tarif pengiriman   | Tanggal Pengiriman   | Tanggal Perkiraan Kedatangan   | Harga Layanan   |           Total Harga       |')
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
    print()
    print('\n pilih metode pembayaran; CASH, DEBIT, atau QRIS \n')

    inputmetodepembayaran = input('metode pembayaran:').lower()

    if inputmetodepembayaran in metode_bayar:
        if inputmetodepembayaran != 'cash':
            kembalian = 0
            nominalharga = int(sum(totalharga))
        else:
            print('Total harga \t\t\t: Rp{:,.2f}'.format(sum(totalharga)))
            nominalharga = int(input('Masukkan Nominal Pembayaran \t:'))
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



            




    



    
## 
        

## Pemanggilan Tarif
  
# def HargaTarif(tujuan, cc):
#   if tujuan == "Surabaya" and cc < 150:
#     if cc < 150:
#       return 350000
#     elif 150 <= cc <= 250:
#       return 425000
#     else: return 550000
#   elif tujuan == "Bandung":
#     if cc < 150:
#       return 450000
#     elif 150 <= cc <= 250:
#       return 520000
#     return 610000
#   else: 
#     if cc < 150:
#       return 500000
#     elif 150 <= cc <= 250:
#       return 570000
#     else: return 650000
    
# ## Login LOSIK CARGO
# print('Login LOSIK Cargo')

# user_pass = {'kelompok' : '18'}

# coba = 0
# salah = False
# while coba < 3:
#     username = str(input('masukkan username anda: '))
#     password = str(input('masukkan password anda: '))
#     if username in user_pass and user_pass[username] == password: 
#       masuk = True
#       print('\nSelamat Datang di LOSIK CARGO\n')
#       break
#     elif coba == 2: 
#       print('\nterminated\n')
#       exit()
#     else:  
#       print('\nsalah masbro coba lagi!\n')
#       coba = coba + 1

# ##Tampilkan Tabel Tarif Pengiriman Motor LOSIK Cargo
# def TampilkanTabel():
#   print('                      Tabel Tarif Pengiriman Motor LOSIK Cargo                             ')
#   print('._____.____________.________________________________________________._____________________.')
#   print('|    |             |              Tarif Pengiriman Motor            |                     |')
#   print('| No | Kota Tujuan |________________________________________________| Estimasi Pengiriman |')
#   print('|____|_____________|_<_150_cc__|_>=_150cc_dan_<=_250_cc_|_>250_cc___|_____________________|')
#   print('|_1__|_Surabaya____|_Rp350.000_|_Rp425.000______________|_Rp550.000_|_2_Hari______________|')
#   print('|_2__|_Bandung_____|_Rp450.000_|_Rp520.000______________|_Rp610.000_|_4_Hari______________|')
#   print('|_3__|_DKI_Jakarta_|_Rp500.000_|_Rp570.000______________|_Rp650.000_|_5_Hari______________|')

# ##Tampilkan Tabel Layanan Tambahan
# def TampilkanLayanan():
#   print('._____.____________________________.__________.')
#   print('|     |                            |          |')
#   print('|  No |        Layanan             |   Harga  |')
#   print('|_____|____________________________|__________|')
#   print('|__1__|__Asuransi__________________|_Rp50.000_|')
#   print('|__2__|__Kuras_Bensin______________|_Rp25.000_|')
#   print('|__3__|__Asuransi_dan_Kuras Bensin_|_Rp75.000_|')
  

# ## Tangal pengiriman
# def TanggalPengiriman(tanggal):
#   try:
#     datetime.date.fromisoformat(tanggal)
#     return True
#   except ValueError:
#     return False
  
# ## Estimasi sampai
# def EstimasiPengiriman(tujuan):
#   if tujuan == "Surabaya":
#     return 2
#   elif tujuan == "Bandung":
#     return 4
#   else: return 5

# ##Input

# if masuk:
#    TampilkanTabel()
#    nama = input("Masukkan Nama: ")
#    NIK = input("Masukkan NIK: ")
#    jumlahmotor = int(input("Masukkan Jumlah Motor: "))
#    motor = []
#    for i in range(jumlahmotor):
#         print("Motor ke-"+str(i+1)+" :")
#         datamotor = {}
#         while True:
#             datamotor["tujuan"] = input("Masukkan Kota Tujuan: ")
#             datamotor["tujuan"] = datamotor["tujuan"].title() if len(datamotor["tujuan"].split(" ")) == 1  else (datamotor["tujuan"].split(" ")[0].upper() + " " + datamotor["tujuan"].split(" ")[1].title())
#             if datamotor["tujuan"] == "Surabaya" or datamotor["tujuan"] == "Bandung" or datamotor["tujuan"] == "DKI Jakarta":
#                 break
#             else:
#                 print("[!] Kota Tujuan Tidak Ditemukan")
        
#         datamotor["stnk"] = input("Masukkan Nomor STNK: ")
#         datamotor["kapasitas"] = int(input("Masukkan Kapasitas Motor: "))
#         datamotor['harga'] = HargaTarif(datamotor['tujuan'], datamotor['kapasitas'])

#         while True:
#             datamotor["pengiriman"] = input("Masukkan Tanggal Pengiriman (YYYY-MM-DD): ")

#             if TanggalPengiriman(datamotor["pengiriman"]):
#                 year, month, day = map(int, datamotor["pengiriman"].split('-'))
#                 datamotor['estimasiTiba'] = datetime.date(year, month, day) + datetime.timedelta(days = EstimasiPengiriman(datamotor['tujuan']))
#                 break
#             else:
#                 print("[!] Tanggal Pengiriman Tidak Valid!")
                
#         datamotor['layanan'] = {}
#         motor.append(datamotor)
#         print()
        
#    while True: 
#         layanantambahan = input("Apakah ingin menambah layanan? [y/n] : ")[0]
        
#         if layanantambahan == 'y' or layanantambahan == 'n':
#             break
    
#    if layanantambahan == 'y':
#         TampilkanLayanan()
#         for i in range(jumlahmotor):
#             print("Layanan Motor ke-" + str(i+1) + ":")
#             while True:
#                 layanan = int(input("Masukkan Layanan: "))

#                 if 1 <= layanan <= 3:
#                     if layanan == 1:
#                         motor[i]['layanan'] = {"nama" : "Asuransi", "harga" : 50000}
#                     elif layanan == 2:
#                         motor[i]['layanan'] = {"nama" : "Kuras Bensin", "harga" : 25000}
#                     else:
#                         motor[i]['layanan'] = {"nama" : "Asuransi dan Kuras Bensin", "harga" : 75000}
#                     break
#                 else:
#                     print("[!] Layanan tidak tersedia!")
#         print()

#  ## Tampilkan rincian pemesanan

#    print("Rincian Pemesanan:")
#    print("Nama Pengirim: " + nama)
#    print("Jumlah Motor: " + str(jumlahmotor))
#    total = 0
#    totalLayanan = 0
#    totalPengiriman = 0
#    print()
#    for i in range(jumlahmotor):
#         print("Motor ke-" + str(i+1) + ":")
#         print("Tujuan Kirim: " + motor[i]['tujuan'])
#         print("STNK: "+ motor[i]['stnk'])
#         print("Kapasitas: " + str(motor[i]['kapasitas']) + "cc")
#         print("Tanggal Kirim: " + motor[i]['pengiriman'])
#         print("Estimasi Tiba: " + str(motor[i]['estimasiTiba']))
#         print("Layanan: " + ("-" if motor[i]['layanan'] == {} else motor[i]['layanan']['nama']))
#         print("Harga Layanan: " + ("0" if motor[i]['layanan'] == {} else str(motor[i]['layanan']['harga'])))
#         print("Harga Pengiriman: " + str(motor[i]['harga']))
#         print("Total Harga: " + str(motor[i]['harga'] + (0 if motor[i]['layanan'] == {} else motor[i]['layanan']['harga'])))
        
#         totalLayanan += 0 if motor[i]['layanan'] == {} else motor[i]['layanan']['harga']
#         totalPengiriman += motor[i]['harga']
#         total += motor[i]['harga'] + (0 if motor[i]['layanan'] == {} else motor[i]['layanan']['harga'])

#         print()                

#  ###Tampilkan opsi pembayaran
#    print("Grand Total Harga: " + str(total))
#    print()
#    print("Pilih Opsi Pembayaran")
#    print("1. Bank BRI")
#    print("2. Bank BCA")
#    print("3. Bank BNI")
#    print("4. Bank Mandiri")
#    print("5. Cash")

#    while True:
#         opsi = int(input("Pilih Opsi [1/2/3/4/5]: "))
    
#         if 1 <= opsi <= 5:
#             break
  
#    print()
#    kembali = 0
#    if opsi == 5:
#         while True:
#             bayar = int(input("Masukkan Nominal Cash: "))

#             if bayar < total:
#                 print("[!] Nominal pembayaran kurang dari total harga")
#             else:
#              break

#         if bayar > total:
#             kembali = bayar - total
#         else:
#             kembali = 0
#    else:
#         bayar = total

#    print()
#    print("Total Tarif Pengiriman: " + str(totalPengiriman))
#    print("Total Tarif Layanan: " + str(totalLayanan))
#    print("Total Pembayaran: " + str(total))

#    if kembali > 0:
#         print("Total Kembali: " + str(kembali))

#    print("\nTransaksi Telah Berhasil!")
    
# else:
#     print("Terminated")