package flash.utils {
    import org.flexunit.asserts.*;

    public class DictionaryTest {
        private var dict:Dictionary;
        private var weakDict:Dictionary;

        [Before]
        public function setUp():void {
            dict = new Dictionary();
            weakDict = new Dictionary(true);
        }

        [Test]
        public function keyNotFound():void {
            assertNull( dict['not-found'] );
        }
    }
}
