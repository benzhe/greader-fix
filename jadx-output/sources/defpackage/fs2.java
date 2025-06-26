package defpackage;

/* loaded from: classes.dex */
public final class fs2 extends Exception {
    public final int e;

    public fs2(int i, String str) {
        super(str);
        this.e = i;
    }

    public fs2(int i, Throwable th) {
        super(th);
        this.e = i;
    }
}
