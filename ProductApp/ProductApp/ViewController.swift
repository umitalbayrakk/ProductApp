import UIKit

class ViewController: UIViewController ,UITabBarDelegate,UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var myProductArray = [ProductModel]()
    var chosenProduct : ProductModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        //OBJECT
        
      let TorkuBanana = ProductModel(urunKategori: "Çikolata", urunAdi: "Kakaolu Fındık Kreması", urunFiyat: "129 $", image: UIImage(named: "TorkuBanana")!)
      let PizzaKraker = ProductModel(urunKategori: " Eti Pizza ", urunAdi: "Peynirli Kremalı Kraker", urunFiyat: "11 $", image: UIImage(named: "PizzaKraker")!)
      let MozaikBisküvi = ProductModel(urunKategori: "Bifa Butter Cookies", urunAdi: "Kakaolu Kremalı Mozaik Bisküvi", urunFiyat: "12 $", image: UIImage(named: "MozaikBisküvi")!)
      let EtiBurcak = ProductModel(urunKategori: " Eti Burçak ", urunAdi: "Kakao Kremalı Yulaflı Bisküvi", urunFiyat: "37.50 $", image: UIImage(named: "EtiBurçak")!)
      let Biskirem = ProductModel(urunKategori: " Ülker Biskrem", urunAdi: "Kakao Krema Dolgulu Bisküvi", urunFiyat: "14.50 $", image: UIImage(named: "Biskirem")!)
     
        myProductArray.append(TorkuBanana)
        myProductArray.append(PizzaKraker)
        myProductArray.append(MozaikBisküvi)
        myProductArray.append(EtiBurcak)
        myProductArray.append(Biskirem)
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myProductArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = myProductArray[indexPath.row].urunAdi
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenProduct = myProductArray[indexPath.row]
        self.performSegue(withIdentifier: "toDetails", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetails" {
            let destinationVC = segue.destination as! ProductDetailsVC
            destinationVC.selectedProduct = chosenProduct
        }
    }
}

