import UIKit
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true
// 1

enum FlightStatus: String {
    case enRoute = "En Route"
    case scheduled = "Scheduled"
    case canceled = "Canceled"
    case delayed = "Delayed"
    case landed = "Landed"
}

enum ArrivalOrDeparture {
    case arrival
    case departure
}

enum AirportName: String {
    case clt = "Charlotte"
    case gyd = "Baku"
    case puj = "Punta Cana"
    case nrt = "Tokyo"
    case mvy = "Martha's Vineyard"
    case slc = "Salt Lake City"
    case cur = "Curacao"
}

struct Airport {
    var name: AirportName
}

struct Flight {
    var name: String
    var airport: Airport
    var arrivalOrDeparture: ArrivalOrDeparture
    var terminal: String?
    var time: Date?
    var status: FlightStatus
}

class DepartureBoard {
    var listOfDepartures: [Flight]
    
    init(listOfDepartures: [Flight]) {
        self.listOfDepartures = listOfDepartures
    }
}
//2
let charlotte = Airport(name: .clt)
let baku = Airport(name: .gyd)
let putacana = Airport(name: .puj)


var flight1 = Flight(name: "AY4165", airport: charlotte, arrivalOrDeparture: .departure, terminal: "8", time: Date(), status: .landed)
var flight2 = Flight(name: "AA2809", airport: charlotte, arrivalOrDeparture: .departure, terminal: "8", time: Date(), status: .landed)
var flight3 = Flight(name: "7l778", airport: baku, arrivalOrDeparture: .departure, terminal: nil, time: nil, status: .canceled)

var myDepartureBoard = DepartureBoard(listOfDepartures: [flight1, flight2])

myDepartureBoard.listOfDepartures.append(flight3)

//3

func printDepartures(board: DepartureBoard) {
    
    
    for departure in board.listOfDepartures {
        var unwrappedTerminal = ""
        var unwrappedTime = ""
        
        if let terminal = departure.terminal {
            unwrappedTerminal = terminal
        } else {
            unwrappedTerminal = "N/A"
        }
        
        if let time = departure.time {
            unwrappedTime = "\(time)"
        } else {
            unwrappedTime = "N/A"
        }
        
        print("\(departure.name) \(departure.airport.name.rawValue) \(unwrappedTerminal) \(unwrappedTime) \(departure.status.rawValue)")
    }
}

printDepartures(board: myDepartureBoard)





//: ## 5. Add an instance method to your `DepatureBoard` class (above) that can send an alert message to all passengers about their upcoming flight. Loop through the flights and use a `switch` on the flight status variable.
//: a. If the flight is canceled print out: "We're sorry your flight to \(city) was canceled, here is a $500 voucher"
//:
//: b. If the flight is scheduled print out: "Your flight to \(city) is scheduled to depart at \(time) from terminal: \(terminal)"
//:
//: c. If their flight is boarding print out: "Your flight is boarding, please head to terminal: \(terminal) immediately. The doors are closing soon."
//:
//: d. If the `departureTime` or `terminal` are optional, use "TBD" instead of a blank String
//:
//: e. If you have any other cases to handle please print out appropriate messages
//:
//: d. Call the `alertPassengers()` function on your `DepartureBoard` object below
//:
//: f. Stretch: Display a custom message if the `terminal` is `nil`, tell the traveler to see the nearest information desk for more details.




//: ## 6. Create a free-standing function to calculate your total airfair for checked bags and destination
//: Use the method signature, and return the airfare as a `Double`
//:
//:     func calculateAirfare(checkedBags: Int, distance: Int, travelers: Int) -> Double {
//:     }
//:
//: a. Each bag costs $25
//:
//: b. Each mile costs $0.10
//:
//: c. Multiply the ticket cost by the number of travelers
//:
//: d. Call the function with a variety of inputs (2 bags, 2000 miles, 3 travelers = $750)
//:
//: e. Make sure to cast the numbers to the appropriate types so you calculate the correct airfare
//:
//: f. Stretch: Use a [`NumberFormatter`](https://developer.apple.com/documentation/foundation/numberformatter) with the `currencyStyle` to format the amount in US dollars.



