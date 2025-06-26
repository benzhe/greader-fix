package defpackage;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class ix2<P> {
    public final P a;
    public final byte[] b;
    public final h23 c;
    public final y23 d;

    public ix2(P p, byte[] bArr, h23 h23Var, y23 y23Var, int i) {
        this.a = p;
        this.b = Arrays.copyOf(bArr, bArr.length);
        this.c = h23Var;
        this.d = y23Var;
    }

    public final byte[] a() {
        byte[] bArr = this.b;
        if (bArr == null) {
            return null;
        }
        return Arrays.copyOf(bArr, bArr.length);
    }
}
