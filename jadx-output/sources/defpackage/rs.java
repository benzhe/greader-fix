package defpackage;

/* loaded from: classes.dex */
public abstract class rs {

    public enum a {
        OK,
        TRANSIENT_ERROR,
        FATAL_ERROR
    }

    public static rs a() {
        return new ms(a.FATAL_ERROR, -1L);
    }

    public abstract long b();

    public abstract a c();
}
