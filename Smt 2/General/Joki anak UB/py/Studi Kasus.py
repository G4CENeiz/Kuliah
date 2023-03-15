
# region variable declaration
#* Declaring Variable for table
destinationCity         = ['Surabaya', 'Bandung', 'DKI Jakarta']
tariffType              = ['<150', '150 <= x <= 250', '>250']
tariffSending           = [[350_000, 450_000, 500_000], [425_000, 520_000, 570_000], [550_000, 610_000, 650_000]]
estimatedTimeArrived    = ["2 Hari", "4 Hari", "5 Hari"]

#* Declaring Variable for others
ETA                     = [2, 4, 5]
credentials             = [['admin'], ['adminpass']]
monthName               = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
dateInMonth             = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
daysInWeek              = ["Saturday", "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
# endregion

# region login attempt
#* while not success try to login
#* while the username does not exist try to enter a correct registered username in credentials
#* after inputing username while still have attempt try to enter the correct password in credentials
#* if attempted 3 times and fail, terminated and will attempt to re-login
#* if all condtion is passed print success
success = False
while not success:
    correct = False
    while not correct :
        inputUsername = input("Enter username: ")
        for credUser in credentials[0]:
            if credUser == inputUsername:
                correct = True
        if correct == False:
            print("User does not exist")
    attempt = 0
    attemptMax = 3
    while attempt < attemptMax:
        inputPassword = input("Enter Password: ")
        for credPass in credentials[1]:
            if credPass == inputPassword:
                success = True
                attempt = 3
        if attempt < 3 :
            print("Wrong password")
        attempt += 1
    if success is not True:
        print("Terminated")
print("Login success")
# endregion

# region table
#* Declaring table formatting
#* print top bar and the sequence of table format and then bar
table = [
    ["", destinationCity[0], destinationCity[1], destinationCity[2]],
    [tariffType[0], "{:,}".format(tariffSending[0][0]), "{:,}".format(tariffSending[0][1]), "{:,}".format(tariffSending[0][2])],
    [tariffType[1], "{:,}".format(tariffSending[1][0]), "{:,}".format(tariffSending[1][1]), "{:,}".format(tariffSending[1][2])],
    [tariffType[2], "{:,}".format(tariffSending[2][0]), "{:,}".format(tariffSending[2][1]), "{:,}".format(tariffSending[2][2])],
    ["ETA", estimatedTimeArrived[0], estimatedTimeArrived[1], estimatedTimeArrived[2]]
]
print("========================================================================================")
for row in range(len(table)):
    rowLine = ""
    for col in range(len(table[row])):
        rowLine += "|{:^20}|".format(table[row][col])
    print(rowLine)
print("========================================================================================")
# endregion

# region customer data
#* Enter name, NIK, and cargo that want to be sent
#* Declare list variable for the cargo load
#* appending every input to the appropriate varibale list
#* repeat the input for every cargo load
#* do some function to determine a few things
print()
senderName = str(input("Enter sender name   : "))
senderNIK  = str(input("Enter sender NIK    : "))
cargoLoad  = int(input("Enter cargo load    : "))

#* varible list declaration for cargo load data
vehicleIdentity = []
engineCapacity  = []
destination     = []
cargoSentDate   = []
cargoSentMonth  = []
cargoSentYear   = []
addons          = []
tariff          = []
addonsCost      = []
sentDayComplete = []
ETADayComplete  = []

#* iterating to all cargo load data to be inputed and processed
for i in range(cargoLoad):

    #* getting vehicle identity and its engine capacity 
    print()
    print("Enter load #{} data".format(i+1))
    vehicleIdentity.append(input   ("Enter vehicle identity  : "))
    engineCapacity.append(int(input("Enter engine capacity   : ")))

    #* choosing destination for this specific load
    choosen = False
    while not choosen:
        print("Choose a destination")
        print("1. Surabaya"         )
        print("2. Bandung"          )
        print("3. DKI Jakarta"      )
        destinationMenu = str(input("Choose: "))
        if destinationMenu == "1" or destinationMenu == "2" or destinationMenu == "3":
            destination.append(destinationCity[int(destinationMenu)-1])
            choosen = True
        if not choosen:
            print("Enter a valid destination")

    #* processing tariff from engine capacity and picked destination 
    if    engineCapacity[i] <  150:
        if   destination[i] == destinationCity[0]:
            tariff.append(tariffSending[0][0])
        elif destination[i] == destinationCity[1]:
            tariff.append(tariffSending[0][1])
        elif destination[i] == destinationCity[2]:
            tariff.append(tariffSending[0][2])
    elif  engineCapacity[i] <  250:
        if   destination[i] == destinationCity[0]:
            tariff.append(tariffSending[1][0])
        elif destination[i] == destinationCity[1]:
            tariff.append(tariffSending[1][1])
        elif destination[i] == destinationCity[2]:
            tariff.append(tariffSending[1][2])
    elif  engineCapacity[i] >= 250:
        if   destination[i] == destinationCity[0]:
            tariff.append(tariffSending[2][0])
        elif destination[i] == destinationCity[1]:
            tariff.append(tariffSending[2][1])
        elif destination[i] == destinationCity[2]:
            tariff.append(tariffSending[2][2])
    
    #* getting the sending date
    cargoSentDate.append (int(input("Enter sending date : ")))
    cargoSentMonth.append(int(input("Enter sending month: ")))
    cargoSentYear.append (int(input("Enter sending year : ")))

    #* checking wheter or not its leap year
    leapYear = False
    sentYear = cargoSentYear[i]
    if sentYear % 4 == 0:
        if sentYear % 100 == 0:
            if sentYear % 400:
                leapYear = True
            leapYear = False
        leapYear = True
    
    #* processing component for estimating the days in week for the sending date
    #* appending the estimated days in week and its date to the sent day complete data
    sentYearComp = abs(sentYear) % 100
    sentQuarterComp = int(abs(sentYearComp) / 4)
    sentDateComp = cargoSentDate[i]
    sentMonthComp = cargoSentMonth[i]

    keyMonthComp = 0
    if   sentMonthComp == 1 : keyMonthComp = 0 if leapYear else 1
    elif sentMonthComp == 2 : keyMonthComp = 3 if leapYear else 4
    elif sentMonthComp == 3 : keyMonthComp = 4
    elif sentMonthComp == 4 : keyMonthComp = 0
    elif sentMonthComp == 5 : keyMonthComp = 2
    elif sentMonthComp == 6 : keyMonthComp = 5
    elif sentMonthComp == 7 : keyMonthComp = 0
    elif sentMonthComp == 8 : keyMonthComp = 3
    elif sentMonthComp == 9 : keyMonthComp = 6
    elif sentMonthComp == 10: keyMonthComp = 1
    elif sentMonthComp == 11: keyMonthComp = 4
    elif sentMonthComp == 12: keyMonthComp = 6
    
    rangeComp = 4 if sentYear < 1800 else 2 if sentYear < 1900 else -1
    dayGuesser = (sentYearComp + sentQuarterComp + sentDateComp + keyMonthComp + rangeComp) % 7
    sentDay = daysInWeek[dayGuesser]
    sentDayComplete.append("{}, {} {} {}".format(sentDay, sentDateComp, monthName[sentMonthComp-1], sentYear))

    #* calculating estimated time arrived for this specific cargo load
    dayAdded = 0
    if destination[i] == destinationCity[0]:
        dayAdded = ETA[0]
    elif destination[i] == destinationCity[1]:
        dayAdded = ETA[1]
    elif destination[i] == destinationCity[2]:
        dayAdded = ETA[2]
    
    ETADate = sentDateComp + dayAdded
    ETAMonth = sentMonthComp
    ETAYear = sentYear
    dateInMonth[1] = 29 if leapYear else 28

    if ETADate > dateInMonth[ETAMonth-1]:
        if (ETADate-dateInMonth[ETAMonth-1]) == 0: ETADate = 1
        else: ETADate -= dateInMonth[ETAMonth-1]
        ETAMonth += 1
        if ETAMonth > 12:
            ETAYear += 1
            ETAMonth = 1
    
    #* checking wheter or not its leap year
    leapYear = False
    if ETAYear % 4 == 0:
        if ETAYear % 100 == 0:
            if ETAYear % 400:
                leapYear = True
            leapYear = False
        leapYear = True

    #* processing component for estimating the days in week for the ETA date
    #* appending the estimated days in week and its date to the ETA day complete data
    ETAYearComp = abs(ETAYear) % 100
    ETAQuarterComp = int(abs(ETAYearComp) / 4)
    ETADateComp = ETADate
    ETAMonthComp = ETAMonth

    keyMonthComp = 0
    if   ETAMonthComp == 1 : keyMonthComp = 0 if leapYear else 1
    elif ETAMonthComp == 2 : keyMonthComp = 3 if leapYear else 4
    elif ETAMonthComp == 3 : keyMonthComp = 4
    elif ETAMonthComp == 4 : keyMonthComp = 0
    elif ETAMonthComp == 5 : keyMonthComp = 2
    elif ETAMonthComp == 6 : keyMonthComp = 5
    elif ETAMonthComp == 7 : keyMonthComp = 0
    elif ETAMonthComp == 8 : keyMonthComp = 3
    elif ETAMonthComp == 9 : keyMonthComp = 6
    elif ETAMonthComp == 10: keyMonthComp = 1
    elif ETAMonthComp == 11: keyMonthComp = 4
    elif ETAMonthComp == 12: keyMonthComp = 6

    ETARangeComp = 4 if ETAYear < 1800 else 2 if ETAYear < 1900 else -1
    ETADayGuesser = (ETAYearComp + ETAQuarterComp + ETADateComp + keyMonthComp + ETARangeComp) % 7
    ETADay = daysInWeek[ETADayGuesser]
    ETADayComplete.append("{}, {} {} {}".format(ETADay, ETADateComp, monthName[ETAMonthComp-1], ETAYear))

    #* Displaying the cost per addons
    #* offering the addons
    #* if the user want the addons, the user is given the option for the addons
    #* appending the appropriate data based on the choosen option for the addons
    print("====================================")
    print("|     Addons     ||     Price      |")
    print("|==================================|")
    print("|    Asuransi    ||   Rp 50,000    |")
    print("|   Drain Tank   ||   Rp 25,000    |")
    print("====================================")

    print("Would you like to add addons?")
    addonsOption = str(input("(y/N) -> "))

    choosen = False
    while not choosen:
        if addonsOption == "y" or addonsOption == "Y":
            print("What Kind of addon would you like?")
            print("1. Insurance")
            print("2. Drain Gas Tank")
            print("3. Both")
            addonsMenu = str(input("Choose: "))
            if addonsMenu == "1":
                addons.append("Insurance")
                addonsCost.append(50_000)
                choosen = True
            elif addonsMenu == "2":
                addons.append("Drain")
                addonsCost.append(25_000)
                choosen = True
            elif addonsMenu == "3":
                addons.append("Insurance & Drain")
                addonsCost.append(75_000)
                choosen = True
        else :
            addons.append("No addons")
            addonsCost.append(0)
            choosen = True
# endregion

# region order details
#* printing general details
print()
print("================================================================")
print("||                       Order Details                        ||")
print("================================================================")
print("{:<16s}: {}".format("Sender name",   senderName  ))
print("{:<16s}: {}".format("Sender NIK",    senderNIK   ))
print("{:<16s}: {}".format("Cargo Load",    cargoLoad   ))

#* printing cargo details
for i in range(cargoLoad):
    print()
    print("Cargo load #{}".format   (i+1                                        ))
    print("{:<16s}: {}".format      ("Vehicle identity",    vehicleIdentity[i]  ))
    print("{:<16s}: {}".format      ("Engine capacity",     engineCapacity[i]   ))
    print("{:<16s}: {}".format      ("Destination",         destination[i]      ))
    print("{:<16s}: Rp {:,}".format ("Tariff",              tariff[i]           ))
    print("{:<16s}: {}".format      ("Sent Day",            sentDayComplete[i]  ))
    print("{:<16s}: {}".format      ("Cargo ETA",           ETADayComplete[i]   ))
    print("{:<16s}: {}".format      ("Addons",              addons[i]           ))
    print("{:<16s}: Rp {:,}".format ("Addons cost",         addonsCost[i]       ))

#* calculating total cost
#* printing total cost
totalCost = 0
for i in range(cargoLoad):
    totalCost += tariff[i]
    totalCost += addonsCost[i]
print()
print("{:<16s}: Rp {:,}".format("Total cost", totalCost))
# endregion

# region transaction details
#* declaring default value for bank transaction for total paid and change
totalPaid = totalCost
change = 0

#* offering the payment methods
print()
print("What kind of payment merthods would you like?")
print("1. Bank transfer")
print("2. Cash")
paymentMenu = str(input("Choose: "))

#* if the customer choose to pay with cash, while its not valid, try to enter a valid value
#* only when the value is valid the loop will break
#* valid value is value bigger than or equal to the total cost
if paymentMenu == "2":
    valid = False
    while not valid:
        totalPaid = int(input("Enter total paid in cash: "))
        valid = True if totalPaid >= totalCost else print("Enter amount bigger or equal to the total cost")
    change = totalPaid - totalCost

#* printing transaction details
print()
print("================================================================")
print("||                    Transaction Details                     ||")
print("================================================================")
print("{:<11s}: {}".format      ("Sender name", senderName  ))
print("{:<11s}: {}".format      ("Sender NIK",  senderNIK   ))
print("{:<11s}: {}".format      ("Cargo Load",  cargoLoad   ))
print("{:<11s}: Rp {:,}".format ("Total Cost",  totalCost   ))
print("{:<11s}: Rp {:,}".format ("Total Paid",  totalPaid   ))
print("{:<11s}: Rp {:,}".format ("Change",      change      ))
print()
print("================================================================")
print("||                   Transaction Successful                   ||")
print("================================================================")
# endregion
