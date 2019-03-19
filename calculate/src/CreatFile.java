import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;
/**
 * 将练习题输出到文件
 *
 * @param expressionList
 */
public class CreatFile {
	/**
     * 文件中的常量
     */
	private static final String FILE_NAME="result.txt";
	private static final String STUDENT_NO = "2017013406";
	private static final String NEW_LINE = "\r\n";
	public static void writeExpressionsToFile(List<String> expressionList) {
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
}
