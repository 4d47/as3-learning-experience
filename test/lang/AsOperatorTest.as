package lang {
    import org.flexunit.asserts.*;

    public class AsOperatorTest {
        private var instance:AsOperatorTest;

        [Before]
        public function setUp():void {
            instance = new AsOperatorTest();
        }

        [Test]
        public function asFailing():void {
            assertStrictlyEquals(null, instance as Number);
        }

        [Test]
        public function asPassing():void {
            assertStrictlyEquals(instance, instance as AsOperatorTest);
            assertStrictlyEquals(instance, instance as Object);
        }

        [Test(expects="TypeError")]
        public function explicitCastingFailing():void {
            AsOperatorTest(43);
        }

        [Test]
        public function explicitCastingOfInt():void {
            assertStrictlyEquals(0, int("a12"));
            assertStrictlyEquals(0, int(false));
            assertStrictlyEquals(0, int(this));
        }

    }
}
