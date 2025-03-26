import Foundation

class BookingManager: ObservableObject {
    static let shared = BookingManager()
    
    @Published var bookings: [BookingEvent] = []
    
    private let bookingsKey = "booking_events"

    private init() {
        loadBookings()
    }
    
    func addBooking(_ booking: BookingEvent) {
        bookings.append(booking)
        saveBookings()
        printBookings()
    }
    
    private func saveBookings() {
        if let encoded = try? JSONEncoder().encode(bookings) {
            UserDefaults.standard.set(encoded, forKey: bookingsKey)
        }
    }
    
    private func loadBookings() {
        if let savedData = UserDefaults.standard.data(forKey: bookingsKey),
           let decoded = try? JSONDecoder().decode([BookingEvent].self, from: savedData) {
            bookings = decoded
        }
    }

    func printBookings() {
        for (index, b) in bookings.enumerated() {
            print("""
            🔖 Booking #\(index + 1)
            Event Title: \(b.eventstitle)
            City: \(b.eventcity)
            Total Price: ₹\(b.totalPrice)
            Name: \(b.name)
            Email: \(b.email)
            Phone: \(b.phone)
            """)
        }
    }
}
