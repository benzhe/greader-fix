package defpackage;

import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes.dex */
public final class nd5 {
    public final String a;
    public final a b;
    public a c;
    public boolean d;

    public static final class a {
        public String a;
        public Object b;
        public a c;

        public a(md5 md5Var) {
        }
    }

    public nd5(String str, md5 md5Var) {
        a aVar = new a(null);
        this.b = aVar;
        this.c = aVar;
        this.d = false;
        this.a = str;
    }

    public nd5 a(String str, int i) {
        d(str, String.valueOf(i));
        return this;
    }

    public nd5 b(String str, long j) {
        d(str, String.valueOf(j));
        return this;
    }

    public nd5 c(String str, boolean z) {
        d(str, String.valueOf(z));
        return this;
    }

    public final nd5 d(String str, Object obj) {
        a aVar = new a(null);
        this.c.c = aVar;
        this.c = aVar;
        aVar.b = obj;
        Objects.requireNonNull(str);
        aVar.a = str;
        return this;
    }

    public String toString() {
        boolean z = this.d;
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.a);
        sb.append('{');
        String str = "";
        for (a aVar = this.b.c; aVar != null; aVar = aVar.c) {
            Object obj = aVar.b;
            if (!z || obj != null) {
                sb.append(str);
                String str2 = aVar.a;
                if (str2 != null) {
                    sb.append(str2);
                    sb.append('=');
                }
                if (obj == null || !obj.getClass().isArray()) {
                    sb.append(obj);
                } else {
                    String strDeepToString = Arrays.deepToString(new Object[]{obj});
                    sb.append((CharSequence) strDeepToString, 1, strDeepToString.length() - 1);
                }
                str = ", ";
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
