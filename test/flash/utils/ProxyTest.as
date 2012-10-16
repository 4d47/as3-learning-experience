package flash.utils {
    import org.flexunit.asserts.*;

    public class ProxyTest {
        [Test]
	public function ninetyNine():void {
            var ninetyNine:NinetyNine = new NinetyNine();
	    assertEquals(99, ninetyNine.something);
	    assertEquals(99, ninetyNine.bar);
	    assertEquals(99, ninetyNine.ANYTHING);
	    assertEquals(99, ninetyNine.something());
	}
    }
}

import flash.utils.Proxy;
import flash.utils.flash_proxy;

dynamic class NinetyNine extends Proxy {
    override flash_proxy function getProperty(name:*):* {
        return 99;
    }

    override flash_proxy function callProperty(name:*, ...rest):* {
        return 99;
    }
}
