package defpackage;

/* loaded from: classes.dex */
public enum k54 implements e94 {
    RADS(1),
    PROVISIONING(2);

    public final int e;

    k54(int i) {
        this.e = i;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + k54.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.e + " name=" + name() + '>';
    }
}
