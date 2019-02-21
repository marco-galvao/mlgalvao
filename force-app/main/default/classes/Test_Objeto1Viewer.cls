@isTest
public class Test_Objeto1Viewer {

    testmethod static void test1(){
        c_Objeto1Viewer myVar = new c_Objeto1Viewer();
        system.assertEquals('Hello World!!!', myVar.helloWorld);
        
        myVar.metodo1();
        
        system.assertEquals('Hello again!!', myVar.helloWorld);
        
    }
}