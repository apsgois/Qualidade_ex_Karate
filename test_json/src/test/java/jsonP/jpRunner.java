package jsonP;

import com.intuit.karate.junit5.Karate;

public class jpRunner {
    @Karate.Test
    Karate testJP(){ return Karate.run("jp").relativeTo(getClass());}

}
