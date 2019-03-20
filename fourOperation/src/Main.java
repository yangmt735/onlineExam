import java.util.Scanner;
import java.io.PrintStream;
import java.util.Stack;

public class Main {
    String[] symbols1 = { "+", "-", "*", "÷" };
    String[] symbols2 = { "+", "*" };
    int flag = 0;
    int er=0;
    int res=0;

   
    public String Sentence1() {
        int x = (int) (Math.random() * 100);
        int y = (int) (Math.random() * 100);
        int z = (int) (Math.random() * 4);
        
        if (z == 1) {
            if (x < y) {
                int temp = x;
                x = y;
                y = temp;
            }
        }
        
        if (z == 3) {
            y = (int) (Math.random() * 20) + 1;
            x = (int) (Math.random() * 6) * y;
        }
        
        String a = x + symbols1[z] + y;
        if (symbols1[z].equals("-") || symbols1[z].equals("+")) {
            flag = 1;
        }
        return a;
    }

    
    public String Sentence2(int b) {
        String sentence = "";
        for (int i = 0; i < b; i++) {
            if (i < b - 1) {
                String con = symbols2[(int) (Math.random() * 2)];

                sentence += Sentence1() + con;

            } else {
                sentence += Sentence1();
            }
            flag = 0;
        }
        return sentence;
    }

    
    public void Sentence3() {
        Stack<String> num = new Stack<String>();
        Stack<Character> operate = new Stack<Character>();
        int q = (int) (Math.random() * 2) + 2;
        String sentence = Sentence2(q);
        int l = sentence.length();
        int t = 0;
        int rt = 0;
        for (int m = -1; m < l - 1; m++) {
            if (sentence.charAt(m + 1) == '+' || sentence.charAt(m + 1) == '-' || sentence.charAt(m + 1) == '*'
                    || sentence.charAt(m + 1) == '÷'
                    || m == l - 2) {
                if (m == -1) {
                    operate.push(sentence.charAt(0));
                } else if (m == l - 2) {
                    num.push(sentence.substring(t));
                    break;
                } else {
                    if (t <= m) {
                        num.push(sentence.substring(t, m + 1));
                    }
                    if (operate.empty() ) {
                        operate.push(sentence.charAt(m + 1));
                    } else if ((operate.peek() == '+' || operate.peek() == '-')
                            && (sentence.charAt(m + 1) == '*' || sentence.charAt(m + 1) == '÷')) {
                        operate.push(sentence.charAt(m + 1));
                    }
                    else {
                        if(operate.peek()==sentence.charAt(m + 1)){
                            rt++;
                        }
                        num.push(String.valueOf(operate.pop()));
                        operate.push(sentence.charAt(m + 1));
                    }
                }
                t = m + 2;
            }
        }
        if(rt==q+2){
            er=1;
    }
        while (!operate.empty()) {
            num.push(String.valueOf(operate.pop()));
        }
        String[] result = new String[20];
        int g = 0;
        while (!num.empty()) {
            result[g] = num.pop();
            g++;
        }

        
        for (g = g - 1; g >= 0; g--) {
            if (!result[g].equals("+") && !result[g].equals("-") && !result[g].equals("*")
                    && !result[g].equals("÷")) {
                num.push(result[g]);
            } else {
                int x = 0;
                int y = 0;
                if (!num.empty()) {
                    y = Integer.parseInt(num.pop());
                }
                if (!num.empty()) {
                    x = Integer.parseInt(num.pop());
                }
                if (result[g].equals("+")) {
                    int c = x + y;
                    num.push(String.valueOf(c));
                } else if (result[g].equals("-")) {
                    int c = x - y;
                    num.push(String.valueOf(c));
                } else if (result[g].equals("*")) {
                    int c = x * y;
                    num.push(String.valueOf(c));
                } else {
                    int c = x / y;
                    num.push(String.valueOf(c));
                }
            }
        }
        if(Integer.parseInt(num.peek())<0){
            res=1;
        }
        System.out.println(sentence + " = " + num.pop());
    }

    public void Sentence(int n) {
        for (int i = 0; i < n; i++) {
            Sentence3();
            if(er==1||res==1){
                i--;
                er=0;
                res=0;
            }

        }
    }
    public static void main(String[] args) {
        int n=0;
        Scanner d = new Scanner(System.in);
        n=d.nextInt();
        try {
                PrintStream o = new PrintStream("result.txt");
            System.setOut(o);
            System.out.println("2017013172");
            if(n>0&&n<=1000){
                Main g = new Main();
                g.Sentence(n);
            }
        } catch (Exception e) {
            System.out.println("��Ϣ����");
        }
    }
}

