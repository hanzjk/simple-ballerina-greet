import ballerina/io;
import ballerina/http;
import ballerinax/trigger.github;

configurable github:ListenerConfig config = ?;
configurable string toEmail = ?;

listener http:Listener httpListener = new (8090);
listener github:Listener webhookListener = new (config, httpListener);

service / on webhookListener {
    resource function post greeting/hello() returns string {
        io:println("Invoked hello resource");
        return "Hello, World!";
    }
}
