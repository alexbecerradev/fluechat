import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';

const myContacts = [
  'name',
  'numphone',
  'avatar',
];

class ContactsBloc {
  Stream<List> get getContacts async* {
    List<String> myContacts = [];

    myContacts = (await ContactsService.getContacts(withThumbnails: false))
        .cast<String>();

    yield myContacts;
  }
}


// // ignore: camel_case_types
// class myContacts extends StatefulWidget {
//   const myContacts({Key? key}) : super(key: key);

//   @override
//   State<myContacts> createState() => _myContactsState();
// }

// // ignore: camel_case_types
// class _myContactsState extends State<myContacts> {
//   List<Contact> contacts = [];

//   @override
//   void initState() {
//     super.initState();
//     getAllContacts();
//   }

//   getAllContacts() async {
//     List<Contact> _contacts =
//         (await ContactsService.getContacts(withThumbnails: false)).toList();
//     setState(() {
//       contacts = _contacts;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       shrinkWrap: true,
//       itemCount: contacts.length,
//       itemBuilder: (context, index) {
//         Contact contact = contacts[index];
//         // ignore: unnecessary_null_comparison
//         if (contact != null) {
//           return ListTile(
//             title: Text(contact.displayName!),
//             subtitle: Text(
//               contact.phones!.elementAt(0).value!,
//             ),
//           );
//         } else {
//           return const Text('No contacts to show');
//         }
//       },
//     );
//   }
// }
