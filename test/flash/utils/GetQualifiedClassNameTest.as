package flash.utils {
    import flash.utils.getQualifiedClassName;

    import org.flexunit.Assert;

    public class GetQualifiedClassNameTest {

        [Test]
        public function simple():void {
            Assert.assertEquals("null", getQualifiedClassName(null));
            Assert.assertEquals("int", getQualifiedClassName(12));
            Assert.assertEquals("Boolean", getQualifiedClassName(true));
            Assert.assertEquals("Number", getQualifiedClassName(12.5));
            Assert.assertEquals("String", getQualifiedClassName("foo"));
            Assert.assertEquals("Array", getQualifiedClassName([]));
            Assert.assertEquals("Object", getQualifiedClassName({}));
            Assert.assertEquals("XML", getQualifiedClassName(<foo/>));
            Assert.assertEquals("flash.utils::GetQualifiedClassNameTest", getQualifiedClassName(this));
        }
    }
}

