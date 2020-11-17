import ballerina/grpc;
import ballerina/io;

public function main (string... args) {

    statisticsBlockingClient blockingEp = new("http://localhost:9090");

     COVID_info sent_Info = {

        regionName: "Khomas", 
        date: "17/11/2020",
        num_deaths: 0, 
        num_Cases: 11,
        num_Recoveries: 500, 
        num_Tests: 1000
        };

    var clientUnion = blockingEp->sent_Information(sent_Info);

    if (clientUnion is grpc:Error) {

        io:println("error from the server");
    } else {

        io:println("Successfully Connected");
    }

    

}


