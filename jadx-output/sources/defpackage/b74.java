package defpackage;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public abstract class b74<T> {
    public static final Object f = new Object();
    public static volatile a74 g;
    public static final AtomicInteger h;
    public final z64 a;
    public final String b;
    public final T c;
    public volatile int d = -1;
    public volatile T e;

    static {
        new AtomicReference();
        h = new AtomicInteger();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ b74(z64 z64Var, String str, Object obj) {
        if (z64Var.a == null) {
            throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
        }
        this.a = z64Var;
        this.b = str;
        this.c = obj;
    }

    public abstract T a(Object obj);

    public final String b() {
        Objects.requireNonNull(this.a);
        return this.b;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b1 A[Catch: all -> 0x008c, TryCatch #0 {all -> 0x008c, blocks: (B:5:0x000b, B:7:0x000f, B:9:0x0015, B:11:0x002b, B:13:0x0037, B:15:0x0040, B:17:0x0052, B:19:0x005d, B:18:0x0057, B:42:0x00d5, B:44:0x00e5, B:46:0x00f6, B:49:0x0105, B:51:0x0111, B:53:0x011b, B:52:0x0116, B:55:0x0124, B:56:0x0127, B:57:0x012b, B:36:0x00b1, B:38:0x00cb, B:41:0x00d3, B:21:0x0062, B:23:0x0068, B:25:0x0076, B:31:0x00a0, B:33:0x00aa, B:29:0x0091, B:58:0x0130, B:59:0x0135, B:60:0x0136), top: B:66:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00e5 A[Catch: all -> 0x008c, TryCatch #0 {all -> 0x008c, blocks: (B:5:0x000b, B:7:0x000f, B:9:0x0015, B:11:0x002b, B:13:0x0037, B:15:0x0040, B:17:0x0052, B:19:0x005d, B:18:0x0057, B:42:0x00d5, B:44:0x00e5, B:46:0x00f6, B:49:0x0105, B:51:0x0111, B:53:0x011b, B:52:0x0116, B:55:0x0124, B:56:0x0127, B:57:0x012b, B:36:0x00b1, B:38:0x00cb, B:41:0x00d3, B:21:0x0062, B:23:0x0068, B:25:0x0076, B:31:0x00a0, B:33:0x00aa, B:29:0x0091, B:58:0x0130, B:59:0x0135, B:60:0x0136), top: B:66:0x000b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T c() {
        /*
            Method dump skipped, instructions count: 317
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.b74.c():java.lang.Object");
    }
}
