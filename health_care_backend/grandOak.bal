import ballerina/http;

service /grandOak on new http:Listener(9091) {

    resource function get doctors/[string doctorType]() returns http:BadRequest & readonly|map<json> {

        match doctorType.toLowerAscii() {
            "ophthalmologist" => {
                return {
                    "doctors": {
                        "doctor": [
                            {
                                "name": "John Mathew",
                                "time": "03:30 PM",
                                "hospital": "Grand Oak"
                            },
                            {
                                "name": "Allan Silvester",
                                "time": "04:30 PM",
                                "hospital": "Grand Oak"
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
                                "name": "Shane Martin",
                                "time": "07:30 AM",
                                "hospital": "Grand Oak"
                            },
                            {
                                "name": "Geln Ivan",
                                "time": "08:30 AM",
                                "hospital": "Grand Oak"
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
                                "time": "05:30 PM",
                                "hospital": "Grand Oak"
                            },
                            {
                                "name": "Paul Johnson",
                                "time": "07:30 AM",
                                "hospital": "Grand Oak"
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
