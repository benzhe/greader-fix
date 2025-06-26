package defpackage;

/* loaded from: classes.dex */
public final class vu1 implements cb3<qp2> {
    public final mb3<String> a;

    public vu1(mb3<String> mb3Var) {
        this.a = mb3Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        String str = this.a.get();
        qp2 qp2Var = new qp2();
        qp2Var.a.put("request_id", str);
        return qp2Var;
    }
}
