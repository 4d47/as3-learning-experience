package lang {
    import org.flexunit.asserts.*;

    public class IsOperatorTest {

        [Test]
        public function isNumber():void {
            assertTrue(10 is Number);
            assertFalse("10" is Number);
        }

        [Test(expects="TypeError")]
        public function isNull():void {
            assertTrue(10 is null);
        }

        public function isObject():void {
            assertTrue(false is Object);
            assertTrue(10000 is Object);
            assertTrue(null is null);
            assertFalse(null is Object);
        }

        [Test()]
        public function upcasting():void {
            assertTrue( Object(this) is IsOperatorTest );
        }
    }
}
