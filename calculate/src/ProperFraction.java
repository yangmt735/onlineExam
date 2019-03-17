import java.util.Random;

/**
 * Created by wangh on 2018/3/23.
 */
public class ProperFraction {  //产生真分数式子
    public String createProblem(){
        Random random = new Random();
        String[] operator = {"+","-"};
        int operatorCount = 3+random.nextInt(3); //操作符的个数3-5

        int[] index =index(operatorCount,2); //操作符的下标

        int sumx = 1+random.nextInt(10); //第一个数的分子1-10
        int sumy = 1+random.nextInt(10);//第一个数的分母1-10
        int greatFactor = gcd(sumx,sumy);
        sumx/=greatFactor; //化简
        sumy/=greatFactor;

        while (sumx>=sumy){
            sumx = 1+random.nextInt(10);
            sumy = 1+random.nextInt(10);
            greatFactor = gcd(sumx,sumy);
            sumx/=greatFactor;
            sumy/=greatFactor;
        }

        String s=sumx+"/"+sumy; //第一个数

        for(int i=0;i<operatorCount;i++){
            int numx = random.nextInt(25); //分子分母不宜过大
            int numy = 1+random.nextInt(25); //否则通分可能会产生很大的数导致溢出
            String currentOpreator = operator[index[i]];
            while (numx>=numy){ //当分子大于分母，即假分数，则重新生成
                numx = random.nextInt(25);
                numy = 1+random.nextInt(25);
                greatFactor = gcd(numx,numy);
                numx/=greatFactor;
                numy/=greatFactor;
            }
            if(currentOpreator.equals("+")){  //加法
                while(sumx*numy+sumy*numx>sumy*numy) //和为假分数
                {
                    numx=random.nextInt(25);
                    numy=1+random.nextInt(25);
                    greatFactor=gcd(numx,numy);
                    numx/=greatFactor;
                    numy/=greatFactor;
                }
                sumx=sumx*numy+sumy*numx;
                sumy=sumy*numy;
            }
            else {   //减法
                while(sumx*numy-sumy*numx<0) //差为负数
                {
                    numx=random.nextInt(25);
                    numy=1+random.nextInt(25);
                    greatFactor=gcd(numx,numy);
                    numx/=greatFactor;
                    numy/=greatFactor;
                }
                sumx=sumx*numy-sumy*numx;
                sumy=sumy*numy;
            }
            s+=currentOpreator+numx+"/"+numy;
        }

        greatFactor = gcd(sumx,sumy);
        sumx/=greatFactor; //最终结果化简
        sumy/=greatFactor;

        if(sumx==0) s+="="+sumx;
        else if(sumx==1&&sumy==1) s+="="+sumx;
        else s+="="+sumx+"/"+sumy;

        return s;

    }

    /**
     * 求最大公因数
     *
     * @param previousCalValue
     * @param nextCalValue
     * 
     */
    public int gcd(int x,int y)//求最大公因数
    {
        while(true)
        {
            if(x%y==0)return y;
            int temp=y;
            y=x%y;
            x=temp;
        }
    }
    /**
     * 产生操作符的下标数组
     *
     * @param previousCalValue
     * @param nextCalValue
     * @return
     */
    public int[] index(int n,int m){ //产生操作符的下标数组
        Random random = new Random();
        int similar=0;
        int[] a = new int[n];
        for(int j=0;j<n;j++){
            a[j] = random.nextInt(m);
        }
        for(int j=1;j<n;j++){
            if(a[0]==a[j]) similar++;
        }
        if(similar==n-1) return index(n,m); //保证一个式子里至少有2个不同的操作符，若所有操作符下标都一样，则重新产生操作符下标
        else {
            return a;
        }

    }

}
