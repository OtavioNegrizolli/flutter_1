class ContactModel {
  String id;
  String name;
  String phone;
  String? email;

  ContactModel({
    required this.id,
    required this.name,
    required this.phone,
    this.email,
  });
}
