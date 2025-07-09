//
//  SettingsViewController.swift
//  Trivia
//
//  Created by Matanda  Phiri  on 6/30/25.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBAction func didTapGeneralKnowledge(_ sender: UIButton) {
    }
    
    @IBAction func didTapBooks(_ sender: UIButton) {
    }
    
    @IBAction func didTapFilm(_ sender: UIButton) {
    }
    
    @IBAction func didTapMusic(_ sender: UIButton) {
    }
    
    @IBAction func didTapTelevision(_ sender: UIButton) {
    }
    
    @IBAction func didTapVideoGames(_ sender: UIButton) {
    }
    
    @IBAction func didTapBoardGames(_ sender: UIButton) {
    }
    
    @IBAction func didTapScienceAndNature(_ sender: UIButton) {
    }
    
    @IBAction func didTapComputers(_ sender: UIButton) {
    }
    
    @IBAction func didTapMusicalsAndTheatres(_ sender: UIButton) {
    }
    
    @IBAction func didTapMathematics(_ sender: UIButton) {
    }
    
    @IBAction func didTapMythology(_ sender: UIButton) {
    }
    
    @IBAction func didTapSports(_ sender: UIButton) {
    }
    
    @IBAction func didTapGeography(_ sender: UIButton) {
    }
    
    @IBAction func didTapHistory(_ sender: UIButton) {
    }
    
    @IBAction func didTapPolitics(_ sender: UIButton) {
    }
    
    @IBAction func didTapArt(_ sender: UIButton) {
    }
    
    @IBAction func didTapCelebrities(_ sender: UIButton) {
    }
    
    @IBAction func didTapAnimals(_ sender: UIButton) {
    }
    
    @IBAction func didTapVehicles(_ sender: UIButton) {
    }
    
    @IBAction func didTapComics(_ sender: UIButton) {
    }
    
    @IBAction func didTapGadgets(_ sender: UIButton) {
    }
    
    @IBAction func didTapJapaniseAnimeAndManga(_ sender: UIButton) {
    }
    
    @IBAction func didTapCartoonAndAnimation(_ sender: UIButton) {
    }
    
    @IBAction func didTapEasy(_ sender: UIButton) {
    }
    
    @IBAction func didTapMedium(_ sender: UIButton) {
    }
    
    @IBAction func didTapDifficult(_ sender: UIButton) {
    }
    
    @IBOutlet weak var SelectDifficultyView: UIView!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        SelectDifficultyView.layer.cornerRadius = SelectDifficultyView.frame.height / 2
        
        
    }
    

    
}
