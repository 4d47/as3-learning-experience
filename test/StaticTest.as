package {
    import org.flexunit.Assert;

    public class StaticTest {
        private static var counter:int = 0;

        [Test(order=1)]
        public function one():void {
            counter++;
            Assert.assertEquals(1, counter);
        }

        [Test(order=2)]
        public function two():void {
            counter++;
            Assert.assertEquals(2, counter);
        }
    }
}
