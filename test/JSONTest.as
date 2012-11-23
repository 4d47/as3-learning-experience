package {
    import org.flexunit.asserts.*;

    public class JSONTest {

        [Test(expects="SyntaxError")]
        public function invalidParseInput():void {
            JSON.parse("");
        }

    }
}
