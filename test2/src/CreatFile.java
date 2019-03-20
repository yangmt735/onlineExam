import java.io.BufferedWriter;
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
	final String FILE_NAME="result.txt";
	final String STUDENT_NO = "2017013406";
	final String NEW_LINE = "\r\n";
	public void writeExpressionsToFile(List<String> expressionList) throws IOException {
        File file = new File(FILE_NAME);
        if (file.exists()) { //如果文件已存在，则删除文件
            file.delete();
        }
        FileWriter fw = new FileWriter(file);// 将字符串写入文件
        try (BufferedWriter bw = new BufferedWriter(fw);) {
            bw.append(STUDENT_NO);
            for (String expression : expressionList) {
                bw.append(NEW_LINE);
                bw.append(expression);
            }
            bw.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
