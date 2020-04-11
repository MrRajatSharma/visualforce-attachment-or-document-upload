# visualforce-attachment-or-document-upload

---
## Setup
Either use this whole project in salesforce CLI using visual studio code or Copy [Upload.cls](https://github.com/MrRajatSharma/visualforce-attachment-or-document-upload/blob/master/force-app/main/default/classes/Upload.cls) and [Upload.page](https://github.com/MrRajatSharma/visualforce-attachment-or-document-upload/blob/master/force-app/main/default/pages/Upload.page) to salesforce apex class and visualforce page respectively.

## Steps to enable Note and Attachment in sObject or custom object in salesforce
1. Login to salesforce using developer account
2. Click on setup on top right depicted in Cog wheel logo
3. Click on *Setup*
4. Click on *Object Manager* (Check image for reference)
5. Click on your custom object or Create one if required or else use Account/Leads
6. Click on *Page Layout* (Check image for reference)
![Object manager > Page layout](https://raw.githubusercontent.com/MrRajatSharma/visualforce-attachment-or-document-upload/master/screenshot%201.png "Object manager > Page layout")

7. Create new page or select existing one. (Check image for reference)
8. Click on Page (Check image for reference)
9. Click on Related list(Check image for reference)

![Note and Attachment setup](https://raw.githubusercontent.com/MrRajatSharma/visualforce-attachment-or-document-upload/master/screenshot%202.png "Note and Attachment setup")

10. Drag and drop *Note and Attachment* into page


Now use visual force page to upload content into salesforce. Don't forget to put recordId in Upload.cls.

Check upload content in Note and Attachment in your page
![Note and Attachment](https://raw.githubusercontent.com/MrRajatSharma/visualforce-attachment-or-document-upload/master/screenshot%203.png "Note and Attachment")
