package {
    import org.flexunit.Assert;

    public class NumberTest {

        [Test]
        public function numberBoolean():void {
            Assert.assertStrictlyEquals(1, Number(true));
            Assert.assertStrictlyEquals(0, Number(false));
        }
    }
}
