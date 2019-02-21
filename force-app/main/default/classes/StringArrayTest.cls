public class StringArrayTest {
    
    
    public static String[] generateStringArray(Integer n){
        String[] genArray = new String[n];
        
        for(Integer i = 0; i < n; i++){
            genArray[i] = 'Test ' + i;
        }
        
        return genArray;
    }

}