package flash.utils {
    import flash.utils.Dictionary;
    import flash.system.System;
    import org.flexunit.Assert;

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
            Assert.assertNull( dict['not-found'] );
        }
    }
}
