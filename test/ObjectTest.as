package {
    import org.flexunit.Assert;

    public class ObjectTest {

        [Test]
        public function methodEquality():void {
            Assert.assertTrue(new ObjectTest().methodEquality !== new ObjectTest().methodEquality);
        }
    }
}
