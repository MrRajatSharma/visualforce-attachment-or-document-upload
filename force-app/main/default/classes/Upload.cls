public with sharing class Upload {
    public Attachment attachment {
        get {
            if (attachment == null)
            attachment = new Attachment();
            return attachment;
        }
        set;
    }

    // using attachment
    public PageReference upload(Attachment attachment, String name, String recordId) {
        attachment.OwnerId = UserInfo.getUserId();
        // the record the file is attached to; Could be custom sObject or Existing objects like Accounts, Leads, etc
        // to show Attachments in page enable Attachments
        attachment.ParentId = recordId; 
        attachment.IsPrivate = true;
        attachment.name = name;
        try {
          insert attachment;
          System.debug('Document inserted');
        } catch (DMLException e) {
          ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR, 'Error uploading attachment'));
          return null;
        } finally {
          attachment = new Attachment(); 
        }
        
        ApexPages.addMessage(new ApexPages.message(ApexPages.severity.INFO, 'Attachment uploaded successfully'));
        return null;
    }

    public PageReference save() {
        // insert into salesforce
        String recordId = '';   // add recordId/Id of custom or already defined objects

        // upload attachment having name MyAttachment and attaching to recordId
        upload(attachment,'MyAttachment', recordId);

        // can view this logs in Developer Console
        // just search Visualforce page in Home search bar and click on visualforce page and then click on developer console and check logs window for logs
        System.debug('Document uploaded');

        // return page reference to another apex page
        Pagereference pr =  new Pagereference('/apex/ThankYou');
        return pr;

        // return null if do not want to redirect to thank you page
        // return null
    }

    public void cancel() {
        // return null;
    }
}