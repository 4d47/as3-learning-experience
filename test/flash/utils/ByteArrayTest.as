package flash.utils {
import org.flexunit.asserts.*;
import flash.net.ObjectEncoding;

public class ByteArrayTest {
        private var byteArray:ByteArray;

        [Before]
        public function setUp():void {
            byteArray = new ByteArray();
        }

        [Test]
        public function defaultProperties():void {
            assertEquals(0, byteArray.bytesAvailable);
            assertEquals(0, byteArray.length);
            assertEquals(0, byteArray.position);
            assertNotNull(byteArray.endian);
            assertEquals(ObjectEncoding.AMF3, byteArray.objectEncoding);
        }

        [Test]
        public function writeBoolean():void {
            assertEquals(0, byteArray.position);
            byteArray.writeBoolean(true);
            assertEquals(1, byteArray.length);
            assertEquals(1, byteArray.position);
        }

        [Test]
        public function toString():void {
            byteArray.writeByte(65);
            byteArray.writeByte(65);
            byteArray.writeByte(65);
            assertEquals("AAA", byteArray.toString());
        }
    }
}
