import Foundation
import UIKit

class ProductModel {
    var urunKategori : String
    var urunAdi : String
    var urunFiyat : String
    var image : UIImage
    
    init(urunKategori: String, urunAdi: String, urunFiyat: String, image: UIImage) {
        self.urunKategori = urunKategori
        self.urunAdi = urunAdi
        self.urunFiyat = urunFiyat
        self.image = image
    }
    
}
