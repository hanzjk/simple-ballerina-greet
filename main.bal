import ballerina/io;
import ballerina/http;

service / on new http:Listener(8090) {
    // resource function post [string path](http:Request req) returns string|error|http:Response {
    //     string payload = check req.getTextPayload();
    //     io:println("payload: " + payload);
    //     io:println("path: " + path);
    //     return payload;
    // }
    // resource function for /hello
    resource function post greeting/hello() returns string {
        io:println("Hello, World!");
        return "Hello, World!";
    }
}
