import UIKit

//Memoria total en gigabytes
let memoryMega = 8

//Conversion de gigabytes a megabytes
let gigaToMegaBytes = 1000

//Total de la memoria en gigabytes
let memoryGiga = memoryMega * gigaToMegaBytes

//Memoria llena
let memoryFull = 3 * gigaToMegaBytes

//Memoria que ocupa un video
let minuteVideo = 150

//Memoria sin llenar
let memoryLeft = memoryGiga - memoryFull

//Minutos de video que ocuparian toda la memoria
let result = memoryLeft / minuteVideo
