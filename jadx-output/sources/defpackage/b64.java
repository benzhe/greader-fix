package defpackage;

/* loaded from: classes.dex */
public enum b64 implements e94 {
    UNKNOWN(0),
    STRING(1),
    NUMBER(2),
    BOOLEAN(3),
    STATEMENT(4);

    public final int e;

    b64(int i) {
        this.e = i;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + b64.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.e + " name=" + name() + '>';
    }
}
