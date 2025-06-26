package defpackage;

/* loaded from: classes.dex */
public final class aq5 {
    public final wt5 a;
    public final String b;
    public final String c;
    public final boolean d;

    public aq5(wt5 wt5Var, String str, String str2, boolean z) {
        this.a = wt5Var;
        this.b = str;
        this.c = str2;
        this.d = z;
    }

    public String toString() {
        StringBuilder sbZ = jo.z("DatabaseInfo(databaseId:");
        sbZ.append(this.a);
        sbZ.append(" host:");
        return jo.s(sbZ, this.c, ")");
    }
}
