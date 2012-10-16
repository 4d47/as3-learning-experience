package {
    import org.flexunit.asserts.*;

    public class NumberTest {

        [Test]
        public function numberBoolean():void {
            assertStrictlyEquals(1, Number(true));
            assertStrictlyEquals(0, Number(false));
        }
    }
}
