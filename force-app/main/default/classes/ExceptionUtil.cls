public class ExceptionUtil {
    
    public class MyCustomException extends Exception {}
    
    @invocableMethod(label='Invoke Custom Exception message' 
                     description='Passing a custom message to this class will (1) Allow the display of a User friendly messgae, and (2) roll-back the complete transaction preventing the creation of incomplete records.'
                     iconName='slds:standard:incident')
    public static void throwCustomException(List<String> exceptionMessage)
    {
        throw new MyCustomException('An internal exception occurred during the operation.'+
                                       'Please contact you System Administrator with this exception details: ' + exceptionMessage[0]);
    }

}