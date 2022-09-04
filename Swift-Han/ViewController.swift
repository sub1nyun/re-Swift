//
//  ViewController.swift
//  Swift-Han
//
//  Created by 윤수빈 on 2022/08/30.
//

import UIKit
      // 자식컨            부모컨          //필수 메소드가 없는 프로토콜 UITabDe~
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var table: UITableView!
    //테이블뷰 아울렛 설정 -> 뷰를 쓰기 위해선 아울렛을 잡아야함
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        table.dataSource = self //현재 클레스에서 처리
        table.delegate = self
    }
                                             //섹션에서 로우의 갯수 섹션 -> 한 영역 ( 섹션의 갯수는 기본적으로 하나로 들어감) 한 줄을 -> 행, 로우, 셀이라함
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            //로우의 수를 몇 줄로 할 것인가 -> 배열의.count가 일반적
            return 5
    }
    //섹션의 수를 늘려보기
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //UITableViewCell() //클래스 뒤 ()시 객체의 인스턴스가 생성이 됨
//        let cell = UITableViewCell.init(style: .value2, reuseIdentifier: "cell") //init 생략이 가능함
//        //스타일은 크게 4가지 스타일이 있음
//        //textLabel은 디폴트 스타일에서 제공하고 있으며 옵셔널타입이라 옵셔널채이닝을 사용
//        cell.textLabel?.text = "\(indexPath.row)"
//        cell.detailTextLabel?.text = indexPath.description
//        cell.imageView?.image = UIImage(named: "") //이미지 파일명(확장자 까지) 넣기
        
                                                                            //  다운캐스팅
        //기본적으로 제공하는 네가지 셀 타입이 아닌 커스터마이징 해서 사용 할 경우 -> deque~ 셀 메소드를 사용함
        //셀 아이디를 지정해주고 부모형으로 나오기 때문에 자식인스턴스를 사용하기 위해서 다운캐스팅을 해줌
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
        cell.myLabel
        cell.myLabel.text = indexPath.description
        return cell
        
    }
    //셀이 선택 됐을때
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}



