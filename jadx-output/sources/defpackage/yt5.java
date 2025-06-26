package defpackage;

/* loaded from: classes.dex */
public final class yt5 extends fu5 {
    public static final /* synthetic */ int e = 0;
    public final a c;
    public hu5 d;

    public enum a {
        LOCAL_MUTATIONS,
        COMMITTED_MUTATIONS,
        SYNCED
    }

    public yt5(bu5 bu5Var, ju5 ju5Var, hu5 hu5Var, a aVar) {
        super(bu5Var, ju5Var);
        this.c = aVar;
        this.d = hu5Var;
    }

    @Override // defpackage.fu5
    public boolean a() {
        return d() || c();
    }

    public bd6 b(eu5 eu5Var) {
        return this.d.c(eu5Var);
    }

    public boolean c() {
        return this.c.equals(a.COMMITTED_MUTATIONS);
    }

    public boolean d() {
        return this.c.equals(a.LOCAL_MUTATIONS);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yt5)) {
            return false;
        }
        yt5 yt5Var = (yt5) obj;
        return this.b.equals(yt5Var.b) && this.a.equals(yt5Var.a) && this.c.equals(yt5Var.c) && this.d.equals(yt5Var.d);
    }

    public int hashCode() {
        return this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("Document{key=");
        sbZ.append(this.a);
        sbZ.append(", data=");
        sbZ.append(this.d);
        sbZ.append(", version=");
        sbZ.append(this.b);
        sbZ.append(", documentState=");
        sbZ.append(this.c.name());
        sbZ.append('}');
        return sbZ.toString();
    }
}
