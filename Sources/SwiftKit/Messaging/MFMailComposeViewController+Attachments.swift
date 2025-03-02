//
//  MFMailComposeViewController+Attachments.swift
//  SwiftKit
//
//  Created by Daniel Saidi on 2021-03-26.
//  Copyright © 2021 Daniel Saidi. All rights reserved.
//

#if os(iOS)
import MessageUI

public extension MFMailComposeViewController {
    
    /**
     Add a data attachment using a `mimeType` and `fileName`.
     */
    func addAttachmentData(data: Data, mimeType: MimeType, fileName: String) {
        addAttachmentData(data, mimeType: mimeType.identifier, fileName: fileName)
    }
}
#endif
