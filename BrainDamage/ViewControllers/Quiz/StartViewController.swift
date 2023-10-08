//
//  StartViewController.swift
//  Brain Damage
//
//  Created by Marcelo de Araújo on 05/10/2023.
//

import UIKit

final class StartViewController: UIViewController {

    @IBOutlet private var buttonStackView: UIStackView!
    
    override func viewWillLayoutSubviews() {
        for subview in buttonStackView.arrangedSubviews {
            subview.layer.cornerRadius = subview.frame.height / 5
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let questionVC = segue.destination as? QuestionViewController else { return }
        
        var questionType: Mode!
        if sender as? [String] == Answer.shared.flags {
            questionType = .flags
        } else if sender as? [String] == Answer.shared.movies {
            questionType = .movies
        }
        
        questionVC.questions = Question.getQuestions(answers: sender as? [String] ?? [""])
        questionVC.questionType = questionType
    }
    
    @IBAction func themeButtonPressed(_ sender: UIButton) {
        if sender.currentTitle == "Country" {
            performSegue(withIdentifier: "showQuestions", sender: Answer.shared.flags)
        } else if sender.currentTitle == "Film" {
            performSegue(withIdentifier: "showQuestions", sender: Answer.shared.movies)
        }
    }
    
}
