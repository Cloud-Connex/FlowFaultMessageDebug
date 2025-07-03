public class FlowFaultDebugLogger {

    @InvocableMethod(label='Log Flow Fault' description='Logs details of a Flow fault to the debug log.')
    public static List<String> logFault(List<String> flowMessages) {
        for(String flowMessage: flowMessages) System.debug('Flow Fault Message: '+flowMessage);
    	return new List<String>();
    }
}
