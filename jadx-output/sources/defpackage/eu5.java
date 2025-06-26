package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class eu5 extends vt5<eu5> {
    public static final eu5 f = new eu5(Collections.singletonList("__name__"));
    public static final eu5 g = new eu5(Collections.emptyList());

    public eu5(List<String> list) {
        super(list);
    }

    public static eu5 M(String str) {
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        int i = 0;
        boolean z = false;
        while (i < str.length()) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '\\') {
                i++;
                if (i == str.length()) {
                    throw new IllegalArgumentException("Trailing escape character is not allowed");
                }
                sb.append(str.charAt(i));
            } else if (cCharAt == '.') {
                if (z) {
                    sb.append(cCharAt);
                } else {
                    String string = sb.toString();
                    if (string.isEmpty()) {
                        throw new IllegalArgumentException(jo.o("Invalid field path (", str, "). Paths must not be empty, begin with '.', end with '.', or contain '..'"));
                    }
                    StringBuilder sb2 = new StringBuilder();
                    arrayList.add(string);
                    sb = sb2;
                }
            } else if (cCharAt == '`') {
                z = !z;
            } else {
                sb.append(cCharAt);
            }
            i++;
        }
        String string2 = sb.toString();
        if (string2.isEmpty()) {
            throw new IllegalArgumentException(jo.o("Invalid field path (", str, "). Paths must not be empty, begin with '.', end with '.', or contain '..'"));
        }
        arrayList.add(string2);
        return new eu5(arrayList);
    }

    public boolean N() {
        return equals(f);
    }

    @Override // defpackage.vt5
    public String l() {
        char cCharAt;
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.e.size(); i++) {
            if (i > 0) {
                sb.append(".");
            }
            String strReplace = this.e.get(i).replace("\\", "\\\\").replace("`", "\\`");
            boolean z = true;
            if (strReplace.isEmpty() || ((cCharAt = strReplace.charAt(0)) != '_' && ((cCharAt < 'a' || cCharAt > 'z') && (cCharAt < 'A' || cCharAt > 'Z')))) {
                z = false;
                break;
            }
            for (int i2 = 1; i2 < strReplace.length(); i2++) {
                char cCharAt2 = strReplace.charAt(i2);
                if (cCharAt2 != '_' && ((cCharAt2 < 'a' || cCharAt2 > 'z') && ((cCharAt2 < 'A' || cCharAt2 > 'Z') && (cCharAt2 < '0' || cCharAt2 > '9')))) {
                    z = false;
                    break;
                }
            }
            if (!z) {
                strReplace = '`' + strReplace + '`';
            }
            sb.append(strReplace);
        }
        return sb.toString();
    }

    @Override // defpackage.vt5
    public vt5 w(List list) {
        return new eu5(list);
    }
}
