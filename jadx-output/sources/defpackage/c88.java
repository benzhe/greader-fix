package defpackage;

import java.util.ArrayList;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class c88 {
    public static final b[] a;
    public static volatile b[] b;
    public static final b c;

    public static class a extends b {
        @Override // c88.b
        public void a(String str, Object... objArr) {
            for (b bVar : c88.b) {
                bVar.a(str, objArr);
            }
        }
    }

    public static abstract class b {
        public b() {
            new ThreadLocal();
        }

        public abstract void a(String str, Object... objArr);
    }

    static {
        b[] bVarArr = new b[0];
        a = bVarArr;
        new ArrayList();
        b = bVarArr;
        c = new a();
    }

    public static void a(String str, Object... objArr) {
        Objects.requireNonNull((a) c);
        for (b bVar : b) {
            bVar.a(str, objArr);
        }
    }
}
