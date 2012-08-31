package {
    import org.flexunit.Assert;

    public class StringTest {

        [Test]
        public function castBoolean():void {
            Assert.assertEquals("true", String(true));
            Assert.assertEquals("false", String(false));
        }

        [Test]
        public function castNumber():void {
            Assert.assertEquals("10", String(10));
            Assert.assertEquals("10.5", String(10.5));
        }

        [Test]
        public function castNull():void {
            Assert.assertEquals("null", String(null));
        }

        [Test]
        public function castString():void {
            Assert.assertEquals("hello", String("hello"));
        }

        [Test]
        public function charAt():void {
            Assert.assertEquals("a", "a".charAt(0));
            Assert.assertEquals("", "".charAt(0));
            Assert.assertEquals("", "".charAt(99));
            Assert.assertEquals("", "hello".charAt(-2));
        }

        [Test]
        public function split():void {
            Assert.assertEquals(3, "1,2,3".split(',').length);
        }
    }
}
