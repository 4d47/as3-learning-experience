package {
    import org.flexunit.Assert;

    public class AsTest {
        private var instance:AsTest;

        [Before]
        public function setUp():void {
            instance = new AsTest();
        }

        [Test]
        public function asFailing():void {
            Assert.assertStrictlyEquals(null, instance as Number);
        }

        [Test]
        public function asPassing():void {
            Assert.assertStrictlyEquals(instance, instance as AsTest);
            Assert.assertStrictlyEquals(instance, instance as Object);
        }

        [Test(expects="TypeError")]
        public function explicitCastingFailing():void {
            AsTest(43);
        }
    }
}
