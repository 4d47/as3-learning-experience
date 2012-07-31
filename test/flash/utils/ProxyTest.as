package flash.utils {
    import org.flexunit.Assert;

    public class ProxyTest {
        [Test]
	public function ninetyNine():void {
            var ninetyNine:NinetyNine = new NinetyNine();
	    Assert.assertEquals(99, ninetyNine.something);
	    Assert.assertEquals(99, ninetyNine.bar);
	    Assert.assertEquals(99, ninetyNine.ANYTHING);
	    Assert.assertEquals(99, ninetyNine.something());
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
