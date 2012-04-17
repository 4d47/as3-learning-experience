package {
    import org.flexunit.Assert;

    public class StringTest {

        [Test]
        public function stringBoolean():void {
            Assert.assertEquals("true", String(true));
            Assert.assertEquals("false", String(false));
        }

        [Test]
        public function stringNumber():void {
            Assert.assertEquals("10", String(10));
            Assert.assertEquals("10.5", String(10.5));
        }

        [Test]
        public function stringNull():void {
            Assert.assertEquals("null", String(null));
        }

        [Test]
        public function stringString():void {
            Assert.assertEquals("hello", String("hello"));
        }
    }
}
