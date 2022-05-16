//
//  ViewController.swift
//  CSTV
//
//  Created by Arthur Ruan on 27/03/22.
//

import UIKit

class MatchesViewController: UIViewController, ViewModelBindable {
    
    var viewModel: MatchesViewModel?
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Partidas"
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(
            UINib(nibName: MatchTableViewCell.identifier, bundle: nil),
            forCellReuseIdentifier: MatchTableViewCell.identifier
        )
        tableView.backgroundColor = UIColor(red: 22/255, green: 22/255, blue: 33/255, alpha: 1)
    }
    
    func bindViewModel() {}
    
    @objc private func didTapButton() {
        self.viewModel?.goToMatchDetails()
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.viewModel?.goToMatchDetails()
    }
}

