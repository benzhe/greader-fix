package defpackage;

import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public final class tw4 implements Runnable {
    public final sw4 e;
    public final int f;
    public final Throwable g;
    public final byte[] h;
    public final String i;
    public final Map<String, List<String>> j;

    public tw4(String str, sw4 sw4Var, int i, Throwable th, byte[] bArr, Map map) {
        Objects.requireNonNull(sw4Var, "null reference");
        this.e = sw4Var;
        this.f = i;
        this.g = th;
        this.h = bArr;
        this.i = str;
        this.j = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.e.a(this.i, this.f, this.g, this.h, this.j);
    }
}
