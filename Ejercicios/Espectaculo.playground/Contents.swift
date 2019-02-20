import UIKit

let numberOfTicket = 150
let ticketPrice = 10
let roomRentalFee = 1000
let posterCost = 40
let totalTicketValue = numberOfTicket * ticketPrice
let totalExpenses = roomRentalFee * posterCost
let totalIncomeOfShow = totalTicketValue - totalExpenses
print("Gasto total: \(totalIncomeOfShow)")
