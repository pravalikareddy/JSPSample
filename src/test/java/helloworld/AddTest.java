package helloworld;

import static org.junit.Assert.*;

import org.junit.Test;

public class AddTest {

	@Test
	public void test() {
		Add oadd = new Add();
		int result = oadd.Add2Numbers(3,3);
		assertEquals(result,6);
	}

}
