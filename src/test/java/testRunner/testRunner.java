package testRunner;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;
import org.junit.runner.RunWith;
@RunWith(Karate.class)
@KarateOptions(features = "src/test/java/",
              // tags ={"@tag7,@get"}
                  tags = "tag13"
)
public class testRunner {



}



