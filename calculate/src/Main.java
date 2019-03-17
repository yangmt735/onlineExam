

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
 * 2.加括号
 * 
 * 使用穷举随机生成题目，会造成大量的栈内存使用，当生成的问题比较多时有可能失败，
 * 可以考虑根据规则反向拼接生成
 */
public class Main {

    private static ScriptEngine scriptEngine = new ScriptEngineManager().getEngineByName("JavaScript");
    /**
     * 定义需要用到的常量
     */
    private static final char PLUS = '+';
    private static final char MINUS = '-';
    private static final char MULTIPLY = '*';
    private static final char DIVIDE = '/';
    private static final char DISPLAY_DIVIDE = '÷';
    private static final char EQUALS = '=';
    private static final String DOT = ".";
    private static final String DOT_REGEX = "\\.";
    /**
     * 运算符及输入的限制
     */
    private static final char[] operators = {PLUS, MINUS, MULTIPLY, DIVIDE};
    private static final Integer MIN_OPERATOR_COUNT = 3;
    private static final Integer MAX_OPERATOR_COUNT = 5;
    private static final Integer MIN_CAL_VALUE = 0;
    private static final Integer MAX_CAL_VALUE = 100;
    /**
     * 文件中的常量
     */
    private static final String FILE_NAME = "result.txt";
    private static final String STUDENT_NO = "2017013406";
    private static final String NEW_LINE = "\r\n";

    private static Random random = new Random();

    /**
     * 主方法
    */
    public static void main(String[] args) throws ScriptException {
        System.out.println("请输入要生成的练习题数量：");
        Scanner scanner = new Scanner(System.in);

        Integer expressionCount = scanner.nextInt();

        List<String> expressionList = new ArrayList<>();
        for (int j = 0; j < expressionCount; j++) {
			int key = (int) (Math.random() * 3);
			switch (key) {
			case 1:// 简单的四则运算
				for (int i = 0; i < expressionCount; i++) {
		            expressionList.add(getNextExpression());
		            //System.out.println(String.format("正在生成第 %s 道题", i));
		        }
				break;
			default:// 真分数的加减运算
				ProperFraction properFraction=new ProperFraction();
				for (int i = 0; i < expressionCount; i++) {
		            expressionList.add(properFraction.createProblem());
		            //System.out.println(String.format("正在生成第 %s 道题", i));
		        }
				break;
			}
		}
        /*for (int i = 0; i < expressionCount; i++) {
            expressionList.add(getNextExpression());
            //System.out.println(String.format("正在生成第 %s 道题", i));
        }*/

        writeExpressionsToFile(expressionList);
        System.out.println("生成练习题完成");
    }

    /**
     * 将练习题输出到文件
     *
     * @param expressionList
     */
    private static void writeExpressionsToFile(List<String> expressionList) {
        File file = new File(FILE_NAME);
        if (file.exists()) { //如果文件已存在，则删除文件
            file.delete();
        }
        try (FileWriter fileWriter = new FileWriter(file)) {
            fileWriter.append(STUDENT_NO);
            for (String expression : expressionList) {
                fileWriter.append(NEW_LINE);
                fileWriter.append(expression);
            }
            fileWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * 生成练习题
     *
     * @return
     * @throws ScriptException
     */
    private static String getNextExpression() throws ScriptException {
        //System.out.println("尝试生成下一道题");

        // 运算符数量
        int operatorCount = random.nextInt(MAX_OPERATOR_COUNT + 1 - MIN_OPERATOR_COUNT) + MIN_OPERATOR_COUNT;

        StringBuilder expression = new StringBuilder();

        // 运算符
        List<Character> operatorList = getOperatorList(operatorCount);

        // 运算数
        List<Integer> calValueList = getCalValueList(operatorCount + 1);

        for (int i = 0; i < operatorList.size(); i++) {
            Character operator = operatorList.get(i);// 运算符

            Integer previousCalValue = calValueList.get(i);// 运算数
            Integer nextCalValue = calValueList.get(i + 1);
            expression.append(previousCalValue);

            // 除法校验除数不为0且能被整除
            if (DIVIDE == operator) {
                calValueList.set(i + 1, getDivideCalValue(previousCalValue, nextCalValue));
            } 
            else if (MINUS == operator) {
                // 减法校验被减数大于减数
                // 当包含小数点时向下取整
                String currentResultString = scriptEngine.eval(expression.toString()).toString();//eval是Javascript内置函数，用于计算字符串表达式的值
                if (currentResultString.contains(DOT)) {
                    currentResultString = currentResultString.split(DOT_REGEX)[0];
                }
                Integer currentResult = Integer.valueOf(currentResultString);
                while (currentResult < nextCalValue) {
                    nextCalValue = random.nextInt(MAX_CAL_VALUE + 1);
                }
                calValueList.set(i + 1, nextCalValue);
            }

            expression.append(operator);
        }

        expression.append(calValueList.get(operatorCount));

        // 计算当前结果是否为正整数
        String result = scriptEngine.eval(expression.toString()).toString();

        if (result.contains(DOT) || Integer.valueOf(result) < 0) {
            //System.out.println("当前题目不符合要求");
            return getNextExpression();
        }

        String currentExpression = expression.append(EQUALS).append(result)
                .toString()
                .replaceAll(String.valueOf(DIVIDE), String.valueOf(DISPLAY_DIVIDE));
        return currentExpression;
    }

    /**
     * 获取运算符
     *
     * @param operatorCount
     * @return
     */
    private static List<Character> getOperatorList(int operatorCount) {
        List<Character> operatorList = new ArrayList<>();
        for (int i = 0; i < operatorCount; i++) {
            Character operator = operators[random.nextInt(operators.length)];
            operatorList.add(operator);
        }
        return operatorList;
    }

    /**
     * 获取运算数
     *
     * @param calValueCount
     * @return
     */
    private static List<Integer> getCalValueList(int calValueCount) {
        List<Integer> calValueList = new ArrayList<>();
        for (int i = 0; i < calValueCount; i++) {
            calValueList.add(random.nextInt(MAX_CAL_VALUE + 1));
        }
        return calValueList;
    }

    /**
     * 当为除法时校验除数不为0且能被整除
     *
     * @param previousCalValue
     * @param nextCalValue
     * @return
     */
    private static int getDivideCalValue(Integer previousCalValue, Integer nextCalValue) {
        if (nextCalValue == 0 || previousCalValue % nextCalValue != 0) {
            nextCalValue = random.nextInt(MAX_CAL_VALUE) + 1;
            return getDivideCalValue(previousCalValue, nextCalValue);
        }
        return nextCalValue;
    }
   
}