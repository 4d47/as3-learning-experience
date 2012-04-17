package {
    import org.flexunit.Assert;

    public class IsTest {

        [Test]
        public function isNumber():void {
            Assert.assertTrue(10 is Number);
            Assert.assertFalse("10" is Number);
        }

        [Test(expects="TypeError")]
        public function isNull():void {
            Assert.assertTrue(10 is null);
        }
    }
}
