package lang {
    import org.flexunit.asserts.*;

    public class VarKeywordTest {

        [Test]
        public function scopeIsTheFunctionNotTheBlock():void {
            var success:Boolean = true;
            if (success) {
                var data:String = 'hello';
            }
            assertStrictlyEquals('hello', data);
        }

        [Test]
        public function canReferencePreviousDefinitionInMultipleDeclaration():void {
            var a:String = 'a', b:String = a;
            assertStrictlyEquals('a', b);
        }
    }
}
