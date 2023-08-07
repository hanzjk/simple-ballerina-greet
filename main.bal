import ballerina/io;
import ballerina/time;
import ballerina/lang.runtime;

public function main() {
    io:println("Hello, World! I'm starting the timer.");
    var currentTime = time:utcNow();
    var formattedTime = time:utcToString(currentTime);

    // print while time in while loop for 10 minutes
    var i = 0;
    while (i < 10) {
        currentTime = time:utcNow();
        formattedTime = time:utcToString(currentTime);
        io:println("Current time: " + formattedTime);
        runtime:sleep(60);
        i = i + 1;
    }
}
