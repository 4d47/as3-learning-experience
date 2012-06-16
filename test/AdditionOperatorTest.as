package {
    import org.flexunit.Assert;

    public class AdditionOperatorTest {

        [Test]
        public function objectNumberAddition():void {
            Assert.assertEquals("[object A]10", new A() + 10);
            Assert.assertEquals("4210", new B() + 10);
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
