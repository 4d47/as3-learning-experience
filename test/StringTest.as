package {
    import org.flexunit.asserts.*;

    public class StringTest {

        [Test]
        public function castBoolean():void {
            assertEquals("true", String(true));
            assertEquals("false", String(false));
        }

        [Test]
        public function castNumber():void {
            assertEquals("10", String(10));
            assertEquals("10.5", String(10.5));
        }

        [Test]
        public function castNull():void {
            assertEquals("null", String(null));
        }

        [Test]
        public function castString():void {
            assertEquals("hello", String("hello"));
        }

        [Test]
        public function charAt():void {
            assertEquals("a", "a".charAt(0));
            assertEquals("", "".charAt(0));
            assertEquals("", "".charAt(99));
            assertEquals("", "hello".charAt(-2));
        }

        [Test]
        public function split():void {
            assertEquals(3, "1,2,3".split(',').length);
        }
    }
}
