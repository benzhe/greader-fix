package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class iu5 extends vt5<iu5> {
    public static final iu5 f = new iu5(Collections.emptyList());

    public iu5(List<String> list) {
        super(list);
    }

    public static iu5 M(List<String> list) {
        return list.isEmpty() ? f : new iu5(list);
    }

    public static iu5 N(String str) {
        if (str.contains("//")) {
            throw new IllegalArgumentException(jo.o("Invalid path (", str, "). Paths must not contain // in them."));
        }
        String[] strArrSplit = str.split("/");
        ArrayList arrayList = new ArrayList(strArrSplit.length);
        for (String str2 : strArrSplit) {
            if (!str2.isEmpty()) {
                arrayList.add(str2);
            }
        }
        return new iu5(arrayList);
    }

    @Override // defpackage.vt5
    public String l() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.e.size(); i++) {
            if (i > 0) {
                sb.append("/");
            }
            sb.append(this.e.get(i));
        }
        return sb.toString();
    }

    @Override // defpackage.vt5
    public vt5 w(List list) {
        return new iu5(list);
    }
}
