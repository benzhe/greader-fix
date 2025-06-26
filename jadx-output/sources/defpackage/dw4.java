package defpackage;

/* loaded from: classes.dex */
public final class dw4<V> {
    public static final Object g = new Object();
    public final String a;
    public final cw4<V> b;
    public final V c;
    public final V d;
    public final Object e = new Object();
    public volatile V f = null;

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ dw4(String str, Object obj, Object obj2, cw4 cw4Var) {
        this.a = str;
        this.c = obj;
        this.d = obj2;
        this.b = cw4Var;
    }

    public final V a(V v) {
        synchronized (this.e) {
        }
        if (v != null) {
            return v;
        }
        if (c50.b == null) {
            return this.c;
        }
        synchronized (g) {
            if (c35.a()) {
                return this.f == null ? this.c : this.f;
            }
            try {
                for (dw4<?> dw4Var : ew4.a) {
                    if (c35.a()) {
                        throw new IllegalStateException("Refreshing flag cache must be done on a worker thread.");
                    }
                    V v2 = null;
                    try {
                        cw4<?> cw4Var = dw4Var.b;
                        if (cw4Var != null) {
                            v2 = (V) cw4Var.a();
                        }
                    } catch (IllegalStateException unused) {
                    }
                    synchronized (g) {
                        dw4Var.f = v2;
                    }
                }
            } catch (SecurityException unused2) {
            }
            cw4<V> cw4Var2 = this.b;
            if (cw4Var2 == null) {
                return this.c;
            }
            try {
                return cw4Var2.a();
            } catch (IllegalStateException unused3) {
                return this.c;
            } catch (SecurityException unused4) {
                return this.c;
            }
        }
    }
}
