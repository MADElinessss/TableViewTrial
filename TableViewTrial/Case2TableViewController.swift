//
//  Case2TableViewController.swift
//  TableViewTrial
//
//  Created by 신정연 on 1/6/24.
//

import UIKit

class Case2TableViewController: UITableViewController {
    
    var section1List = ["공지사항", "실험실", "버전 정보"]
    var section2List = ["개인/보안", "알림", "채팅", "멀티프로필"]
    var section3List = ["고객센터/도움말"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return section1List.count
        } else if section == 1 {
            return section2List.count
        } else {
            return section3List.count
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingsCell") as! Case2TableViewCell
        
        if indexPath.section == 0 {
            cell.textLabel?.text = section1List[indexPath.row]
        } else if indexPath.section == 1 {
            cell.textLabel?.text = section2List[indexPath.row]
        } else if indexPath.section == 2 {
            cell.textLabel?.text = section3List[indexPath.row]
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "전체 설정"
        } else if section == 1 {
            return "개인 설정"
        } else {
            return "기타"
        }
    }
}
