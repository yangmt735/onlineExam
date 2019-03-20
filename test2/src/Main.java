

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.Scanner;

/**
 * 生成100以内四则运算
 * 
 * 要求：
 * 1. 0-100之间的四则运算
 * 2. 3-5个运算符
 * 3. 运算过程中不允许出现负数和分数
 * 4. 系统输入生成的题数量
 * 5. 输出到 result.txt 文件中，文件目录为当前classpath
 * 6. 文件首行输出学号
 * 扩展：
 * 1.真分数的运算
 * 2.加括号（未完成）
 * 
 * 使用穷举随机生成题目，会造成大量的栈内存使用，当生成的问题比较多时有可能失败，
 * 可以考虑根据规则反向拼接生成
 */
public class Main {

    /**
     * 主方法
     * @throws IOException 
     */
    public static void main(String[] args) throws Exception {
        //System.out.println("请输入要生成的练习题数量：");
    	List<String> expressionList = new ArrayList<>();
        try {
           Scanner scanner = new Scanner(System.in);
           Integer expressionCount; //接收命令行参数
		if (Integer.valueOf(Integer.parseInt(args[0]))!=null)
			expressionCount = Integer.parseInt(args[0]);
		else
			expressionCount = scanner.nextInt();
           if(expressionCount>1000||expressionCount<1){
               System.out.println("对不起，只允许输入1-1000的数字！");
               return; //结束运行
           }

           for (int j = 0; j < 2; j++) {
   			int key = (int) (Math.random() * 2);
   			switch (key) {
   			case 1:// 简单的四则运算
   				int i;
   				Arithmatic a=new Arithmatic();
   				for (i = 0; i < expressionCount/2; i++) {
   		            expressionList.add(a.getNextExpression());
   		            
   		        }
   				break;
   			default:// 真分数的加减运算
   				ProperFraction properFraction=new ProperFraction();
   				for ( i = 0; i < expressionCount/2; i++) {
   		            expressionList.add(properFraction.createProblem());
   		            
   		        }
   				break;
   			}
   		}
       }catch (Exception e){ //输入非数字字符等
           System.out.println("对不起，只允许输入1-1000的数字！");
           return; //结束运行
       }
        CreatFile file=new CreatFile();
        file.writeExpressionsToFile(expressionList);
        System.out.println("生成练习题完成");
    }
}