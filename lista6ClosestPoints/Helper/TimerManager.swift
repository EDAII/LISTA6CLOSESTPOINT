import Foundation

class TimerManager: NSObject {
    
    // MARK: - Singleton
    
    static let shared = TimerManager()
    
    // MARK: - Constructor
    
    override init() { }
    
    // MARK: - Trigger action
    
    /**
     Trigger an action after some seconds.
     
     - author: Miguel Pimentel
     - parameters:
     - seconds: Double
     */
    
    public static func triggerAction(seconds:
        Double, after: @escaping () -> Void) {
        triggerAction(seconds: seconds, queue: DispatchQueue.main, after: after)
    }
    
    public static func triggerAction(seconds: Double, queue: DispatchQueue, after: @escaping () -> Void) {
        let time = DispatchTime.now() + Double(Int64(seconds * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
        queue.asyncAfter(deadline: time, execute: after
        )}
}

