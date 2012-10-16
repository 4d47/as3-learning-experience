package {
    import flash.utils.getDefinitionByName;

    import org.flexunit.asserts.*;

    public class ClassTest {

        [Test]
        public function dynamicClassNameInstanciation():void {
            var ClassReference:Class = Class(getDefinitionByName('ObjectTest'));
            assertTrue( new ClassReference() is ObjectTest );
        }
    }
}

