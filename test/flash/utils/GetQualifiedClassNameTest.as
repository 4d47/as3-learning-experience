package flash.utils {
    import org.flexunit.asserts.*;

    public class GetQualifiedClassNameTest {

        [Test]
        public function simple():void {
            assertEquals("null", getQualifiedClassName(null));
            assertEquals("int", getQualifiedClassName(12));
            assertEquals("Boolean", getQualifiedClassName(true));
            assertEquals("Number", getQualifiedClassName(12.5));
            assertEquals("String", getQualifiedClassName("foo"));
            assertEquals("Array", getQualifiedClassName([]));
            assertEquals("Object", getQualifiedClassName({}));
            assertEquals("XML", getQualifiedClassName(<foo/>));
            assertEquals("flash.utils::GetQualifiedClassNameTest", getQualifiedClassName(this));
        }
    }
}

