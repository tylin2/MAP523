//
//  ViewController.swift
//  Assignment3
//
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
    
    @IBOutlet weak var tfCity: UITextField!
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var lbCity: UILabel!
    
    var lat: Double = 0
    var lng: Double = 0
    
    var geocoder = CLGeocoder()
    var pin = MKPointAnnotation()
    
    @IBAction func onSearchClicked(_ sender: Any) {
        guard let city = tfCity.text else {return}
        
        print("Finding: \(city)")
        
        self.getCity(city: "\(city)")
        
    }
    
    @IBAction func onClearClicked(_ sender: Any) {
        self.lbCity.text = "(lat, lng) of the city"
        self.tfCity.text = ""
        self.mapView.removeAnnotation(self.pin)
    }
    
    private func getCity(city: String){
        self.geocoder.geocodeAddressString(city) {
            (resultsList, error) in
            print("waiting for response")
            
            if let err = error {
                print("Error while trying to geocode the city")
                print(err)
                self.lbCity.text = "\(err)"
                return
            }
            
            if (resultsList != nil) {
                if (resultsList!.count == 0) {
                    print("No results found.")
                    self.lbCity.text = "No results found."
                } else {
                    let placemark:CLPlacemark = resultsList!.first!
                    print("Location found: ")
                    print(placemark)
                    self.lat = Double(placemark.location!.coordinate.latitude)
                    self.lng = Double(placemark.location!.coordinate.longitude)
                    self.lbCity.text = "(\(self.lat), \(self.lng))"
                    
                    let zoomLevel = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
                    
                    let centerOfMap = CLLocationCoordinate2D(latitude: self.lat, longitude: self.lng)
                    
                    let visibleRegion = MKCoordinateRegion(center: centerOfMap, span: zoomLevel)
                    
                    self.mapView.setRegion(visibleRegion, animated: true)
                    
                    self.pin.coordinate = centerOfMap
                    self.pin.title = "\(city)"
                    
                    self.mapView.addAnnotation(self.pin)
                    
                }
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
    }


}

