# FlowFaultMessageDebug

This project contains the `FlowFaultDebugLogger` Apex class that can be called from a Flow.
Use it to log details about Flow faults or any message you want to capture in the debug log.

## Adding to Your Salesforce Org

1. Deploy the Apex class in `classes/FlowFaultDebugLogger.cls` to your org.
   * You can use the Setup > **Apex Classes** page or use SFDX/Metadata API.
2. Once deployed, the class exposes the `Log Flow Fault` Apex action.

## Using the Apex Action in a Flow

1. In **Flow Builder**, open or create the Flow that should capture fault details.
2. Add an **Action** element and search for **Log Flow Fault**.
3. Provide a string input (for example, use `{!$Flow.FaultMessage}` on a fault path).
4. Connect the action into your flow so it runs when a fault occurs.
5. Save and activate the flow.

## Viewing Logs and Flow Runs

1. Go to **Setup** > **Debug Logs** and make sure a debug log is active for the user who runs the flow.
2. After the flow executes, open the latest log entry for that user.
3. Look for lines beginning with `Flow Fault Message:`—these are the statements logged by the Apex action.
4. To review or edit flows, navigate to **Setup** > **Flows** and open the flow you configured.
