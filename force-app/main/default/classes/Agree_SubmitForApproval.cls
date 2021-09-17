public class Agree_SubmitForApproval
{
 
    public String submissionComments{get;set;}
    public Id AgrmntID {get;set;}
    public Aggrement__c  Agrmnt {get;set;}

    public Agree_SubmitForApproval(ApexPages.StandardController stdController)
    {
        AgrmntID =  ApexPages.currentPage().getParameters().get('id');
         Agrmnt = [select Id, Name from Aggrement__c where Id =: AgrmntID];
    }
    //To submit the commercial Gesture for approval
    public pageReference submit()
    {
        pageReference pg = null;
                                   
            Approval.ProcessSubmitRequest req1 = new Approval.ProcessSubmitRequest();
            req1.setComments(submissionComments);
            req1.setObjectId(AgrmntID);
            Approval.ProcessResult result = Approval.process(req1);
            
        pg = new PageReference('/'+Agrmnt.ID);
        pg.setRedirect(true);
        return pg;
    }
    public pageReference cancel()
    {
        pageReference pg = null;
        try
        {
            pg = new PageReference('/'+Agrmnt.ID);
            pg.setRedirect(true);
        }
        catch(Exception ex)
        {
            ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR,'Unexpected Error occured while submitting the request for approval. Please contact your Administrator'));
            pg = null;
        }
        return pg;
    }
}