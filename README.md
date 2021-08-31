# Coding Challenge (Due 1 Sept 6 PM Eastern)

Observe the OpportunityTrigger and OpportunityTriggerHandler files. When an opportunity record (or opportunity records) are updated, this trigger to see if the stage of the opportunity before the update was Closed Won or Closed Lost. If this is the case, the trigger adds an error if the related account or close date haave been changed.

Write a test class that will implement single and bulk positive and negative tests for this trigger and trigger handler. Be sure to use assert methods in your test methods in order to ensure that the code is functioning as expected.
