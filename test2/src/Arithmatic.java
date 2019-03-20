import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;

public class Arithmatic {
	private static ScriptEngine scriptEngine = new ScriptEngineManager().getEngineByName("JavaScript");
    /**
     * 定义需要用到的常量
     */
    final char PLUS = '+';
    final char MINUS = '-';
    final char MULTIPLY = '*';
    final char DIVIDE = '/';
    final char DISPLAY_DIVIDE = '÷';
    final char EQUALS = '=';
    final String DOT = ".";
    final String DOT_REGEX = "\\.";
    /**
     * 运算符及输入的限制
     */
    final char[] operators = {PLUS, MINUS, MULTIPLY, DIVIDE};
    final Integer MIN_OPERATOR_COUNT = 3;
    final Integer MAX_OPERATOR_COUNT = 5;
    final Integer MIN_CAL_VALUE = 0;
    final Integer MAX_CAL_VALUE = 100;
    
    Random random = new Random();
	/**
     * 生成练习题
     *
     * @return
     * @throws ScriptException
     */
    public String getNextExpression() throws ScriptException {
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
    public List<Character> getOperatorList(int operatorCount) {
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
    public List<Integer> getCalValueList(int calValueCount) {
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
    public int getDivideCalValue(Integer previousCalValue, Integer nextCalValue) {
        if (nextCalValue == 0 || previousCalValue % nextCalValue != 0) {
            nextCalValue = random.nextInt(MAX_CAL_VALUE) + 1;
            return getDivideCalValue(previousCalValue, nextCalValue);
        }
        return nextCalValue;
    }
   
}
