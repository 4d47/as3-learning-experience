package lang {
    import org.flexunit.asserts.*;

    public class AdditionOperatorTest {

        [Test]
        public function objectNumberAddition():void {
            assertEquals("[object A]10", new A() + 10);
            assertEquals("4210", new B() + 10);
        }
    }
}

class A {
}
class B {
    public function toString():String {
        return "42";
    }
}
