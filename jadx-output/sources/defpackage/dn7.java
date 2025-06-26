package defpackage;

/* JADX WARN: Unexpected interfaces in signature: [java.lang.Object<java.lang.Integer>] */
/* loaded from: classes2.dex */
public final class dn7 extends bn7 {
    public static final dn7 h = new dn7(1, 0);
    public static final dn7 i = null;

    public dn7(int i2, int i3) {
        super(i2, i3, 1);
    }

    @Override // defpackage.bn7
    public boolean equals(Object obj) {
        if (obj instanceof dn7) {
            if (!isEmpty() || !((dn7) obj).isEmpty()) {
                dn7 dn7Var = (dn7) obj;
                if (this.e != dn7Var.e || this.f != dn7Var.f) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // defpackage.bn7
    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (this.e * 31) + this.f;
    }

    @Override // defpackage.bn7
    public boolean isEmpty() {
        return this.e > this.f;
    }

    @Override // defpackage.bn7
    public String toString() {
        return this.e + ".." + this.f;
    }
}
