package {
    import org.flexunit.Assert;

    public class NumberTest {

        [Test]
        public function numberBoolean():void {
            Assert.assertEquals(1, Number(true));
            Assert.assertEquals(0, Number(false));
        }
    }
}
