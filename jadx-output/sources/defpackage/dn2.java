package defpackage;

/* loaded from: classes.dex */
public final class dn2 implements bn2 {
    public final String a;

    public dn2(String str) {
        this.a = str;
    }

    @Override // defpackage.bn2
    public final boolean equals(Object obj) {
        if (obj instanceof dn2) {
            return this.a.equals(((dn2) obj).a);
        }
        return false;
    }

    @Override // defpackage.bn2
    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return this.a;
    }
}
