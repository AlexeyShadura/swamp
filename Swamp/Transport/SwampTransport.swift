//
//  Transport.swift
//  swamp
//
//  Created by Yossi Abraham on 18/08/2016.
//  Copyright © 2016 Yossi Abraham. All rights reserved.
//

import Foundation

public protocol SwampTransportDelegate: class {
    func swampTransportDidConnectWithSerializer(serializer: SwampSerializer)
    func swampTransportDidDisconnect(error: NSError?, reason: String?)
    func swampTransportReceivedData(data: NSData)
}

public protocol SwampTransport {
    var delegate: SwampTransportDelegate? { get set }
    func connect()
    func disconnect(reason: String)
    func sendData(data: NSData)
}