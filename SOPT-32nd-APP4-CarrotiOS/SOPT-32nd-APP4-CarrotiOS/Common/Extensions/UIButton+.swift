//
//  UIButton+.swift
//  SOPT-32nd-APP4-CarrotiOS
//
//  Created by 박윤빈 on 2023/05/22.
//

import UIKit.UIButton

extension UIButton {
    
    func setUnderline() {
        guard let title = title(for: .normal) else { return }
        let attributedString = NSMutableAttributedString(string: title)
        attributedString.addAttribute(.underlineStyle,
                                      value: NSUnderlineStyle.single.rawValue,
                                      range: NSRange(location: 0, length: title.count)
        )
        setAttributedTitle(attributedString, for: .normal)
    }
}
