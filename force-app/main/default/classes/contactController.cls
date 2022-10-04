public class contactController {
		@AuraEnabled
    public static List<Contact> getContacts(String recId) {
        List<Contact> contacts =[SELECT Id, Name,AccountId, Phone, 
                           		Email FROM Contact
                                where AccountId =: recId];
        
        return contacts;
    }
}