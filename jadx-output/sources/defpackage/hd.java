package defpackage;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class hd {
    public Map<String, Integer> a = new HashMap();

    public boolean a(String str, int i) {
        Integer num = this.a.get(str);
        int iIntValue = num != null ? num.intValue() : 0;
        boolean z = (iIntValue & i) != 0;
        this.a.put(str, Integer.valueOf(i | iIntValue));
        return !z;
    }
}
