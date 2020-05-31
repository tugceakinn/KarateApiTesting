package javaFunctions;

import java.io.FileNotFoundException;
import java.io.UnsupportedEncodingException;
import java.io.PrintWriter;

public class JavaFunctions {

    public void functionPrint(){
        System.out.println("Karate ile API Testing !");
    }

    public String functionwithArgument(String arg){
        System.out.print(arg + " öğreniyorum");
         return arg;
    }

    public void writeData(String arg) throws FileNotFoundException, UnsupportedEncodingException {
        PrintWriter writer = new PrintWriter("text.txt", "UTF-8");
        writer.println(arg);
        writer.close();
    }
}
