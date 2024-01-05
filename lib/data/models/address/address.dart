class Address {
  String labelAddress;
  String numberPhone;
  String address;

  Address({
    required this.labelAddress,
    required this.numberPhone,
    required this.address,
  });
}

var addressList = [
  Address(
    labelAddress: "Home",
    numberPhone: "(205) 555-024",
    address: "1786 Wheeler Bridge",
  ),
  Address(
    labelAddress: "Office",
    numberPhone: "(629) 513-019",
    address: "1786 w Dallas St underfield",
  ),
];
