import UIKit

//Valores que debes editar
let ticketsSold = 1200
let ticketPrice = 2
let printingCosts = 20
let advertising = 50

// Total takings (Recaudación total)
let totalTakings = ticketPrice * ticketsSold

// Jackpot (Premio)
let jackpot = totalTakings / 2

// Expenses (Gastos)
let totalExpenses = printingCosts + advertising

// Profit (Ganancia)
let profit = totalTakings - jackpot - totalExpenses

// Distribution (Distribución)
let programmersCut = profit / 10 // This is the answer you want to get over 100! 👉
let friendsCut = profit - programmersCut
