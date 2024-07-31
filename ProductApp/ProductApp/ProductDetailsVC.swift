import UIKit

class ProductDetailsVC: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var urunKategoriLabel: UILabel!
    @IBOutlet weak var urunNameLabel: UILabel!
    @IBOutlet weak var urunPriceLabel: UILabel!
    
    var selectedProduct : ProductModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        urunKategoriLabel.text = selectedProduct?.urunKategori
        urunNameLabel.text = selectedProduct?.urunAdi
        urunPriceLabel.text = selectedProduct?.urunFiyat
        imageView.image = selectedProduct?.image
    }
    
}
