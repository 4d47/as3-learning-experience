package {
    import org.flexunit.asserts.*;

    public class ObjectTest {

        [Test]
        public function methodEquality():void {
            assertTrue(new ObjectTest().methodEquality !== new ObjectTest().methodEquality);
        }
    }
}
