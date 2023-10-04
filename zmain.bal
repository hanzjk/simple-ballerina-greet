import ballerina/io;
import ballerina/http;

service / on new http:Listener(8090) {
    resource function post .() returns string {
        io:println("Invoked hello resource");
        return "Hello, World!";
    }
}
