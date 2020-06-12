 data Student = Student {firstName :: String,

                        lastName :: String,

                        major :: String,

                      age :: Int

                        } deriving (Show)
 george = Student {firstName = "George", lastName = "Beltran", major = "CS", age = 22}