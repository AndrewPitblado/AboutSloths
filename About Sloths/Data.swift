//
//  Data.swift
//  About Sloths
//
//  Created by Andrew Pitblado on 2023-06-12.
//

import Foundation
import SwiftUI

struct Info {
    let image: Image
    let name: String
    let story: String
    let slothsTitles: [String]
    let sloths:[Image]
    let hobbies: [String]
    let dietDisc: String
    let foods1: [Image]
    let foods2: [Image]
    let colors: [Color]
    let funfacts: [String]
}


let information = Info(
    image: Image("sloth"),
    
    name: "Andrew Pitblado",
    
    story:"Sloths have been around for quite sometime, there are in total 6 species of sloths that cover two genera. The first type are the two toed sloth, and the other is the three toed sloth. These two different families evolved over time through parellel evolution from terrestial ancestor.\n\nThere were once ground Sloths as big as elephants however this species died off during the Quaternary extinction event that happened around 12 000 years ago \n\nAll in all it is assumed that the earliest form of Sloth dates back 28 million years ago as an ancestor called Xenarthra 🤯",
    
    slothsTitles: ["Three Toed Sloth", "Two Toed Sloth", "Mylodon", "Xenarthran"],
    
    sloths:[Image("threetoedSloth"), Image("twotoedSloth"), Image("Mylodon"), Image("Giant-anteater")],
    
    hobbies:["Sleeping", "Climbing", "Hanging around"],
    
    dietDisc: "Sloths diet actually is fairly light and simplistic, this is due to the fact that they do not have teeth, so they can not eat very hard foods. They also do not have to eat very often because of their low metabloic rate, meaning it takes them quite a while to digest food (even its digestive system is slow 😂)\n\nThere is actually a difference in diets between the Three-Toed Sloth and the Two-Toed Sloth, here are what they are!",
    
    foods1:[Image("EuphPlant"), Image("Lime"),Image("Montane")],
    foods2: [Image("Pods"), Image("Flower")],
    
    colors:[Color.blue, Color.red, Color.pink],
    
    funfacts:["PICKY POOP💩\n\n Sloths deficate around once per week, and will only do their business on the forest floor", "SWIMMERS 🏊!\n\n Sloths will sometimes swim long distances to search for potential mating partners", "SLOW LIFE 😴\n\n Sloths slow lifestyle actually is the main reason they have been around for 65.5 million years!", "LIVING FUR 🦥!\n\n Sloths fur is home to Algae which helps it blend into surroundings! ", "HANGING AOUNRD 👴🏻\n\n the oldest every sloth was 'Miss C' who was in captivity and lived 43 long years!", "BUILT DIFFERENT 💪🏻\n\n Sloths can fall up to 100 feet and brush it right off! On average they fall out of trees once a week 😮‍💨"  ]
    
    )


