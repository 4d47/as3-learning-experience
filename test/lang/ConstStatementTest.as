package lang {
    import org.flexunit.asserts.*;

    public class ConstStatementTest {
        private const NUMBER = 10;
        private const UNDEFINED;
        private const OBJECT = new Object();

        [Test]
        public function assigned():void {
            assertEquals(10, this.NUMBER);
            assertEquals(undefined, this.UNDEFINED);
            assertTrue(this.OBJECT);
        }
    }
}
