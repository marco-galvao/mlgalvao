@isTest
public class AnimalLocatorTest {
    @isTest static void testAnimalCallout() {
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
        AnimalLocator.getAnimalNameById(0);
    }
}