import ballerina/io;
import ballerina/http;

listener http:Listener httpListener = new (8090);

service / on httpListener {
    resource function post greeting/hello() returns string {
        io:println("Invoked hello resource");
        return "Hello, World";
    }
}
