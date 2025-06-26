package defpackage;

import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public abstract class o20 extends m20 {
    public static final WeakReference<byte[]> h = new WeakReference<>(null);
    public WeakReference<byte[]> g;

    public o20(byte[] bArr) {
        super(bArr);
        this.g = h;
    }

    public abstract byte[] b2();

    @Override // defpackage.m20
    public final byte[] g0() {
        byte[] bArrB2;
        synchronized (this) {
            bArrB2 = this.g.get();
            if (bArrB2 == null) {
                bArrB2 = b2();
                this.g = new WeakReference<>(bArrB2);
            }
        }
        return bArrB2;
    }
}
