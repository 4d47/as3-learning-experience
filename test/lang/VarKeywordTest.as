package lang {
    import org.flexunit.Assert;

    public class VarKeywordTest {

        [Test]
        public function scopeIsTheFunctionNotTheBlock():void {
            var success:Boolean = true;
            if (success) {
                var data:String = 'hello';
            }
            Assert.assertStrictlyEquals('hello', data);
        }

        [Test]
        public function canReferencePreviousDefinitionInMultipleDeclaration():void {
            var a:String = 'a', b:String = a;
            Assert.assertStrictlyEquals('a', b);
        }
    }
}
