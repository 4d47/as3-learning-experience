package {
    import org.flexunit.Assert;

    public class TypeConversionsTest {

        [Test]
        public function failWithAsKeyword():void {
            Assert.assertNull( 42 as TypeConversionsTest );
        }

        [Test(expects="TypeError")]
        public function failWithExplicitConversion():void {
            TypeConversionsTest(42);
        }
            
    }
}
