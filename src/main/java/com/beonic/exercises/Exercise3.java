package com.beonic.exercises;


/* Please review this class highlighting any style issues, potential bugs, or other
 * improvements.
 */

import java.util.List;

public class Exercise3 {

    public String util(List<String> input) {
        String r = "";
        int i = 0;
        do {
            if (r.length() < input.get(i).length())
        { r = input.get(i); }
        } while (i++ <= input.size());

        return r;
    }

    /**
     * Returns the first letter of each string. For example, if the input is
     * ["John", "Doe", "smith"], the output should be "J. D. S.".
     * @param input the inpuot
     * @return the output
     */
    public String getInitials(List<String> input) {
        String s = "";

        for (String s2 : input) {
            s += input.get(0).toUpperCase();
            s += ". ";
        }

        return s;
    }

}
