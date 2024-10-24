import ballerina/http;

service /pineValley on new http:Listener(9092) {

    resource function post doctors(@http:Payload json doctors) returns http:BadRequest & readonly|map<json>|error {

        string doctorType = check doctors.doctorType;
        match doctorType.toLowerAscii() {
            "ophthalmologist" => {
                return {
                    "doctors": {
                        "doctor": [
                            {
                                "name": "John Mathew",
                                "time": "07:30 AM",
                                "hospital": "pineValley"
                            },
                            {
                                "name": "Roma Katherine",
                                "time": "04:30 PM",
                                "hospital": "pineValley"
                            }
                        ]
                    }
                };
            }
            "physician" => {
                return {
                    "doctors": {
                        "doctor": [
                            {
                                "name": "Geln Ivan",
                                "time": "05:30 PM",
                                "hospital": "pineValley"
                            },
                            {
                                "name": "Daniel Lewis",
                                "time": "05:30 PM",
                                "hospital": "pineValley"
                            }
                        ]
                    }
                };
            }
            "pediatrician" => {
                return {
                    "doctors": {
                        "doctor": [
                            {
                                "name": "Bob Watson",
                                "time": "07:30 AM",
                                "hospital": "pineValley"
                            },
                            {
                                "name": "Wilson Mcdonald",
                                "time": "07:30 AM",
                                "hospital": "pineValley"
                            }
                        ]
                    }
                };
            }
            _ => {
                return http:BAD_REQUEST;
            }
        }
    }
}