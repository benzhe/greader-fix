package defpackage;

import java.io.IOException;

/* loaded from: classes.dex */
public class tj6<K, V> {
    public final a<K, V> a;
    public final K b;
    public final V c;

    public static class a<K, V> {
        public final fl6 a;
        public final K b;
        public final fl6 c;
        public final V d;

        public a(fl6 fl6Var, K k, fl6 fl6Var2, V v) {
            this.a = fl6Var;
            this.b = k;
            this.c = fl6Var2;
            this.d = v;
        }
    }

    public tj6(fl6 fl6Var, K k, fl6 fl6Var2, V v) {
        this.a = new a<>(fl6Var, k, fl6Var2, v);
        this.b = k;
        this.c = v;
    }

    public static <K, V> int a(a<K, V> aVar, K k, V v) {
        return cj6.c(aVar.c, 2, v) + cj6.c(aVar.a, 1, k);
    }

    public static <K, V> void b(ti6 ti6Var, a<K, V> aVar, K k, V v) throws IOException {
        cj6.p(ti6Var, aVar.a, 1, k);
        cj6.p(ti6Var, aVar.c, 2, v);
    }
}
