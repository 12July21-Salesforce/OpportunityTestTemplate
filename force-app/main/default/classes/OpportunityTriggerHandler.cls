public class OpportunityTriggerHandler {
	public static void validate(List<Opportunity> oldOpps, Map<Id, Opportunity> newOppMap) {
        for(Opportunity o : oldOpps) {
            if((o.StageName == 'Closed Won') || (o.StageName == 'Closed Lost')) {
                Opportunity newOpp = newOppMap.get(o.Id);
                if((o.AccountId != newOpp.AccountId) || (o.CloseDate != newOpp.CloseDate)) {
                    newOpp.addError('The related account and close date cannot be changed on a Closed Won or Closed ' +
                                   'Lost opportunity.');
                }
            }
        }
    }
}