import java.util.*;

class Solution {
    public String solution(String my_string, int[] indices) {
        String answer = "";
        HashMap<Integer,Character> map = new HashMap<>();


        for(int i=0;i<my_string.length();i++){
            map.put(i,my_string.charAt(i));
        }
        for(int i=0;i<indices.length;i++){
            map.remove(indices[i]);
        }
        for(char ch:map.values()){
            answer+=ch;
        }
        System.out.println(answer);
        return answer;
    }
}