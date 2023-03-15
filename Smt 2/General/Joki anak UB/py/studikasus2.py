
## Berikut Modul library date time, yang memiliki fungsi untuk menentukan estimasi waktu.

import datetime


## Pemanggilan Tarif
  
def HargaTarif(tujuan, cc):
  if tujuan == "Surabaya" and cc < 150:
    if cc < 150:
      return 350000
    elif 150 <= cc <= 250:
      return 425000
    else: return 550000
  elif tujuan == "Bandung":
    if cc < 150:
      return 450000
    elif 150 <= cc <= 250:
      return 520000
    return 610000
  else: 
    if cc < 150:
      return 500000
    elif 150 <= cc <= 250:
      return 570000
    else: return 650000
    
## Login LOSIK CARGO
print('Login LOSIK Cargo')

user_pass = {'kelompok' : '18'}

coba = 0
salah = False
while coba < 3:
    username = str(input('masukkan username anda: '))
    password = str(input('masukkan password anda: '))
    if username in user_pass and user_pass[username] == password: 
      masuk = True
      print('\nSelamat Datang di LOSIK CARGO\n')
      break
    elif coba == 2: 
      print('\nterminated\n')
      exit()
    else:  
      print('\nsalah masbro coba lagi!\n')
      coba = coba + 1

##Tampilkan Tabel Tarif Pengiriman Motor LOSIK Cargo
def TampilkanTabel():
  print('                      Tabel Tarif Pengiriman Motor LOSIK Cargo                             ')
  print('._____.____________.________________________________________________._____________________.')
  print('|    |             |              Tarif Pengiriman Motor            |                     |')
  print('| No | Kota Tujuan |________________________________________________| Estimasi Pengiriman |')
  print('|____|_____________|_<_150_cc__|_>=_150cc_dan_<=_250_cc_|_>250_cc___|_____________________|')
  print('|_1__|_Surabaya____|_Rp350.000_|_Rp425.000______________|_Rp550.000_|_2_Hari______________|')
  print('|_2__|_Bandung_____|_Rp450.000_|_Rp520.000______________|_Rp610.000_|_4_Hari______________|')
  print('|_3__|_DKI_Jakarta_|_Rp500.000_|_Rp570.000______________|_Rp650.000_|_5_Hari______________|')

##Tampilkan Tabel Layanan Tambahan
def TampilkanLayanan():
  print('._____.____________________________.__________.')
  print('|     |                            |          |')
  print('|  No |        Layanan             |   Harga  |')
  print('|_____|____________________________|__________|')
  print('|__1__|__Asuransi__________________|_Rp50.000_|')
  print('|__2__|__Kuras_Bensin______________|_Rp25.000_|')
  print('|__3__|__Asuransi_dan_Kuras Bensin_|_Rp75.000_|')
  

## Tangal pengiriman
def TanggalPengiriman(tanggal):
  try:
    datetime.date.fromisoformat(tanggal)
    return True
  except ValueError:
    return False
  
## Estimasi sampai
def EstimasiPengiriman(tujuan):
  if tujuan == "Surabaya":
    return 2
  elif tujuan == "Bandung":
    return 4
  else: return 5

##Input

