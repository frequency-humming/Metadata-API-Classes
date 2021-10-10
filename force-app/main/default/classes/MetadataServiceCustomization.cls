public class MetadataServiceCustomization {
	
	public static String SOAP_M_URI = 'http://soap.sforce.com/2006/04/metadata';

    public class SaveResult {
    	public MetadataServiceCustomization.Error[] errors;
        public String fullName;
        public Boolean success;
        private String[] errors_type_info = new String[]{'errors',SOAP_M_URI,null,'0','-1','false'};
        private String[] fullName_type_info = new String[]{'fullName',SOAP_M_URI,null,'1','1','false'};
        private String[] success_type_info = new String[]{'success',SOAP_M_URI,null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{SOAP_M_URI,'true','false'};
        private String[] field_order_type_info = new String[]{'errors','fullName','success'};
    }
    public class Error {
        public MetadataServiceCustomization.ExtendedErrorDetails[] extendedErrorDetails;
        public String[] fields;
        public String message;
        public String statusCode;
        private String[] extendedErrorDetails_type_info = new String[]{'extendedErrorDetails',SOAP_M_URI,null,'0','-1','false'};
        private String[] fields_type_info = new String[]{'fields',SOAP_M_URI,null,'0','-1','false'};
        private String[] message_type_info = new String[]{'message',SOAP_M_URI,null,'1','1','false'};
        private String[] statusCode_type_info = new String[]{'statusCode',SOAP_M_URI,null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{SOAP_M_URI,'true','false'};
        private String[] field_order_type_info = new String[]{'extendedErrorDetails','fields','message','statusCode'};
    }
    public class ExtendedErrorDetails {
        public String extendedErrorCode;
        private String[] extendedErrorCode_type_info = new String[]{'extendedErrorCode',SOAP_M_URI,null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{SOAP_M_URI,'true','false'};
        private String[] field_order_type_info = new String[]{'extendedErrorCode'};
    }
    public class DebuggingHeader_element {
        public MetadataServiceCustomization.LogInfo[] categories;
        public String debugLevel;
        private String[] categories_type_info = new String[]{'categories',SOAP_M_URI,null,'0','-1','false'};
        private String[] debugLevel_type_info = new String[]{'debugLevel',SOAP_M_URI,null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{SOAP_M_URI,'true','false'};
        private String[] field_order_type_info = new String[]{'categories','debugLevel'};
    }
    public class LogInfo {
        public String category;
        public String level;
        private String[] category_type_info = new String[]{'category',SOAP_M_URI,null,'1','1','false'};
        private String[] level_type_info = new String[]{'level',SOAP_M_URI,null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{SOAP_M_URI,'true','false'};
        private String[] field_order_type_info = new String[]{'category','level'};
    }
    public class MetadataPort {
        public String endpoint_x = URL.getOrgDomainUrl().toExternalForm() + '/services/Soap/m/42.0';
        public Map<String,String> inputHttpHeaders_x;
        public Map<String,String> outputHttpHeaders_x;
        public String clientCertName_x;
        public String clientCert_x;
        public String clientCertPasswd_x;
        public Integer timeout_x;
        public MetadataServiceCustomization.SessionHeader_element SessionHeader;
        public MetadataServiceCustomization.DebuggingInfo_element DebuggingInfo;
        public MetadataServiceCustomization.DebuggingHeader_element DebuggingHeader;
        public MetadataServiceCustomization.CallOptions_element CallOptions;
        public MetadataServiceCustomization.AllOrNoneHeader_element AllOrNoneHeader;
        private String SessionHeader_hns = 'SessionHeader=http://soap.sforce.com/2006/04/metadata';
        private String DebuggingInfo_hns = 'DebuggingInfo=http://soap.sforce.com/2006/04/metadata';
        private String DebuggingHeader_hns = 'DebuggingHeader=http://soap.sforce.com/2006/04/metadata';
        private String CallOptions_hns = 'CallOptions=http://soap.sforce.com/2006/04/metadata';
        private String AllOrNoneHeader_hns = 'AllOrNoneHeader=http://soap.sforce.com/2006/04/metadata';
        private String[] ns_map_type_info = new String[]{SOAP_M_URI, 'MetadataServiceCustomization'};

        public MetadataServiceCustomization.SaveResult[] createMetadata(MetadataServiceCustomization.Metadata[] metadata) {
            MetadataServiceCustomization.createMetadata_element request_x = new MetadataServiceCustomization.createMetadata_element();
            request_x.metadata = metadata;
            MetadataServiceCustomization.createMetadataResponse_element response_x;
            Map<String, MetadataServiceCustomization.createMetadataResponse_element> response_map_x = new Map<String, MetadataServiceCustomization.createMetadataResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              SOAP_M_URI,
              'createMetadata',
              SOAP_M_URI,
              'createMetadataResponse',
              'MetadataServiceCustomization.createMetadataResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.result;
        }
    }
    public virtual class Metadata {
        public String fullName;
    }
    public class SessionHeader_element {
    	public String sessionId;
        private String[] sessionId_type_info = new String[]{'sessionId',SOAP_M_URI,null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{SOAP_M_URI,'true','false'};
        private String[] field_order_type_info = new String[]{'sessionId'};
    }
    public class DebuggingInfo_element {
        public String debugLog;
        private String[] debugLog_type_info = new String[]{'debugLog',SOAP_M_URI,null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{SOAP_M_URI,'true','false'};
        private String[] field_order_type_info = new String[]{'debugLog'};
    }
    public class CallOptions_element {
        public String client;
        private String[] client_type_info = new String[]{'client',SOAP_M_URI,null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{SOAP_M_URI,'true','false'};
        private String[] field_order_type_info = new String[]{'client'};
    }
    public class AllOrNoneHeader_element {
        public Boolean allOrNone;
        private String[] allOrNone_type_info = new String[]{'allOrNone',SOAP_M_URI,null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{SOAP_M_URI,'true','false'};
        private String[] field_order_type_info = new String[]{'allOrNone'};
    }
    public class createMetadata_element {
            public MetadataServiceCustomization.Metadata[] metadata;
            private String[] metadata_type_info = new String[]{'metadata',SOAP_M_URI,null,'0','-1','false'};
            private String[] apex_schema_type_info = new String[]{SOAP_M_URI,'true','false'};
            private String[] field_order_type_info = new String[]{'metadata'};
    }
    public class createMetadataResponse_element {
        public MetadataServiceCustomization.SaveResult[] result;
        private String[] result_type_info = new String[]{'result',SOAP_M_URI,null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{SOAP_M_URI,'true','false'};
        private String[] field_order_type_info = new String[]{'result'};
    }
    public class ActionOverride {
        public String actionName;
        public String comment;
        public String content;
        public String formFactor;
        public Boolean skipRecordTypeSelect;
        public String type_x;
        private String[] actionName_type_info = new String[]{'actionName',SOAP_M_URI,null,'0','1','false'};
        private String[] comment_type_info = new String[]{'comment',SOAP_M_URI,null,'0','1','false'};
        private String[] content_type_info = new String[]{'content',SOAP_M_URI,null,'0','1','false'};
        private String[] formFactor_type_info = new String[]{'formFactor',SOAP_M_URI,null,'0','1','false'};
        private String[] skipRecordTypeSelect_type_info = new String[]{'skipRecordTypeSelect',SOAP_M_URI,null,'0','1','false'};
        private String[] type_x_type_info = new String[]{'type',SOAP_M_URI,null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{SOAP_M_URI,'true','false'};
        private String[] field_order_type_info = new String[]{'actionName','comment','content','formFactor','skipRecordTypeSelect','type_x'};
    }
    public class ArticleTypeChannelDisplay {
        public MetadataService.ArticleTypeTemplate[] articleTypeTemplates;
        private String[] articleTypeTemplates_type_info = new String[]{'articleTypeTemplates',SOAP_M_URI,null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{SOAP_M_URI,'true','false'};
        private String[] field_order_type_info = new String[]{'articleTypeTemplates'};
    }
    public class BusinessProcess extends Metadata {
        public String type = 'BusinessProcess';
        public String fullName;
        private String[] fullName_type_info = new String[]{'fullName',SOAP_M_URI,null,'0','1','false'};
        public String description;
        public Boolean isActive;
        public MetadataService.PicklistValue[] values;
        private String[] description_type_info = new String[]{'description',SOAP_M_URI,null,'0','1','false'};
        private String[] isActive_type_info = new String[]{'isActive',SOAP_M_URI,null,'0','1','false'};
        private String[] values_type_info = new String[]{'values',SOAP_M_URI,null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{SOAP_M_URI,'true','false'};
        private String[] type_att_info = new String[]{'xsi:type'};
        private String[] field_order_type_info = new String[]{'fullName', 'description','isActive','values'};
    }
    public class CompactLayout extends Metadata {
        public String type = 'CompactLayout';
        public String fullName;
        private String[] fullName_type_info = new String[]{'fullName',SOAP_M_URI,null,'0','1','false'};
        public String[] fields;
        public String label;
        private String[] fields_type_info = new String[]{'fields',SOAP_M_URI,null,'0','-1','false'};
        private String[] label_type_info = new String[]{'label',SOAP_M_URI,null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{SOAP_M_URI,'true','false'};
        private String[] type_att_info = new String[]{'xsi:type'};
        private String[] field_order_type_info = new String[]{'fullName', 'fields','label'};
    }
    public class FieldSet extends Metadata {
        public String type = 'FieldSet';
        public String fullName;
        private String[] fullName_type_info = new String[]{'fullName',SOAP_M_URI,null,'0','1','false'};
        public MetadataService.FieldSetItem[] availableFields;
        public String description;
        public MetadataService.FieldSetItem[] displayedFields;
        public String label;
        private String[] availableFields_type_info = new String[]{'availableFields',SOAP_M_URI,null,'0','-1','false'};
        private String[] description_type_info = new String[]{'description',SOAP_M_URI,null,'1','1','false'};
        private String[] displayedFields_type_info = new String[]{'displayedFields',SOAP_M_URI,null,'0','-1','false'};
        private String[] label_type_info = new String[]{'label',SOAP_M_URI,null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{SOAP_M_URI,'true','false'};
        private String[] type_att_info = new String[]{'xsi:type'};
        private String[] field_order_type_info = new String[]{'fullName', 'availableFields','description','displayedFields','label'};
    }
    public class HistoryRetentionPolicy {
        public Integer archiveAfterMonths;
        public Integer archiveRetentionYears;
        public String description;
        public Integer gracePeriodDays;
        private String[] archiveAfterMonths_type_info = new String[]{'archiveAfterMonths',SOAP_M_URI,null,'1','1','false'};
        private String[] archiveRetentionYears_type_info = new String[]{'archiveRetentionYears',SOAP_M_URI,null,'1','1','false'};
        private String[] description_type_info = new String[]{'description',SOAP_M_URI,null,'0','1','false'};
        private String[] gracePeriodDays_type_info = new String[]{'gracePeriodDays',SOAP_M_URI,null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{SOAP_M_URI,'true','false'};
        private String[] field_order_type_info = new String[]{'archiveAfterMonths','archiveRetentionYears','description','gracePeriodDays'};
    }
    public class Index {
        public MetadataService.IndexField[] fields;
        public String label;
        private String[] fields_type_info = new String[]{'fields',SOAP_M_URI,null,'0','-1','false'};
        private String[] label_type_info = new String[]{'label',SOAP_M_URI,null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{SOAP_M_URI,'true','false'};
        private String[] field_order_type_info = new String[]{'fields','label'};
    }
    public class ListView extends Metadata {
        public String type = 'ListView';
        public String fullName;
        private String[] fullName_type_info = new String[]{'fullName',SOAP_M_URI,null,'0','1','false'};
        public String booleanFilter;
        public String[] columns;
        public String division;
        public String filterScope;
        public MetadataService.ListViewFilter[] filters;
        public String label;
        public String language;
        public String queue;
        public MetadataService.SharedTo sharedTo;
        private String[] booleanFilter_type_info = new String[]{'booleanFilter',SOAP_M_URI,null,'0','1','false'};
        private String[] columns_type_info = new String[]{'columns',SOAP_M_URI,null,'0','-1','false'};
        private String[] division_type_info = new String[]{'division',SOAP_M_URI,null,'0','1','false'};
        private String[] filterScope_type_info = new String[]{'filterScope',SOAP_M_URI,null,'1','1','false'};
        private String[] filters_type_info = new String[]{'filters',SOAP_M_URI,null,'0','-1','false'};
        private String[] label_type_info = new String[]{'label',SOAP_M_URI,null,'1','1','false'};
        private String[] language_type_info = new String[]{'language',SOAP_M_URI,null,'0','1','false'};
        private String[] queue_type_info = new String[]{'queue',SOAP_M_URI,null,'0','1','false'};
        private String[] sharedTo_type_info = new String[]{'sharedTo',SOAP_M_URI,null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{SOAP_M_URI,'true','false'};
        private String[] type_att_info = new String[]{'xsi:type'};
        private String[] field_order_type_info = new String[]{'fullName', 'booleanFilter','columns','division','filterScope','filters','label','language','queue','sharedTo'};
    }
    public class RecordType extends Metadata {
        public String type = 'RecordType';
        public String fullName;
        private String[] fullName_type_info = new String[]{'fullName',SOAP_M_URI,null,'0','1','false'};
        public Boolean active;
        public String businessProcess;
        public String compactLayoutAssignment;
        public String description;
        public String label;
        public MetadataService.RecordTypePicklistValue[] picklistValues;
        private String[] active_type_info = new String[]{'active',SOAP_M_URI,null,'1','1','false'};
        private String[] businessProcess_type_info = new String[]{'businessProcess',SOAP_M_URI,null,'0','1','false'};
        private String[] compactLayoutAssignment_type_info = new String[]{'compactLayoutAssignment',SOAP_M_URI,null,'0','1','false'};
        private String[] description_type_info = new String[]{'description',SOAP_M_URI,null,'0','1','false'};
        private String[] label_type_info = new String[]{'label',SOAP_M_URI,null,'1','1','false'};
        private String[] picklistValues_type_info = new String[]{'picklistValues',SOAP_M_URI,null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{SOAP_M_URI,'true','false'};
        private String[] type_att_info = new String[]{'xsi:type'};
        private String[] field_order_type_info = new String[]{'fullName', 'active','businessProcess','compactLayoutAssignment','description','label','picklistValues'};
    }
    public class SearchLayouts {
        public String[] customTabListAdditionalFields;
        public String[] excludedStandardButtons;
        public String[] listViewButtons;
        public String[] lookupDialogsAdditionalFields;
        public String[] lookupFilterFields;
        public String[] lookupPhoneDialogsAdditionalFields;
        public String[] searchFilterFields;
        public String[] searchResultsAdditionalFields;
        public String[] searchResultsCustomButtons;
        private String[] customTabListAdditionalFields_type_info = new String[]{'customTabListAdditionalFields',SOAP_M_URI,null,'0','-1','false'};
        private String[] excludedStandardButtons_type_info = new String[]{'excludedStandardButtons',SOAP_M_URI,null,'0','-1','false'};
        private String[] listViewButtons_type_info = new String[]{'listViewButtons',SOAP_M_URI,null,'0','-1','false'};
        private String[] lookupDialogsAdditionalFields_type_info = new String[]{'lookupDialogsAdditionalFields',SOAP_M_URI,null,'0','-1','false'};
        private String[] lookupFilterFields_type_info = new String[]{'lookupFilterFields',SOAP_M_URI,null,'0','-1','false'};
        private String[] lookupPhoneDialogsAdditionalFields_type_info = new String[]{'lookupPhoneDialogsAdditionalFields',SOAP_M_URI,null,'0','-1','false'};
        private String[] searchFilterFields_type_info = new String[]{'searchFilterFields',SOAP_M_URI,null,'0','-1','false'};
        private String[] searchResultsAdditionalFields_type_info = new String[]{'searchResultsAdditionalFields',SOAP_M_URI,null,'0','-1','false'};
        private String[] searchResultsCustomButtons_type_info = new String[]{'searchResultsCustomButtons',SOAP_M_URI,null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{SOAP_M_URI,'true','false'};
        private String[] field_order_type_info = new String[]{'customTabListAdditionalFields','excludedStandardButtons','listViewButtons','lookupDialogsAdditionalFields','lookupFilterFields','lookupPhoneDialogsAdditionalFields','searchFilterFields','searchResultsAdditionalFields','searchResultsCustomButtons'};
    }
    public class SharingReason extends Metadata {
        public String type = 'SharingReason';
        public String fullName;
        private String[] fullName_type_info = new String[]{'fullName',SOAP_M_URI,null,'0','1','false'};
        public String label;
        private String[] label_type_info = new String[]{'label',SOAP_M_URI,null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{SOAP_M_URI,'true','false'};
        private String[] type_att_info = new String[]{'xsi:type'};
        private String[] field_order_type_info = new String[]{'fullName', 'label'};
    }
    public class SharingRecalculation {
        public String className;
        private String[] className_type_info = new String[]{'className',SOAP_M_URI,null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{SOAP_M_URI,'true','false'};
        private String[] field_order_type_info = new String[]{'className'};
    }
    public class ValidationRule extends Metadata {
        public String type = 'ValidationRule';
        public String fullName;
        private String[] fullName_type_info = new String[]{'fullName',SOAP_M_URI,null,'0','1','false'};
        public Boolean active;
        public String description;
        public String errorConditionFormula;
        public String errorDisplayField;
        public String errorMessage;
        private String[] active_type_info = new String[]{'active',SOAP_M_URI,null,'1','1','false'};
        private String[] description_type_info = new String[]{'description',SOAP_M_URI,null,'0','1','false'};
        private String[] errorConditionFormula_type_info = new String[]{'errorConditionFormula',SOAP_M_URI,null,'1','1','false'};
        private String[] errorDisplayField_type_info = new String[]{'errorDisplayField',SOAP_M_URI,null,'0','1','false'};
        private String[] errorMessage_type_info = new String[]{'errorMessage',SOAP_M_URI,null,'1','1','false'};
        private String[] apex_schema_type_info = new String[]{SOAP_M_URI,'true','false'};
        private String[] type_att_info = new String[]{'xsi:type'};
        private String[] field_order_type_info = new String[]{'fullName', 'active','description','errorConditionFormula','errorDisplayField','errorMessage'};
    }
    public class WebLink extends Metadata {
        public String type = 'WebLink';
        public String fullName;
        private String[] fullName_type_info = new String[]{'fullName',SOAP_M_URI,null,'0','1','false'};
        public String availability;
        public String description;
        public String displayType;
        public String encodingKey;
        public Boolean hasMenubar;
        public Boolean hasScrollbars;
        public Boolean hasToolbar;
        public Integer height;
        public Boolean isResizable;
        public String linkType;
        public String masterLabel;
        public String openType;
        public String page_x;
        public String position;
        public Boolean protected_x;
        public Boolean requireRowSelection;
        public String scontrol;
        public Boolean showsLocation;
        public Boolean showsStatus;
        public String url;
        public Integer width;
        private String[] availability_type_info = new String[]{'availability',SOAP_M_URI,null,'1','1','false'};
        private String[] description_type_info = new String[]{'description',SOAP_M_URI,null,'0','1','false'};
        private String[] displayType_type_info = new String[]{'displayType',SOAP_M_URI,null,'1','1','false'};
        private String[] encodingKey_type_info = new String[]{'encodingKey',SOAP_M_URI,null,'0','1','false'};
        private String[] hasMenubar_type_info = new String[]{'hasMenubar',SOAP_M_URI,null,'0','1','false'};
        private String[] hasScrollbars_type_info = new String[]{'hasScrollbars',SOAP_M_URI,null,'0','1','false'};
        private String[] hasToolbar_type_info = new String[]{'hasToolbar',SOAP_M_URI,null,'0','1','false'};
        private String[] height_type_info = new String[]{'height',SOAP_M_URI,null,'0','1','false'};
        private String[] isResizable_type_info = new String[]{'isResizable',SOAP_M_URI,null,'0','1','false'};
        private String[] linkType_type_info = new String[]{'linkType',SOAP_M_URI,null,'1','1','false'};
        private String[] masterLabel_type_info = new String[]{'masterLabel',SOAP_M_URI,null,'0','1','false'};
        private String[] openType_type_info = new String[]{'openType',SOAP_M_URI,null,'1','1','false'};
        private String[] page_x_type_info = new String[]{'page',SOAP_M_URI,null,'0','1','false'};
        private String[] position_type_info = new String[]{'position',SOAP_M_URI,null,'0','1','false'};
        private String[] protected_x_type_info = new String[]{'protected',SOAP_M_URI,null,'1','1','false'};
        private String[] requireRowSelection_type_info = new String[]{'requireRowSelection',SOAP_M_URI,null,'0','1','false'};
        private String[] scontrol_type_info = new String[]{'scontrol',SOAP_M_URI,null,'0','1','false'};
        private String[] showsLocation_type_info = new String[]{'showsLocation',SOAP_M_URI,null,'0','1','false'};
        private String[] showsStatus_type_info = new String[]{'showsStatus',SOAP_M_URI,null,'0','1','false'};
        private String[] url_type_info = new String[]{'url',SOAP_M_URI,null,'0','1','false'};
        private String[] width_type_info = new String[]{'width',SOAP_M_URI,null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{SOAP_M_URI,'true','false'};
        private String[] type_att_info = new String[]{'xsi:type'};
        private String[] field_order_type_info = new String[]{'fullName', 'availability','description','displayType','encodingKey','hasMenubar','hasScrollbars','hasToolbar','height','isResizable','linkType','masterLabel','openType','page_x','position','protected_x','requireRowSelection','scontrol','showsLocation','showsStatus','url','width'};
    } 
    public class CustomObject extends Metadata {
        public String type = 'CustomObject';
        public String fullName;
        private String[] fullName_type_info = new String[]{'fullName',SOAP_M_URI,null,'0','1','false'};
        public MetadataServiceCustomization.ActionOverride[] actionOverrides;
        public Boolean allowInChatterGroups;
        public MetadataServiceCustomization.ArticleTypeChannelDisplay articleTypeChannelDisplay;
        public MetadataServiceCustomization.BusinessProcess[] businessProcesses;
        public String compactLayoutAssignment;
        public MetadataServiceCustomization.CompactLayout[] compactLayouts;
        public String customHelp;
        public String customHelpPage;
        public String customSettingsType;
        public String dataStewardGroup;
        public String dataStewardUser;
        public String deploymentStatus;
        public Boolean deprecated;
        public String description;
        public Boolean enableActivities;
        public Boolean enableBulkApi;
        public Boolean enableChangeDataCapture;
        public Boolean enableDivisions;
        public Boolean enableEnhancedLookup;
        public Boolean enableFeeds;
        public Boolean enableHistory;
        public Boolean enableReports;
        public Boolean enableSearch;
        public Boolean enableSharing;
        public Boolean enableStreamingApi;
        public String eventType;
        public String externalDataSource;
        public String externalName;
        public String externalRepository;
        public String externalSharingModel;
        public MetadataServiceCustomization.FieldSet[] fieldSets;
        public MetadataServiceCustomization.CustomField[] fields;
        public String gender;
        public MetadataServiceCustomization.HistoryRetentionPolicy historyRetentionPolicy;
        public Boolean household;
        public MetadataServiceCustomization.Index[] indexes;
        public String label;
        public MetadataServiceCustomization.ListView[] listViews;
        public MetadataServiceCustomization.CustomField nameField;
        public String pluralLabel;
        public Boolean recordTypeTrackFeedHistory;
        public Boolean recordTypeTrackHistory;
        public MetadataServiceCustomization.RecordType[] recordTypes;
        public MetadataServiceCustomization.SearchLayouts searchLayouts;
        public String sharingModel;
        public MetadataServiceCustomization.SharingReason[] sharingReasons;
        public MetadataServiceCustomization.SharingRecalculation[] sharingRecalculations;
        public String startsWith;
        public MetadataServiceCustomization.ValidationRule[] validationRules;
        public String visibility;
        public MetadataServiceCustomization.WebLink[] webLinks;
        private String[] actionOverrides_type_info = new String[]{'actionOverrides',SOAP_M_URI,null,'0','-1','false'};
        private String[] allowInChatterGroups_type_info = new String[]{'allowInChatterGroups',SOAP_M_URI,null,'0','1','false'};
        private String[] articleTypeChannelDisplay_type_info = new String[]{'articleTypeChannelDisplay',SOAP_M_URI,null,'0','1','false'};
        private String[] businessProcesses_type_info = new String[]{'businessProcesses',SOAP_M_URI,null,'0','-1','false'};
        private String[] compactLayoutAssignment_type_info = new String[]{'compactLayoutAssignment',SOAP_M_URI,null,'0','1','false'};
        private String[] compactLayouts_type_info = new String[]{'compactLayouts',SOAP_M_URI,null,'0','-1','false'};
        private String[] customHelp_type_info = new String[]{'customHelp',SOAP_M_URI,null,'0','1','false'};
        private String[] customHelpPage_type_info = new String[]{'customHelpPage',SOAP_M_URI,null,'0','1','false'};
        private String[] customSettingsType_type_info = new String[]{'customSettingsType',SOAP_M_URI,null,'0','1','false'};
        private String[] dataStewardGroup_type_info = new String[]{'dataStewardGroup',SOAP_M_URI,null,'0','1','false'};
        private String[] dataStewardUser_type_info = new String[]{'dataStewardUser',SOAP_M_URI,null,'0','1','false'};
        private String[] deploymentStatus_type_info = new String[]{'deploymentStatus',SOAP_M_URI,null,'0','1','false'};
        private String[] deprecated_type_info = new String[]{'deprecated',SOAP_M_URI,null,'0','1','false'};
        private String[] description_type_info = new String[]{'description',SOAP_M_URI,null,'0','1','false'};
        private String[] enableActivities_type_info = new String[]{'enableActivities',SOAP_M_URI,null,'0','1','false'};
        private String[] enableBulkApi_type_info = new String[]{'enableBulkApi',SOAP_M_URI,null,'0','1','false'};
        private String[] enableChangeDataCapture_type_info = new String[]{'enableChangeDataCapture',SOAP_M_URI,null,'0','1','false'};
        private String[] enableDivisions_type_info = new String[]{'enableDivisions',SOAP_M_URI,null,'0','1','false'};
        private String[] enableEnhancedLookup_type_info = new String[]{'enableEnhancedLookup',SOAP_M_URI,null,'0','1','false'};
        private String[] enableFeeds_type_info = new String[]{'enableFeeds',SOAP_M_URI,null,'0','1','false'};
        private String[] enableHistory_type_info = new String[]{'enableHistory',SOAP_M_URI,null,'0','1','false'};
        private String[] enableReports_type_info = new String[]{'enableReports',SOAP_M_URI,null,'0','1','false'};
        private String[] enableSearch_type_info = new String[]{'enableSearch',SOAP_M_URI,null,'0','1','false'};
        private String[] enableSharing_type_info = new String[]{'enableSharing',SOAP_M_URI,null,'0','1','false'};
        private String[] enableStreamingApi_type_info = new String[]{'enableStreamingApi',SOAP_M_URI,null,'0','1','false'};
        private String[] eventType_type_info = new String[]{'eventType',SOAP_M_URI,null,'0','1','false'};
        private String[] externalDataSource_type_info = new String[]{'externalDataSource',SOAP_M_URI,null,'0','1','false'};
        private String[] externalName_type_info = new String[]{'externalName',SOAP_M_URI,null,'0','1','false'};
        private String[] externalRepository_type_info = new String[]{'externalRepository',SOAP_M_URI,null,'0','1','false'};
        private String[] externalSharingModel_type_info = new String[]{'externalSharingModel',SOAP_M_URI,null,'0','1','false'};
        private String[] fieldSets_type_info = new String[]{'fieldSets',SOAP_M_URI,null,'0','-1','false'};
        private String[] fields_type_info = new String[]{'fields',SOAP_M_URI,null,'0','-1','false'};
        private String[] gender_type_info = new String[]{'gender',SOAP_M_URI,null,'0','1','false'};
        private String[] historyRetentionPolicy_type_info = new String[]{'historyRetentionPolicy',SOAP_M_URI,null,'0','1','false'};
        private String[] household_type_info = new String[]{'household',SOAP_M_URI,null,'0','1','false'};
        private String[] indexes_type_info = new String[]{'indexes',SOAP_M_URI,null,'0','-1','false'};
        private String[] label_type_info = new String[]{'label',SOAP_M_URI,null,'0','1','false'};
        private String[] listViews_type_info = new String[]{'listViews',SOAP_M_URI,null,'0','-1','false'};
        private String[] nameField_type_info = new String[]{'nameField',SOAP_M_URI,null,'0','1','false'};
        private String[] pluralLabel_type_info = new String[]{'pluralLabel',SOAP_M_URI,null,'0','1','false'};
        private String[] recordTypeTrackFeedHistory_type_info = new String[]{'recordTypeTrackFeedHistory',SOAP_M_URI,null,'0','1','false'};
        private String[] recordTypeTrackHistory_type_info = new String[]{'recordTypeTrackHistory',SOAP_M_URI,null,'0','1','false'};
        private String[] recordTypes_type_info = new String[]{'recordTypes',SOAP_M_URI,null,'0','-1','false'};
        private String[] searchLayouts_type_info = new String[]{'searchLayouts',SOAP_M_URI,null,'0','1','false'};
        private String[] sharingModel_type_info = new String[]{'sharingModel',SOAP_M_URI,null,'0','1','false'};
        private String[] sharingReasons_type_info = new String[]{'sharingReasons',SOAP_M_URI,null,'0','-1','false'};
        private String[] sharingRecalculations_type_info = new String[]{'sharingRecalculations',SOAP_M_URI,null,'0','-1','false'};
        private String[] startsWith_type_info = new String[]{'startsWith',SOAP_M_URI,null,'0','1','false'};
        private String[] validationRules_type_info = new String[]{'validationRules',SOAP_M_URI,null,'0','-1','false'};
        private String[] visibility_type_info = new String[]{'visibility',SOAP_M_URI,null,'0','1','false'};
        private String[] webLinks_type_info = new String[]{'webLinks',SOAP_M_URI,null,'0','-1','false'};
        private String[] apex_schema_type_info = new String[]{SOAP_M_URI,'true','false'};
        private String[] type_att_info = new String[]{'xsi:type'};
        private String[] field_order_type_info = new String[]{'fullName', 'actionOverrides','allowInChatterGroups','articleTypeChannelDisplay','businessProcesses','compactLayoutAssignment','compactLayouts','customHelp','customHelpPage','customSettingsType','dataStewardGroup','dataStewardUser','deploymentStatus','deprecated','description','enableActivities','enableBulkApi','enableChangeDataCapture','enableDivisions','enableEnhancedLookup','enableFeeds','enableHistory','enableReports','enableSearch','enableSharing','enableStreamingApi','eventType','externalDataSource','externalName','externalRepository','externalSharingModel','fieldSets','fields','gender','historyRetentionPolicy','household','indexes','label','listViews','nameField','pluralLabel','recordTypeTrackFeedHistory','recordTypeTrackHistory','recordTypes','searchLayouts','sharingModel','sharingReasons','sharingRecalculations','startsWith','validationRules','visibility','webLinks'};
    }
    public class CustomField extends Metadata {
        public String type = 'CustomField';
        public String fullName;
        private String[] fullName_type_info = new String[]{'fullName',SOAP_M_URI,null,'0','1','false'};
        public String businessOwnerGroup;
        public String businessOwnerUser;
        public String businessStatus;
        public Boolean caseSensitive;
        public String customDataType;
        public String defaultValue;
        public String deleteConstraint;
        public Boolean deprecated;
        public String description;
        public String displayFormat;
        public Boolean displayLocationInDecimal;
        public Boolean encrypted;
        public Boolean escapeMarkup;
        public String externalDeveloperName;
        public Boolean externalId;
        public String fieldManageability;
        public String formula;
        public String formulaTreatBlanksAs;
        public String inlineHelpText;
        public Boolean isConvertLeadDisabled;
        public Boolean isFilteringDisabled;
        public Boolean isNameField;
        public Boolean isSortingDisabled;
        public String label;
        public Integer length;
        public MetadataService.LookupFilter lookupFilter;
        public String maskChar;
        public String maskType;
        public String metadataRelationshipControllingField;
        public Boolean populateExistingRows;
        public Integer precision;
        public String referenceTargetField;
        public String referenceTo;
        public String relationshipLabel;
        public String relationshipName;
        public Integer relationshipOrder;
        public Boolean reparentableMasterDetail;
        public Boolean required;
        public Boolean restrictedAdminField;
        public Integer scale;
        public String securityClassification;
        public Integer startingNumber;
        public Boolean stripMarkup;
        public String summarizedField;
        public MetadataService.FilterItem[] summaryFilterItems;
        public String summaryForeignKey;
        public String summaryOperation;
        public Boolean trackFeedHistory;
        public Boolean trackHistory;
        public Boolean trackTrending;
        public String type_x;
        public Boolean unique;
        public MetadataService.ValueSet valueSet;
        public Integer visibleLines;
        public Boolean writeRequiresMasterRead;
        private String[] businessOwnerGroup_type_info = new String[]{'businessOwnerGroup',SOAP_M_URI,null,'0','1','false'};
        private String[] businessOwnerUser_type_info = new String[]{'businessOwnerUser',SOAP_M_URI,null,'0','1','false'};
        private String[] businessStatus_type_info = new String[]{'businessStatus',SOAP_M_URI,null,'0','1','false'};
        private String[] caseSensitive_type_info = new String[]{'caseSensitive',SOAP_M_URI,null,'0','1','false'};
        private String[] customDataType_type_info = new String[]{'customDataType',SOAP_M_URI,null,'0','1','false'};
        private String[] defaultValue_type_info = new String[]{'defaultValue',SOAP_M_URI,null,'0','1','false'};
        private String[] deleteConstraint_type_info = new String[]{'deleteConstraint',SOAP_M_URI,null,'0','1','false'};
        private String[] deprecated_type_info = new String[]{'deprecated',SOAP_M_URI,null,'0','1','false'};
        private String[] description_type_info = new String[]{'description',SOAP_M_URI,null,'0','1','false'};
        private String[] displayFormat_type_info = new String[]{'displayFormat',SOAP_M_URI,null,'0','1','false'};
        private String[] displayLocationInDecimal_type_info = new String[]{'displayLocationInDecimal',SOAP_M_URI,null,'0','1','false'};
        private String[] encrypted_type_info = new String[]{'encrypted',SOAP_M_URI,null,'0','1','false'};
        private String[] escapeMarkup_type_info = new String[]{'escapeMarkup',SOAP_M_URI,null,'0','1','false'};
        private String[] externalDeveloperName_type_info = new String[]{'externalDeveloperName',SOAP_M_URI,null,'0','1','false'};
        private String[] externalId_type_info = new String[]{'externalId',SOAP_M_URI,null,'0','1','false'};
        private String[] fieldManageability_type_info = new String[]{'fieldManageability',SOAP_M_URI,null,'0','1','false'};
        private String[] formula_type_info = new String[]{'formula',SOAP_M_URI,null,'0','1','false'};
        private String[] formulaTreatBlanksAs_type_info = new String[]{'formulaTreatBlanksAs',SOAP_M_URI,null,'0','1','false'};
        private String[] inlineHelpText_type_info = new String[]{'inlineHelpText',SOAP_M_URI,null,'0','1','false'};
        private String[] isConvertLeadDisabled_type_info = new String[]{'isConvertLeadDisabled',SOAP_M_URI,null,'0','1','false'};
        private String[] isFilteringDisabled_type_info = new String[]{'isFilteringDisabled',SOAP_M_URI,null,'0','1','false'};
        private String[] isNameField_type_info = new String[]{'isNameField',SOAP_M_URI,null,'0','1','false'};
        private String[] isSortingDisabled_type_info = new String[]{'isSortingDisabled',SOAP_M_URI,null,'0','1','false'};
        private String[] label_type_info = new String[]{'label',SOAP_M_URI,null,'0','1','false'};
        private String[] length_type_info = new String[]{'length',SOAP_M_URI,null,'0','1','false'};
        private String[] lookupFilter_type_info = new String[]{'lookupFilter',SOAP_M_URI,null,'0','1','false'};
        private String[] maskChar_type_info = new String[]{'maskChar',SOAP_M_URI,null,'0','1','false'};
        private String[] maskType_type_info = new String[]{'maskType',SOAP_M_URI,null,'0','1','false'};
        private String[] metadataRelationshipControllingField_type_info = new String[]{'metadataRelationshipControllingField',SOAP_M_URI,null,'0','1','false'};
        private String[] populateExistingRows_type_info = new String[]{'populateExistingRows',SOAP_M_URI,null,'0','1','false'};
        private String[] precision_type_info = new String[]{'precision',SOAP_M_URI,null,'0','1','false'};
        private String[] referenceTargetField_type_info = new String[]{'referenceTargetField',SOAP_M_URI,null,'0','1','false'};
        private String[] referenceTo_type_info = new String[]{'referenceTo',SOAP_M_URI,null,'0','1','false'};
        private String[] relationshipLabel_type_info = new String[]{'relationshipLabel',SOAP_M_URI,null,'0','1','false'};
        private String[] relationshipName_type_info = new String[]{'relationshipName',SOAP_M_URI,null,'0','1','false'};
        private String[] relationshipOrder_type_info = new String[]{'relationshipOrder',SOAP_M_URI,null,'0','1','false'};
        private String[] reparentableMasterDetail_type_info = new String[]{'reparentableMasterDetail',SOAP_M_URI,null,'0','1','false'};
        private String[] required_type_info = new String[]{'required',SOAP_M_URI,null,'0','1','false'};
        private String[] restrictedAdminField_type_info = new String[]{'restrictedAdminField',SOAP_M_URI,null,'0','1','false'};
        private String[] scale_type_info = new String[]{'scale',SOAP_M_URI,null,'0','1','false'};
        private String[] securityClassification_type_info = new String[]{'securityClassification',SOAP_M_URI,null,'0','1','false'};
        private String[] startingNumber_type_info = new String[]{'startingNumber',SOAP_M_URI,null,'0','1','false'};
        private String[] stripMarkup_type_info = new String[]{'stripMarkup',SOAP_M_URI,null,'0','1','false'};
        private String[] summarizedField_type_info = new String[]{'summarizedField',SOAP_M_URI,null,'0','1','false'};
        private String[] summaryFilterItems_type_info = new String[]{'summaryFilterItems',SOAP_M_URI,null,'0','-1','false'};
        private String[] summaryForeignKey_type_info = new String[]{'summaryForeignKey',SOAP_M_URI,null,'0','1','false'};
        private String[] summaryOperation_type_info = new String[]{'summaryOperation',SOAP_M_URI,null,'0','1','false'};
        private String[] trackFeedHistory_type_info = new String[]{'trackFeedHistory',SOAP_M_URI,null,'0','1','false'};
        private String[] trackHistory_type_info = new String[]{'trackHistory',SOAP_M_URI,null,'0','1','false'};
        private String[] trackTrending_type_info = new String[]{'trackTrending',SOAP_M_URI,null,'0','1','false'};
        private String[] type_x_type_info = new String[]{'type',SOAP_M_URI,null,'0','1','false'};
        private String[] unique_type_info = new String[]{'unique',SOAP_M_URI,null,'0','1','false'};
        private String[] valueSet_type_info = new String[]{'valueSet',SOAP_M_URI,null,'0','1','false'};
        private String[] visibleLines_type_info = new String[]{'visibleLines',SOAP_M_URI,null,'0','1','false'};
        private String[] writeRequiresMasterRead_type_info = new String[]{'writeRequiresMasterRead',SOAP_M_URI,null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{SOAP_M_URI,'true','false'};
        private String[] type_att_info = new String[]{'xsi:type'};
        private String[] field_order_type_info = new String[]{'fullName', 'businessOwnerGroup','businessOwnerUser','businessStatus','caseSensitive','customDataType','defaultValue','deleteConstraint','deprecated','description','displayFormat','displayLocationInDecimal','encrypted','escapeMarkup','externalDeveloperName','externalId','fieldManageability','formula','formulaTreatBlanksAs','inlineHelpText','isConvertLeadDisabled','isFilteringDisabled','isNameField','isSortingDisabled','label','length','lookupFilter','maskChar','maskType','metadataRelationshipControllingField','populateExistingRows','precision','referenceTargetField','referenceTo','relationshipLabel','relationshipName','relationshipOrder','reparentableMasterDetail','required','restrictedAdminField','scale','securityClassification','startingNumber','stripMarkup','summarizedField','summaryFilterItems','summaryForeignKey','summaryOperation','trackFeedHistory','trackHistory','trackTrending','type_x','unique','valueSet','visibleLines','writeRequiresMasterRead'};
    }
}