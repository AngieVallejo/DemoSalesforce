public class ContactAndLeadSearch {
    Public static list<list<SObject>> searchContactsAndLeads(string searchword){
        String searchQuery = 'FING \'' + searchword + '\' IN ALL FIELDS RETURNING Lead(Name, FirstName, LastName), Contact(FirstName, LastName)';
        list<list<SObject>> searchAndLeads = search.query(searchQuery);
        return searchAndLeads;
    }
}