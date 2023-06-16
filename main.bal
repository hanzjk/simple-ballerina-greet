import ballerina/io;
import ballerina/time;

public function main() {
    io:println("Hello, World!");
    var currentTime = time:utcNow();
    var formattedTime = time:utcToString(currentTime);
    io:println("Current time: " + formattedTime);
}
