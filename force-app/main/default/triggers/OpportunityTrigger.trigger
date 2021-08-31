trigger OpportunityTrigger on Opportunity (before update) {
    switch on Trigger.OperationType {
        when BEFORE_UPDATE {
            OpportunityTriggerHandler.validate(Trigger.old, Trigger.newMap);
        }
    }
}