package defpackage;

/* loaded from: classes2.dex */
public final class mp7 implements up7 {
    public final boolean e;

    public mp7(boolean z) {
        this.e = z;
    }

    @Override // defpackage.up7
    public eq7 a() {
        return null;
    }

    @Override // defpackage.up7
    public boolean isActive() {
        return this.e;
    }

    public String toString() {
        StringBuilder sbZ = jo.z("Empty{");
        sbZ.append(this.e ? "Active" : "New");
        sbZ.append('}');
        return sbZ.toString();
    }
}
