package defpackage;

import android.util.Base64;
import defpackage.wr;

/* loaded from: classes.dex */
public abstract class ds {

    public static abstract class a {
        public abstract ds a();

        public abstract a b(String str);

        public abstract a c(wq wqVar);
    }

    public static a a() {
        wr.b bVar = new wr.b();
        bVar.c(wq.DEFAULT);
        return bVar;
    }

    public abstract String b();

    public abstract byte[] c();

    public abstract wq d();

    public final String toString() {
        Object[] objArr = new Object[3];
        objArr[0] = b();
        objArr[1] = d();
        objArr[2] = c() == null ? "" : Base64.encodeToString(c(), 2);
        return String.format("TransportContext(%s, %s, %s)", objArr);
    }
}
