package defpackage;

import defpackage.e37;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class x27 {
    public static final x27 k = new x27();
    public m37 a;
    public Executor b;
    public String c;
    public w27 d;
    public String e;
    public Object[][] f;
    public List<e37.a> g;
    public Boolean h;
    public Integer i;
    public Integer j;

    public static final class a<T> {
        public final String a;

        public a(String str, T t) {
            this.a = str;
        }

        public static <T> a<T> a(String str) {
            c50.A(str, "debugString");
            return new a<>(str, null);
        }

        public String toString() {
            return this.a;
        }
    }

    public x27() {
        this.f = (Object[][]) Array.newInstance((Class<?>) Object.class, 0, 2);
        this.g = Collections.emptyList();
    }

    public <T> T a(a<T> aVar) {
        c50.A(aVar, "key");
        int i = 0;
        while (true) {
            Object[][] objArr = this.f;
            if (i >= objArr.length) {
                return null;
            }
            if (aVar.equals(objArr[i][0])) {
                return (T) this.f[i][1];
            }
            i++;
        }
    }

    public boolean b() {
        return Boolean.TRUE.equals(this.h);
    }

    public x27 c(int i) {
        c50.m(i >= 0, "invalid maxsize %s", i);
        x27 x27Var = new x27(this);
        x27Var.i = Integer.valueOf(i);
        return x27Var;
    }

    public x27 d(int i) {
        c50.m(i >= 0, "invalid maxsize %s", i);
        x27 x27Var = new x27(this);
        x27Var.j = Integer.valueOf(i);
        return x27Var;
    }

    public <T> x27 e(a<T> aVar, T t) {
        c50.A(aVar, "key");
        c50.A(t, "value");
        x27 x27Var = new x27(this);
        int i = 0;
        while (true) {
            Object[][] objArr = this.f;
            if (i >= objArr.length) {
                i = -1;
                break;
            }
            if (aVar.equals(objArr[i][0])) {
                break;
            }
            i++;
        }
        Object[][] objArr2 = (Object[][]) Array.newInstance((Class<?>) Object.class, this.f.length + (i == -1 ? 1 : 0), 2);
        x27Var.f = objArr2;
        Object[][] objArr3 = this.f;
        System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
        if (i == -1) {
            x27Var.f[this.f.length] = new Object[]{aVar, t};
        } else {
            x27Var.f[i] = new Object[]{aVar, t};
        }
        return x27Var;
    }

    public x27 f(e37.a aVar) {
        x27 x27Var = new x27(this);
        ArrayList arrayList = new ArrayList(this.g.size() + 1);
        arrayList.addAll(this.g);
        arrayList.add(aVar);
        x27Var.g = Collections.unmodifiableList(arrayList);
        return x27Var;
    }

    public String toString() {
        nd5 nd5VarK0 = c50.K0(this);
        nd5VarK0.d("deadline", this.a);
        nd5VarK0.d("authority", this.c);
        nd5VarK0.d("callCredentials", this.d);
        Executor executor = this.b;
        nd5VarK0.d("executor", executor != null ? executor.getClass() : null);
        nd5VarK0.d("compressorName", this.e);
        nd5VarK0.d("customOptions", Arrays.deepToString(this.f));
        nd5VarK0.c("waitForReady", b());
        nd5VarK0.d("maxInboundMessageSize", this.i);
        nd5VarK0.d("maxOutboundMessageSize", this.j);
        nd5VarK0.d("streamTracerFactories", this.g);
        return nd5VarK0.toString();
    }

    public x27(x27 x27Var) {
        this.f = (Object[][]) Array.newInstance((Class<?>) Object.class, 0, 2);
        this.g = Collections.emptyList();
        this.a = x27Var.a;
        this.c = x27Var.c;
        this.d = x27Var.d;
        this.b = x27Var.b;
        this.e = x27Var.e;
        this.f = x27Var.f;
        this.h = x27Var.h;
        this.i = x27Var.i;
        this.j = x27Var.j;
        this.g = x27Var.g;
    }
}
