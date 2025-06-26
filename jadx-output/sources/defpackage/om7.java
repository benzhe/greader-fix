package defpackage;

/* loaded from: classes2.dex */
public abstract class om7 extends cm7 implements ln7 {
    public om7() {
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof om7) {
            om7 om7Var = (om7) obj;
            return getOwner().equals(om7Var.getOwner()) && getName().equals(om7Var.getName()) && getSignature().equals(om7Var.getSignature()) && im7.a(getBoundReceiver(), om7Var.getBoundReceiver());
        }
        if (obj instanceof ln7) {
            return obj.equals(compute());
        }
        return false;
    }

    public int hashCode() {
        return getSignature().hashCode() + ((getName().hashCode() + (getOwner().hashCode() * 31)) * 31);
    }

    @Override // defpackage.ln7
    public boolean isConst() {
        return getReflected().isConst();
    }

    @Override // defpackage.ln7
    public boolean isLateinit() {
        return getReflected().isLateinit();
    }

    public String toString() {
        gn7 gn7VarCompute = compute();
        if (gn7VarCompute != this) {
            return gn7VarCompute.toString();
        }
        StringBuilder sbZ = jo.z("property ");
        sbZ.append(getName());
        sbZ.append(" (Kotlin reflection is not available)");
        return sbZ.toString();
    }

    public om7(Object obj) {
        super(obj);
    }

    @Override // defpackage.cm7
    public ln7 getReflected() {
        return (ln7) super.getReflected();
    }

    public om7(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, (i & 1) == 1);
    }
}
