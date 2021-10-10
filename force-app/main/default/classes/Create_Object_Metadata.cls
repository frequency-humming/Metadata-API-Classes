public class Create_Object_Metadata {
    
    public void createObject(){
        
		MetadataServiceCustomization.MetadataPort connection = new MetadataServiceCustomization.MetadataPort();
        connection.SessionHeader = new MetadataServiceCustomization.SessionHeader_element();
        connection.SessionHeader.sessionId = UserInfo.getSessionId();
        List<MetadataServiceCustomization.CustomObject> obj = new List<MetadataServiceCustomization.CustomObject>();
        MetadataServiceCustomization.CustomObject customobject = new MetadataServiceCustomization.CustomObject();
        customobject.fullName = 'custom_class__c';
        customobject.label = 'custom class object';
        customobject.pluralLabel = 'custom class objects';
        customObject.nameField = new MetadataServiceCustomization.CustomField();
        customobject.nameField.type_x = 'Text';
        customobject.nameField.label = 'status';
        customobject.deploymentStatus = 'Deployed';
        customObject.sharingModel = 'ReadWrite';
        obj.add(customobject);
        connection.createMetadata(obj);
        
    }
    
    public void creatFields(){
        MetadataServiceCustomization.MetadataPort connection = new MetadataServiceCustomization.MetadataPort();
        connection.SessionHeader = new MetadataServiceCustomization.SessionHeader_element();
        connection.SessionHeader.sessionId = UserInfo.getSessionId();
        List<MetadataServiceCustomization.CustomField> field = new List<MetadataServiceCustomization.CustomField>();
        MetadataServiceCustomization.CustomField customField = new MetadataServiceCustomization.CustomField();
        customField.fullName = 'custom_class__c.custom_create_field__c';
        customField.label = 'Custom created field';
        customField.defaultvalue = 'false';
        customField.type_x = 'Checkbox';
        field.add(customField);
        connection.createMetadata(field);
    }

}