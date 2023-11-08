# Java to Python by kalkicode.com
import sys
class studiKasus(object) :
    @staticmethod
    def main( args) :
        input =  "Python-inputs"
        destinationCity = ["Surabaya", "Bandung", "DKI Jakarta"]
        tariffType = ["<150", "150 <= x <= 250", ">250"]
        sendingTariff = [[350000, 450000, 500000], [425000, 520000, 570000], [550000, 610000, 650000]]
        estimatedTimeArrived = ["2 Hari", "4 Hari", "5 Hari"]
        ETA = [2, 4, 5]
        credential = [["admin"], ["adminpass"]]
        monthName = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
        dateInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
        daysInWeek = ["Saturday", "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
        loginPass = True
        while (loginPass) :
            not_correct = True
            while (not_correct) :
                print("Enter username: ", end ="")
                inputUsername = input()
                input()
                i = 0
                while (i < len(credential[0])) :
                    if (credential[0][i]==inputUsername) :
                        not_correct = False
                    i += 1
                if (not_correct == True) :
                    print("User does not exist")
            attempt = 0
            attemptMax = 3
            while (attempt < attemptMax) :
                print("Enter Password: ", end ="")
                inputPassword = input()
                input()
                for credPass in credential[1] :
                    if (credPass==inputPassword) :
                        loginPass = False
                        attempt = 3
                if (attempt < 3) :
                    print("Wrong Password")
                attempt += 1
            if (loginPass == True) :
                print("Terminated")
        print("Login Sucess")
        maxChar = 20
        print("|%-" + str(maxChar) + "s|" % (""),end ="",sep ="")
        i = 0
        while (i < len(destinationCity)) :
            padding = int((maxChar - (len(destinationCity[i]) if len(destinationCity[i]) % -2 == 0 else len(destinationCity[i]) + 1)) / 2)
            paddingContent = len(destinationCity[i]) if len(destinationCity[i]) % -2 == 0 else len(destinationCity[i]) + 1
            print("|%-" + str(padding) + "s%-" + str(paddingContent) + "s%-" + str(padding) + "s|" % ("",destinationCity[i],""),end ="",sep ="")
            i += 1
        print()
        i = 0
        while (i < len(sendingTariff)) :
            paddingTariffType = int((maxChar - (len(tariffType[i]) if len(tariffType[i]) % -2 == 0 else len(tariffType[i]) + 1)) / 2)
            paddingTariffTypeContent = len(tariffType[i]) if len(tariffType[i]) % -2 == 0 else len(tariffType[i]) + 1
            print("|%-" + str(paddingTariffType) + "s%-" + str(paddingTariffTypeContent) + "s%-" + str(paddingTariffType) + "s|" % ("",tariffType[i],""),end ="",sep ="")
            j = 0
            while (j < len(sendingTariff[i])) :
                paddingSendingTariff = int((maxChar - (len(String.format("Rp %,d",sendingTariff[i][j])) if len(String.format("Rp %,d",sendingTariff[i][j])) % -2 == 0 else len(String.format("Rp %,d",sendingTariff[i][j])) + 1)) / 2)
                paddingSendingTariffContent = len(String.format("Rp %,d",sendingTariff[i][j])) if len(String.format("Rp %,d",sendingTariff[i][j])) % -2 == 0 else len(String.format("Rp %,d",sendingTariff[i][j])) + 1
                print("|%-" + str(paddingSendingTariff) + "s%-" + str(paddingSendingTariffContent) + "s%-" + str(paddingSendingTariff) + "s|" % ("",String.format("Rp %,d",sendingTariff[i][j]),""),end ="",sep ="")
                j += 1
            print()
            i += 1
        print("|%-8s%-4s%-8s|" % ("","ETA",""),end ="",sep ="")
        i = 0
        while (i < len(estimatedTimeArrived)) :
            padding = int((maxChar - (len(estimatedTimeArrived[i]) if len(estimatedTimeArrived[i]) % -2 == 0 else len(estimatedTimeArrived[i]) + 1)) / 2)
            paddingContent = len(estimatedTimeArrived[i]) if len(estimatedTimeArrived[i]) % -2 == 0 else len(estimatedTimeArrived[i]) + 1
            print("|%-" + str(padding) + "s%-" + str(paddingContent) + "s%-" + str(padding) + "s|" % ("",estimatedTimeArrived[i],""),end ="",sep ="")
            i += 1
        print()
        print("Enter sender name: ", end ="")
        senderName = input()
        input()
        print("Enter sender NIK: ", end ="")
        senderNIK = input()
        input()
        print("Enter cargo load: ", end ="")
        cargoLoad = input()
        vehicleIdentity = [None] * (cargoLoad)
        engineCapacity = [0] * (cargoLoad)
        destiantion = [None] * (cargoLoad)
        cargoSentDate = [[0] * (3) for _ in range(cargoLoad)]
        addons = [None] * (cargoLoad)
        tariff = [0] * (cargoLoad)
        addonsCost = [0] * (cargoLoad)
        sentDayComplete = [None] * (cargoLoad)
        ETADayComplete = [None] * (cargoLoad)
        i = 0
        while (i < cargoLoad) :
            print()
            print("Enter load #%d data\n" % (i + 1),end ="",sep ="")
            print("Enter vehicle identity: ", end ="")
            vehicleIdentity[i] = input()
            input()
            print("Enter engine capacity: ", end ="")
            engineCapacity[i] = input()
            not_choosen = True
            while (not_choosen) :
                print("Choose a destination")
                print("1. Surabaya")
                print("2. Bandung")
                print("3. DKI Jakarta")
                print("Choose: ", end ="")
                menu = input()
                input()
                if menu=="1" :
                   destiantion[i] = destinationCity[int(menu) - 1]
                    not_choosen = False
                elif menu=="2" :
                   destiantion[i] = destinationCity[int(menu) - 1]
                    not_choosen = False
                elif menu=="3" :
                   destiantion[i] = destinationCity[int(menu) - 1]
                    not_choosen = False
            if (engineCapacity[i] < 150) :
                if (destiantion[i]==destinationCity[0]) :
                    tariff[i] = sendingTariff[0][0]
                elif(destiantion[i]==destinationCity[1]) :
                    tariff[i] = sendingTariff[0][1]
                elif(destiantion[i]==destinationCity[2]) :
                    tariff[i] = sendingTariff[0][2]
            elif(engineCapacity[i] < 250) :
                if (destiantion[i]==destinationCity[0]) :
                    tariff[i] = sendingTariff[1][0]
                elif(destiantion[i]==destinationCity[1]) :
                    tariff[i] = sendingTariff[1][1]
                elif(destiantion[i]==destinationCity[2]) :
                    tariff[i] = sendingTariff[1][2]
            elif(engineCapacity[i] >= 250) :
                if (destiantion[i]==destinationCity[0]) :
                    tariff[i] = sendingTariff[2][0]
                elif(destiantion[i]==destinationCity[1]) :
                    tariff[i] = sendingTariff[2][1]
                elif(destiantion[i]==destinationCity[2]) :
                    tariff[i] = sendingTariff[2][2]
            print("Enter sending date: ", end ="")
            cargoSentDate[i][0] = input()
            print("Enter sending month: ", end ="")
            cargoSentDate[i][1] = input()
            print("Enter sending year: ", end ="")
            cargoSentDate[i][2] = input()
            leapYear = False
            sentYear = cargoSentDate[i][2]
            if (sentYear % 4 == 0) :
                if (sentYear % 100 == 0) :
                    if (sentYear % 400 == 0) :
                        leapYear = True
                    leapYear = False
                leapYear = True
            sentYearComp = int(String.format("%c%c",String.format("%d",sentYear)[len(String.format("%d",sentYear)) - 2],String.format("%d",sentYear)[len(String.format("%d",sentYear)) - 1]))
            sentQuarterComp = int(int(sentYearComp) / 4)
            sentDateComp = cargoSentDate[i][0]
            sentMonthComp = cargoSentDate[i][1]
            keyMonthComp = 0
            if sentMonthComp==1 :
               keyMonthComp = 0 if leapYear else 1
            elif sentMonthComp==2 :
               keyMonthComp = 3 if leapYear else 4
            elif sentMonthComp==3 :
               keyMonthComp = 4
            elif sentMonthComp==4 :
               keyMonthComp = 0
            elif sentMonthComp==5 :
               keyMonthComp = 2
            elif sentMonthComp==6 :
               keyMonthComp = 5
            elif sentMonthComp==7 :
               keyMonthComp = 0
            elif sentMonthComp==8 :
               keyMonthComp = 3
            elif sentMonthComp==9 :
               keyMonthComp = 6
            elif sentMonthComp==10 :
               keyMonthComp = 1
            elif sentMonthComp==11 :
               keyMonthComp = 4
            elif sentMonthComp==12 :
               keyMonthComp = 6
            rangeComp = 4 if sentYear < 1800 else 2 if sentYear < 1900 else -1
            dayGuesser = ((sentYearComp + sentQuarterComp + sentDateComp + keyMonthComp + rangeComp) % 7)
            sentDay = daysInWeek[dayGuesser]
            sentDayComplete[i] = String.format("%s , %d %s %d",sentDay,sentDateComp,monthName[sentMonthComp - 1],sentYear)
            dayAdded = 0
            if (destiantion[i]==destinationCity[0]) :
                dayAdded = ETA[0]
            elif(destiantion[i]==destinationCity[1]) :
                dayAdded = ETA[1]
            elif(destiantion[i]==destinationCity[2]) :
                dayAdded = ETA[2]
            ETADate = sentDateComp + dayAdded
            ETAMonth = sentMonthComp
            ETAYear = sentYear
            dateInMonth[1] = 29 if leapYear else 28
            if (ETADate > dateInMonth[ETAMonth - 1]) :
                if ((ETADate - dateInMonth[ETAMonth - 1]) == 0) :
                    ETADate = 1
                else :
                    ETADate -= dateInMonth[ETAMonth - 1]
                ETAMonth += 1
                if (ETAMonth > 12) :
                    ETAYear += 1
                    ETAMonth = 1
            leapYear = False
            if (ETAYear % 4 == 0) :
                if (ETAYear % 100 == 0) :
                    if (ETAYear % 400 == 0) :
                        leapYear = True
                    leapYear = False
                leapYear = True
            ETAYearComp = int(String.format("%c%c",String.format("%d",ETAYear)[len(String.format("%d",ETAYear)) - 2],String.format("%d",ETAYear)[len(String.format("%d",ETAYear)) - 1]))
            ETAQuarterComp = int(int(ETAYearComp) / 4)
            ETADateComp = ETADate
            ETAMonthComp = ETAMonth
            keyMonthComp = 0
            if ETAMonthComp==1 :
               keyMonthComp = 0 if leapYear else 1
            elif ETAMonthComp==2 :
               keyMonthComp = 3 if leapYear else 4
            elif ETAMonthComp==3 :
               keyMonthComp = 4
            elif ETAMonthComp==4 :
               keyMonthComp = 0
            elif ETAMonthComp==5 :
               keyMonthComp = 2
            elif ETAMonthComp==6 :
               keyMonthComp = 5
            elif ETAMonthComp==7 :
               keyMonthComp = 0
            elif ETAMonthComp==8 :
               keyMonthComp = 3
            elif ETAMonthComp==9 :
               keyMonthComp = 6
            elif ETAMonthComp==10 :
               keyMonthComp = 1
            elif ETAMonthComp==11 :
               keyMonthComp = 4
            elif ETAMonthComp==12 :
               keyMonthComp = 6
            ETARangeComp = 4 if ETAYear < 1800 else 2 if ETAYear < 1900 else -1
            ETADayGuesser = ((ETAYearComp + ETAQuarterComp + ETADateComp + keyMonthComp + ETARangeComp) % 7)
            ETADay = daysInWeek[ETADayGuesser]
            ETADayComplete[i] = String.format("%s , %d %s %d",ETADay,ETADateComp,monthName[ETAMonthComp - 1],ETAYear)
            print("Would you like to add addons?")
            print("(y/N) -> ", end ="")
            addonsOption = input()
            input()
            print("|     Addons     ||     Price      |\n", end ="")
            print("|==================================|")
            print("|    Asuransi    ||   Rp 50,000    |\n", end ="")
            print("|   Drain Tank   ||   Rp 25,000    |\n", end ="")
            if (addonsOption=="y" or addonsOption=="Y") :
                print("What kind of addon would you like?")
                print("1. Insurance")
                print("2. Drain Gas Tank")
                print("3. Both")
                print("Choose: ", end ="")
                addonsMenu = input()
                input()
                if (addonsMenu=="1") :
                    addons[i] = "Insurance"
                    addonsCost[i] = 50000
                elif(addonsMenu=="2") :
                    addons[i] = "Drain"
                    addonsCost[i] = 25000
                elif(addonsMenu=="3") :
                    addons[i] = "Insurance & Drain"
                    addonsCost[i] = 75000
            else :
                addons[i] = "No addons"
                addonsCost[i] = 0
            i += 1
        print("================================================================")
        print("||                       Order Details                        ||")
        print("================================================================")
        print("%-16s: %s\n" % ("Sender name",senderName),end ="",sep ="")
        print("%-16s: %s\n" % ("Sender NIK",senderNIK),end ="",sep ="")
        print("%-16s: %d\n" % ("Cargo load",cargoLoad),end ="",sep ="")
        i = 0
        while (i < cargoLoad) :
            print()
            print("Cargo Load #%d\n" % (i + 1),end ="",sep ="")
            print("%-16s: %s\n" % ("Vehicle identity",vehicleIdentity[i]),end ="",sep ="")
            print("%-16s: %d\n" % ("Engine capacity",engineCapacity[i]),end ="",sep ="")
            print("%-16s: %s\n" % ("Destination",destiantion[i]),end ="",sep ="")
            print("%-16s: %s\n" % ("Tariff",String.format("Rp %,d",tariff[i])),end ="",sep ="")
            print("%-16s: %s\n" % ("Sent Day",sentDayComplete[i]),end ="",sep ="")
            print("%-16s: %s\n" % ("Cargo ETA",ETADayComplete[i]),end ="",sep ="")
            print("%-16s: %s\n" % ("Addons",addons[i]),end ="",sep ="")
            print("%-16s: %s\n" % ("Addons cost",String.format("Rp %,d",addonsCost[i])),end ="",sep ="")
            i += 1
        totalCost = 0
        i = 0
        while (i < cargoLoad) :
            totalCost += tariff[i]
            totalCost += addonsCost[i]
            i += 1
        print()
        print("%-16s: %s\n" % ("Total Cost",String.format("Rp %,d",totalCost)),end ="",sep ="")
        totalPaid = totalCost
        change = 0
        print("What kind of payment merthods would you like?")
        print("1. Bank transfer")
        print("2. Cash")
        print("Choose: ", end ="")
        addonsMenu = input()
        input()
        if (addonsMenu=="2") :
            placeHolder = True
            while (placeHolder) :
                print("Enter total paid in cash: ", end ="")
                totalPaid = input()
                if (totalPaid >= totalCost) :
                    placeHolder = False
                else :
                    print("Enter amount bigger or equal to the total cost")
            change = totalPaid - totalCost
        print()
        print("================================================================")
        print("||                    Transaction Details                     ||")
        print("================================================================")
        print("%-11s: %s\n" % ("Sender name",senderName),end ="",sep ="")
        print("%-11s: %s\n" % ("Sender NIK",senderNIK),end ="",sep ="")
        print("%-11s: %d\n" % ("Cargo load",cargoLoad),end ="",sep ="")
        print("%-11s: %s\n" % ("Total Cost",String.format("Rp %,d",totalCost)),end ="",sep ="")
        print("%-11s: %s\n" % ("Total Paid",String.format("Rp %,d",totalPaid)),end ="",sep ="")
        print("%-11s: %s\n" % ("Change",String.format("Rp %,d",change)),end ="",sep ="")
        print()
        print("================================================================")
        print("||                   Transaction Successful                   ||")
        print("================================================================")
        input.close()


if __name__=="__main__":
    studiKasus.main(sys.argv)