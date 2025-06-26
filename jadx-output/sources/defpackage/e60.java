package defpackage;

/* loaded from: classes.dex */
public class e60<T> {
    public final String a;
    public final T b;
    public final int c;

    /* JADX WARN: Incorrect types in method signature: (Ljava/lang/String;TT;Ljava/lang/Integer;)V */
    /* JADX WARN: Multi-variable type inference failed */
    public e60(String str, Object obj, int i) {
        this.a = str;
        this.b = obj;
        this.c = i;
    }

    public static e60<Long> b(String str, long j) {
        return new e60<>(str, Long.valueOf(j), 2);
    }

    public static e60<Boolean> c(String str, boolean z) {
        return new e60<>(str, Boolean.valueOf(z), 1);
    }

    public static e60<String> d(String str, String str2) {
        return new e60<>(str, str2, 4);
    }

    public T a() {
        c70 c70Var = f70.a.get();
        if (c70Var == null) {
            throw new IllegalStateException("Flag is not initialized.");
        }
        int i = h60.a[this.c - 1];
        if (i == 1) {
            return (T) c70Var.b(this.a, ((Boolean) this.b).booleanValue());
        }
        if (i == 2) {
            return (T) c70Var.a(this.a, ((Long) this.b).longValue());
        }
        if (i == 3) {
            return (T) c70Var.d(this.a, ((Double) this.b).doubleValue());
        }
        if (i == 4) {
            return (T) c70Var.c(this.a, (String) this.b);
        }
        throw new IllegalStateException();
    }
}