if masuk:
   TampilkanTabel()
   nama = input("Masukkan Nama: ")
   NIK = input("Masukkan NIK: ")
   jumlahmotor = int(input("Masukkan Jumlah Motor: "))
   motor = []
   for i in range(jumlahmotor):
        print("Motor ke-"+str(i+1)+" :")
        datamotor = {}
        while True:
            datamotor["tujuan"] = input("Masukkan Kota Tujuan: ")
            datamotor["tujuan"] = datamotor["tujuan"].title() if len(datamotor["tujuan"].split(" ")) == 1  else (datamotor["tujuan"].split(" ")[0].upper() + " " + datamotor["tujuan"].split(" ")[1].title())
            if datamotor["tujuan"] == "Surabaya" or datamotor["tujuan"] == "Bandung" or datamotor["tujuan"] == "DKI Jakarta":
                break
            else:
                print("[!] Kota Tujuan Tidak Ditemukan")
        
        datamotor["stnk"] = input("Masukkan Nomor STNK: ")
        datamotor["kapasitas"] = int(input("Masukkan Kapasitas Motor: "))
        datamotor['harga'] = HargaTarif(datamotor['tujuan'], datamotor['kapasitas'])

        while True:
            datamotor["pengiriman"] = input("Masukkan Tanggal Pengiriman (YYYY-MM-DD): ")

            if TanggalPengiriman(datamotor["pengiriman"]):
                year, month, day = map(int, datamotor["pengiriman"].split('-'))
                datamotor['estimasiTiba'] = datetime.date(year, month, day) + datetime.timedelta(days = EstimasiPengiriman(datamotor['tujuan']))
                break
            else:
                print("[!] Tanggal Pengiriman Tidak Valid!")
                
        datamotor['layanan'] = {}
        motor.append(datamotor)
        print()
        
   while True: 
        layanantambahan = input("Apakah ingin menambah layanan? [y/n] : ")[0]
        
        if layanantambahan == 'y' or layanantambahan == 'n':
            break
    
   if layanantambahan == 'y':
        TampilkanLayanan()
        for i in range(jumlahmotor):
            print("Layanan Motor ke-" + str(i+1) + ":")
            while True:
                layanan = int(input("Masukkan Layanan: "))

                if 1 <= layanan <= 3:
                    if layanan == 1:
                        motor[i]['layanan'] = {"nama" : "Asuransi", "harga" : 50000}
                    elif layanan == 2:
                        motor[i]['layanan'] = {"nama" : "Kuras Bensin", "harga" : 25000}
                    else:
                        motor[i]['layanan'] = {"nama" : "Asuransi dan Kuras Bensin", "harga" : 75000}
                    break
                else:
                    print("[!] Layanan tidak tersedia!")
        print()

 ## Tampilkan rincian pemesanan

   print("Rincian Pemesanan:")
   print("Nama Pengirim: " + nama)
   print("Jumlah Motor: " + str(jumlahmotor))
   total = 0
   totalLayanan = 0
   totalPengiriman = 0
   print()
   for i in range(jumlahmotor):
        print("Motor ke-" + str(i+1) + ":")
        print("Tujuan Kirim: " + motor[i]['tujuan'])
        print("STNK: "+ motor[i]['stnk'])
        print("Kapasitas: " + str(motor[i]['kapasitas']) + "cc")
        print("Tanggal Kirim: " + motor[i]['pengiriman'])
        print("Estimasi Tiba: " + str(motor[i]['estimasiTiba']))
        print("Layanan: " + ("-" if motor[i]['layanan'] == {} else motor[i]['layanan']['nama']))
        print("Harga Layanan: " + ("0" if motor[i]['layanan'] == {} else str(motor[i]['layanan']['harga'])))
        print("Harga Pengiriman: " + str(motor[i]['harga']))
        print("Total Harga: " + str(motor[i]['harga'] + (0 if motor[i]['layanan'] == {} else motor[i]['layanan']['harga'])))
        
        totalLayanan += 0 if motor[i]['layanan'] == {} else motor[i]['layanan']['harga']
        totalPengiriman += motor[i]['harga']
        total += motor[i]['harga'] + (0 if motor[i]['layanan'] == {} else motor[i]['layanan']['harga'])

        print()                

 ###Tampilkan opsi pembayaran
   print("Grand Total Harga: " + str(total))
   print()
   print("Pilih Opsi Pembayaran")
   print("1. Bank BRI")
   print("2. Bank BCA")
   print("3. Bank BNI")
   print("4. Bank Mandiri")
   print("5. Cash")

   while True:
        opsi = int(input("Pilih Opsi [1/2/3/4/5]: "))
    
        if 1 <= opsi <= 5:
            break
  
   print()
   kembali = 0
   if opsi == 5:
        while True:
            bayar = int(input("Masukkan Nominal Cash: "))

            if bayar < total:
                print("[!] Nominal pembayaran kurang dari total harga")
            else:
             break

        if bayar > total:
            kembali = bayar - total
        else:
            kembali = 0
   else:
        bayar = total

   print()
   print("Total Tarif Pengiriman: " + str(totalPengiriman))
   print("Total Tarif Layanan: " + str(totalLayanan))
   print("Total Pembayaran: " + str(total))

   if kembali > 0:
        print("Total Kembali: " + str(kembali))

   print("\nTransaksi Telah Berhasil!")
    
else:
    print("Terminated")