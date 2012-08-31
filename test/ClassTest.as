package {
    import flash.utils.getDefinitionByName;

    import org.flexunit.Assert;

    public class ClassTest {

        [Test]
        public function dynamicClassNameInstanciation():void {
            var ClassReference:Class = Class(getDefinitionByName('ObjectTest'));
            Assert.assertTrue( new ClassReference() is ObjectTest );
        }
    }
}

