// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class Position__c {
    global List<ActivityHistory> ActivityHistories;
    global Boolean Apex__c;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<Attachment> Attachments;
    global Boolean C__c;
    global Date Close_Date__c;
    global List<CombinedAttachment> CombinedAttachments;
    global List<ContactRequest> ContactRequests;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime CreatedDate;
    global Double Days_Open__c;
    global List<DuplicateRecordItem> DuplicateRecordItems;
    global String Educational_requirements__c;
    global List<EmailMessage> Emails;
    global List<Event> Events;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<ContentVersion> FirstPublishLocation;
    global String Functional_Area__c;
    global Date Hire_By__c;
    global Id Hiring_Manager__c;
    global User Hiring_Manager__r;
    global List<Position__History> Histories;
    global Id Id;
    global Boolean IsDeleted;
    global Boolean JavaScript__c;
    global Boolean Java__c;
    global List<Job_Application__c> Job_Applications__r;
    global String Job_Description__c;
    global String Job_Level__c;
    global List<Job_Posting__c> Job_Postings__r;
    global Date LastActivityDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime LastModifiedDate;
    global Datetime LastReferencedDate;
    global Datetime LastViewedDate;
    global String Location__c;
    global Decimal Max_Pay__c;
    global Decimal Min_Pay__c;
    global String Name;
    global List<Note> Notes;
    global List<NoteAndAttachment> NotesAndAttachments;
    global List<OpenActivity> OpenActivities;
    global Date Open_Date__c;
    global SObject Owner;
    global Id OwnerId;
    global List<FeedComment> Parent;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global List<RecordActionHistory> RecordActionHistories;
    global List<RecordAction> RecordActions;
    global List<CollaborationGroupRecord> RecordAssociatedGroups;
    global List<FlowRecordRelation> RelatedRecord;
    global List<OutgoingEmail> RelatedTo;
    global List<EventRelationChangeEvent> Relation;
    global String Responsibilities__c;
    global List<Position__Share> Shares;
    global String Skills_Required__c;
    global String Status__c;
    global Datetime SystemModstamp;
    global List<Task> Tasks;
    global List<TopicAssignment> TopicAssignments;
    global Boolean Travel_Required__c;
    global String Type__c;
    global List<EventChangeEvent> What;

    global Position__c () 
    {
    }
}