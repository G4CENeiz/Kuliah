################## Jasa Tarif Pengiriman Motor Losik ##################

# Membuat daftar tarif pengiriman motor LOSIK CARGO
kotatujuan = ['Suarabaya','Bandung','DKI Jakarta']
tarifkurang250 = [350000,450000,500000]
tarifdiantara250350 = [425000,520000,570000]
tariflebih350 = [550000,610000,650000]
tarifkirim = tarifkurang250,tarifdiantara250350,tariflebih350



# List kosong untuk input item nanti 
listtarifpengiriman = []
listotalharga = []
listkuantitas =[]
listharganow = []

# Login LOSIK CARGO
print('Login LOSIK CARGO')

userpass = {'kelompok' : '18'} # Userpass username dan password

coba = 0
while coba < 3:
    username = str(input('masukkan username anda: '))
    password= str(input('masukkan password anda: '))
    if username in userpass and userpass[username] == password:
        print('Login Berhasil\n')
        break
    elif coba == 2:
        print('terminated\n')
        exit()
    else: 
        print('username/password  salah!\n')
        coba +=1

# InputItem
print("Tarif Pengiriman")
while True:
    NAMApengirim = str(input('Masukkan nama pengirim:'))
    NIK = str(input('Masukkan NIK:'))
    JUMLAHmotor = input('Masukkan jumlah motor:')
    INPUTkapasitas = int(input('Kapasitas motor:'))
    if JUMLAHmotor in listtarifpengiriman:
        i = 0
        while i < len(listtarifpengiriman):
            if listtarifpengiriman[i] == JUMLAHmotor:
                x = i
                if INPUTkapasitas < 250:
                    listotalharga[x] += (tarifkurang250[x]*int(JUMLAHmotor))
                    listkuantitas[x] += int(JUMLAHmotor)
                if INPUTkapasitas >= 250 and INPUTkapasitas > 350:
                    listotalharga[x] += (tarifdiantara250350[x]*int(JUMLAHmotor))
                    listkuantitas[x] += int(JUMLAHmotor)
                if INPUTkapasitas >= 350:
                    listotalharga[x] += (tariflebih350[x]*int(JUMLAHmotor))
                    listkuantitas[x] += int(JUMLAHmotor)
            i += 1
    else:
        listtarifpengiriman.append(JUMLAHmotor)
        listkuantitas.append(int(JUMLAHmotor))
        i = 0
        while i < len(tarifkirim):
            if tarifkirim[i] == JUMLAHmotor:
                x=i
                if INPUTkapasitas < 250:
                    listharganow.append(tarifkurang250[x])
                    listharganow.append(tarifkurang250[x]*int(JUMLAHmotor))
                if INPUTkapasitas >=250 and INPUTkapasitas <350:
                    listharganow.append(tarifdiantara250350[x])
                    listharganow.append(tarifdiantara250350[x]*int(JUMLAHmotor))
                if INPUTkapasitas < 350:
                    listharganow.append(tariflebih350[x])
                    listharganow.append(tariflebih350[x]*int(JUMLAHmotor))
            i += 1
    print(listtarifpengiriman)
    print(listkuantitas)
    print(listotalharga)
    print(listharganow)



# if kapasitasmotor < 250:
#     tarifpengiriman = [350000,450000,500000]
# elif kapasitasmotor >= 150 and kapasitasmotor < 250:
#     tarifpengiriman = [425000,520000,570000]
# else:
#     tarifpengiriman = [550000,610000,650000]

