package defpackage;

import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes2.dex */
public final class y37 {
    public static final AtomicLong d = new AtomicLong();
    public final String a;
    public final String b;
    public final long c;

    public y37(String str, String str2, long j) {
        c50.A(str, "typeName");
        c50.t(!str.isEmpty(), "empty type");
        this.a = str;
        this.b = str2;
        this.c = j;
    }

    public static y37 a(Class<?> cls, String str) {
        c50.A(cls, NSRSS20.ENC_TYPE);
        String simpleName = cls.getSimpleName();
        if (simpleName.isEmpty()) {
            simpleName = cls.getName().substring(cls.getPackage().getName().length() + 1);
        }
        return b(simpleName, str);
    }

    public static y37 b(String str, String str2) {
        return new y37(str, str2, d.incrementAndGet());
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.a + "<" + this.c + ">");
        if (this.b != null) {
            sb.append(": (");
            sb.append(this.b);
            sb.append(')');
        }
        return sb.toString();
    }
}
