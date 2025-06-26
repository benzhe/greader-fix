package defpackage;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public final class w00 {
    public final List<String> a;
    public final Object b;

    public w00(Object obj, w10 w10Var) {
        Objects.requireNonNull(obj, "null reference");
        this.b = obj;
        this.a = new ArrayList();
    }

    public final w00 a(String str, Object obj) {
        List<String> list = this.a;
        String strValueOf = String.valueOf(obj);
        StringBuilder sb = new StringBuilder(strValueOf.length() + str.length() + 1);
        sb.append(str);
        sb.append("=");
        sb.append(strValueOf);
        list.add(sb.toString());
        return this;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(100);
        sb.append(this.b.getClass().getSimpleName());
        sb.append('{');
        int size = this.a.size();
        for (int i = 0; i < size; i++) {
            sb.append(this.a.get(i));
            if (i < size - 1) {
                sb.append(", ");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
