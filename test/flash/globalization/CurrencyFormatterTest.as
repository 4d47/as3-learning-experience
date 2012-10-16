package flash.globalization {
    import org.flexunit.asserts.*;

    public class CurrencyFormatterTest {
        [Test]
        public function format():void {
            assertEquals("$10.00", new CurrencyFormatter('en-US').format(10, true));
            assertEquals("10,00 $", new CurrencyFormatter('fr-CA').format(10, true));
        }
    }
}
