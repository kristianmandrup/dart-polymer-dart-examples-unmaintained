library edit_contact_view;

import "package:polymer/polymer.dart";
import "dart:html";
import "dart:async";
import "model.dart";

@CustomTag("edit-contact-view")
class EditContactView extends PolymerElement {
  @published Contact contact;
  Contact _originalContact;
  
  EditContactView.created() : super.created();
  
  @override
  void enteredView() {
    super.enteredView();
    _originalContact = new Contact.copy(contact);
  }
  
  static const EventStreamProvider<CustomEvent> _EDIT_READY_EVENT = const EventStreamProvider("edit-ready");
  Stream<CustomEvent> get onEditReady => _EDIT_READY_EVENT.forTarget(this);
  static void _dispatchEditReadyEvent(Element element, bool canceled) {
    element.dispatchEvent(new CustomEvent("edit-ready", detail: canceled));
  }
  
  void save() {
    _dispatchEditReadyEvent(this, false);
  }
  
  void cancel() {
    contact.firstName = _originalContact.firstName;
    contact.lastName = _originalContact.lastName;
    contact.emailAddress = _originalContact.emailAddress;
    
    _dispatchEditReadyEvent(this, true);
  }
}