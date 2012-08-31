package lang {
    import org.flexunit.Assert;

    public class IsOperatorTest {

        [Test]
        public function isNumber():void {
            Assert.assertTrue(10 is Number);
            Assert.assertFalse("10" is Number);
        }

        [Test(expects="TypeError")]
        public function isNull():void {
            Assert.assertTrue(10 is null);
        }

        [Test()]
        public function upcasting():void {
            Assert.assertTrue( Object(this) is IsOperatorTest );
        }
    }
}
