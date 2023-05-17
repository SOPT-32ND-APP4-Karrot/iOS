//
//  ChatViewController.swift
//  SOPT-32nd-APP4-CarrotiOS
//
//  Created by 정채은 on 2023/05/16.
//

import UIKit

import SnapKit
import Then

final class ChatViewController: UIViewController {
    
    //MARK: Components
    let headerView = HeaderView()
    
    let chatHeader = ChatHeader()
    
    private let headerViewTitle = UILabel().then {
        $0.font = .title
        $0.addLineHeight(lineHeight: 28)
        $0.text = "마포아씨"
    }
    
    private let headerViewCallButton = UIButton().then {
        $0.setImage(Image.chatPhoneIcon, for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setStyle()
        setLayout()
    }
}

extension ChatViewController {
    private func setStyle() {
        view.backgroundColor = .white
    }
    
    private func setLayout() {
        view.addSubviews(chatHeader, headerView)
        headerView.addSubviews(headerViewTitle, headerViewCallButton)
        
        headerView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(44)
            $0.horizontalEdges.equalTo(self.view.safeAreaLayoutGuide)
            $0.height.equalTo(44)
        }
        
        headerViewTitle.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.centerX.equalToSuperview()
        }
        
        headerViewCallButton.snp.makeConstraints{
            $0.centerY.equalToSuperview()
            $0.trailing.equalTo(headerView.moreButton.snp.leading).offset(-11)
        }
        
        chatHeader.snp.makeConstraints{
            $0.top.equalTo(headerView.snp.bottom)
            $0.horizontalEdges.equalTo(self.view.safeAreaLayoutGuide)
            $0.height.equalTo(115)
        }
    }
}
