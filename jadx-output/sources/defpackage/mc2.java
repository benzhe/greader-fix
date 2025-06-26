package defpackage;

/* loaded from: classes.dex */
public final class mc2 implements qd2<nc2> {
    public String a;
    public final String b;

    public mc2(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    @Override // defpackage.qd2
    public final aw2<nc2> a() {
        return vt2.j(new nc2(this.a, this.b));
    }
}
