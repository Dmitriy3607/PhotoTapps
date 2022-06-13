//
//  Images.swift
//  PhotoTapps
//
//  Created by Дмитрий Шульгин on 11.06.2022.
//

import Foundation

struct Images {
 
   
    
    
    
    
    private func getListOfImages(_ folderName: String) -> [String]{
        let fileManager = FileManager.default
        let imagePath = Bundle.main.resourcePath! + "/dogs"
        let imagesNames = try! fileManager.contentsOfDirectory(atPath: imagePath)
        return imagesNames
    }
    
}
