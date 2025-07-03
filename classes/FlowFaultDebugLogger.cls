public with sharing class FlowFaultDebugLogger {
    public class Request {
        @InvocableVariable(label='Flow Name' required=true)
        public String flowName;
        @InvocableVariable(label='Fault Message' required=true)
        public String faultMessage;
        @InvocableVariable(label='Fault Details')
        public String faultDetails;
        @InvocableVariable(label='Interview Id')
        public String interviewId;
    }

    @InvocableMethod(
        label='Log Flow Fault',
        description='Logs details of a Flow fault to the debug log.'
    )
    public static void logFault(List<Request> requests) {
        for (Request req : requests) {
            System.debug(LoggingLevel.ERROR, '--- Flow Fault Debug ---');
            System.debug(LoggingLevel.ERROR, 'Flow Name: ' + req.flowName);
            System.debug(LoggingLevel.ERROR, 'Interview Id: ' + req.interviewId);
            System.debug(LoggingLevel.ERROR, 'Fault Message: ' + req.faultMessage);
            System.debug(LoggingLevel.ERROR, 'Fault Details: ' + req.faultDetails);
        }
    }
}
