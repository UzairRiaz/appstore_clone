//
//  DateExtension.swift
//  Appstore_clone
//
//  Created by Uzair Riaz on 23/02/2022.
//

import Foundation

extension Date {
        func formatDate() -> String {
                let dateFormatter = DateFormatter()
            dateFormatter.setLocalizedDateFormatFromTemplate("EEEE dd MMMM")
            return dateFormatter.string(from: self)
        }
}
