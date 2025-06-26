package defpackage;

/* loaded from: classes2.dex */
public abstract class v18 {

    public enum a {
        DETECTING,
        FOUND_IT,
        NOT_ME
    }

    public abstract String a();

    public abstract float b();

    public abstract a c();

    public abstract a d(byte[] bArr, int i, int i2);

    public final boolean e(byte b) {
        int i = b & 255;
        return i < 65 || (i > 90 && i < 97) || i > 122;
    }

    public abstract void f();
}
