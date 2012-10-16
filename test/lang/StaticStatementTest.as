package lang {
    import org.flexunit.asserts.*;

    public class StaticStatementTest {
        private static var counter:int = 0;

        [Test(order=1)]
        public function one():void {
            counter++;
            assertEquals(1, counter);
        }

        [Test(order=2)]
        public function two():void {
            counter++;
            assertEquals(2, counter);
        }
    }
}
