main() {
  var list = [
    {
      "id": "0",
      "buyerName": "Sahyadri Frams",
      "photo":
          "https://firebasestorage.googleapis.com/v0/b/vesatogofleet.appspot.com/o/androidTaskApp%2FsahyadriFarms.png?alt=media&token=b12dd45f-e47a-4d13-aa46-34cd742ef744",
      "cropInfo": {
        "crop": "Tommato",
        "photo":
            "https://firebasestorage.googleapis.com/v0/b/vesatogofleet.appspot.com/o/androidTaskApp%2Ftomato.png?alt=media&token=5707768d-f26d-45a0-a6f6-b170127069b5"
      },
      "location": {"lat": "234234", "lng": "23423"},
      "price": [
        {"date": "Today", "price": "34", "sku": "KG"},
        {"date": "Tommorow", "price": "23", "sku": "KG"},
        {"date": "27,Wed, Jul", "price": "23", "sku": "KG"}
      ]
    },
    {
      "id": "1",
      "buyerName": "Sahyadri Frams",
      "photo":
          "https://firebasestorage.googleapis.com/v0/b/vesatogofleet.appspot.com/o/androidTaskApp%2FsahyadriFarms.png?alt=media&token=b12dd45f-e47a-4d13-aa46-34cd742ef744",
      "cropInfo": {
        "crop": "Mango",
        "photo":
            "https://firebasestorage.googleapis.com/v0/b/vesatogofleet.appspot.com/o/androidTaskApp%2Fmango.png?alt=media&token=882e815a-fab6-458c-9571-00e854ac184a"
      },
      "location": {"lat": "234234", "lng": "23423"},
      "price": [
        {"date": "Today", "price": "34", "sku": "KG"},
        {"date": "Tommorow", "price": "23", "sku": "KG"},
        {"date": "27,Wed, Jul", "price": "23", "sku": "KG"}
      ]
    },
    {
      "id": "2",
      "buyerName": "Sahyadri Frams",
      "photo":
          "https://firebasestorage.googleapis.com/v0/b/vesatogofleet.appspot.com/o/androidTaskApp%2FsahyadriFarms.png?alt=media&token=b12dd45f-e47a-4d13-aa46-34cd742ef744",
      "cropInfo": {
        "crop": "Onion",
        "photo":
            "https://firebasestorage.googleapis.com/v0/b/vesatogofleet.appspot.com/o/androidTaskApp%2Fonion.png?alt=media&token=95c8cfd1-c2da-4e7d-8d15-5eb813ae6e52"
      },
      "location": {"lat": "234234", "lng": "23423"},
      "price": [
        {"date": "Today", "price": "34", "sku": "KG"},
        {"date": "Tommorow", "price": "23", "sku": "KG"},
        {"date": "27,Wed, Jul", "price": "23", "sku": "KG"}
      ]
    }
  ];

  print(list[0]['buyerName']);
}
