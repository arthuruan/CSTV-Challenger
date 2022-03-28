//
//  ViewController.swift
//  CSTV
//
//  Created by Arthur Ruan on 27/03/22.
//

import UIKit

class MatchesViewController: UIViewController, ViewModelBindable {
    
    var viewModel: MatchesViewModel?

    private let tableView: UITableView = {
       let table = UITableView()
        table.register(MatchTableViewCell.self, forCellReuseIdentifier: MatchTableViewCell.identifier)
        
        return table
    }()
    
    private let sampleButton: UIButton = {
        let button = UIButton()
        button.setTitle("Match Details", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 22/255, green: 22/255, blue: 33/255, alpha: 1)
        
        view.addSubview(sampleButton)
        sampleButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    private func populateMatches () {
        
    }
    
    func bindViewModel() {  }
    
    @objc private func didTapButton() {
        self.viewModel?.goToMatchDetails()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews();
                
        sampleButton.frame = CGRect(
            x: 30,
            y: view.frame.size.height - 150,
            width: view.frame.size.width - 60,
            height: 55
        );
    }
}

extension MatchesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.matches.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let match = viewModel?.matches[indexPath.row] else { return UITableViewCell() }
        if let cell = tableView.dequeueReusableCell(
            withIdentifier: MatchTableViewCell.identifier,
            for: indexPath
        ) as? MatchTableViewCell {
            cell.configure(match: match)
            return cell
        }
        return UITableViewCell()
    }
}

