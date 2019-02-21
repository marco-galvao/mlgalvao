// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class Candidate__c {
    global List<ActivityHistory> ActivityHistories;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<Attachment> Attachments;
    global String City__c;
    global List<CombinedAttachment> CombinedAttachments;
    global List<ContactRequest> ContactRequests;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global String Country__c;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime CreatedDate;
    global String Current_Employer__c;
    global Boolean Currently_Employed__c;
    global List<DuplicateRecordItem> DuplicateRecordItems;
    global String Education__c;
    global String Email__c;
    global List<EmailMessage> Emails;
    global List<Event> Events;
    global String Fax__c;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<ContentVersion> FirstPublishLocation;
    global String First_Name__c;
    global List<Candidate__History> Histories;
    global Id Id;
    global Boolean IsDeleted;
    global List<Job_Application__c> Job_Applications__r;
    global Date LastActivityDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime LastModifiedDate;
    global Datetime LastReferencedDate;
    global Datetime LastViewedDate;
    global String Last_Name__c;
    global String Mobile__c;
    global String Name;
    global List<Note> Notes;
    global List<NoteAndAttachment> NotesAndAttachments;
    global List<OpenActivity> OpenActivities;
    global SObject Owner;
    global Id OwnerId;
    global List<FeedItem> Parent;
    global String Phone__c;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global List<RecordActionHistory> RecordActionHistories;
    global List<RecordAction> RecordActions;
    global List<CollaborationGroupRecord> RecordAssociatedGroups;
    global List<ContentDistribution> RelatedRecord;
    global List<OutgoingEmail> RelatedTo;
    global List<EventRelationChangeEvent> Relation;
    global String SSN__c;
    global List<Candidate__Share> Shares;
    global String State_Province__c;
    global String Street__c;
    global Datetime SystemModstamp;
    global List<Task> Tasks;
    global List<TopicAssignment> TopicAssignments;
    global Boolean US_Citizen__c;
    global Boolean Visa_Required__c;
    global List<EventChangeEvent> What;
    global Double Years_of_Experience__c;
    global String Zip_Postal_Code__c;

    global Candidate__c () 
    {
    }
}