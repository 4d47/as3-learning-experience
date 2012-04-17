package {
    import org.flexunit.Assert;

    public class AsOperatorTest {
        private var instance:AsOperatorTest;

        [Before]
        public function setUp():void {
            instance = new AsOperatorTest();
        }

        [Test]
        public function asFailing():void {
            Assert.assertStrictlyEquals(null, instance as Number);
        }

        [Test]
        public function asPassing():void {
            Assert.assertStrictlyEquals(instance, instance as AsOperatorTest);
            Assert.assertStrictlyEquals(instance, instance as Object);
        }

        [Test(expects="TypeError")]
        public function explicitCastingFailing():void {
            AsOperatorTest(43);
        }
    }
}
