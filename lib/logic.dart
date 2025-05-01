class MobilePhone {
  final String brand;
  final String model;
  final int? storage;
  final double price;
  final String serialNumber;

  MobilePhone({
    required this.brand,
    required this.model,
    this.storage,
    this.price = 0.0,
    required this.serialNumber,
  });

  MobilePhone.withDefaultStorage({
    required this.brand,
    required this.model,
    int? storage,
    this.price = 0.0,
    required this.serialNumber,
  }) : storage = storage ?? 64;

  const MobilePhone.constant({
    required this.brand,
    required this.model,
    this.storage,
    this.price = 0.0,
    required this.serialNumber,
  });

  @override
  String toString() {
    return 'MobilePhone(brand: $brand, model: $model, storage: ${storage ?? "N/A"} GB, price: \$$price, serial: $serialNumber)';
  }

  MobilePhone copyWith({
    String? brand,
    String? model,
    int? storage,
    double? price,
    String? serialNumber,
  }) {
    return MobilePhone(
      brand: brand ?? this.brand,
      model: model ?? this.model,
      storage: storage ?? this.storage,
      price: price ?? this.price,
      serialNumber: serialNumber ?? this.serialNumber,
    );
  }
}
void main() {
  var phone1 = MobilePhone(
    brand: 'Apple',
    model: 'iPhone 14',
    storage: 128,
    price: 1099.99,
    serialNumber: 'A1B2C3',
  );
  var phone2 = MobilePhone.withDefaultStorage(
    brand: 'Samsung',
    model: 'Galaxy S23',
    serialNumber: 'D4E5F6',
  );
  const phone3 = MobilePhone.constant(
    brand: 'Google',
    model: 'Pixel 7',
    storage: 256,
    price: 799.0,
    serialNumber: 'G7H8I9',
  );
  print(phone1);
  print(phone2);
  print(phone3);
  var phone4 = phone1.copyWith(price: 999.99, storage: 256);
  print(phone4);
}