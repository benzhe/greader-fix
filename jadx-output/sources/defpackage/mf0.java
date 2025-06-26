package defpackage;

/* loaded from: classes.dex */
public final class mf0<I, O> implements mf0<I, O> {
    public final bf0<O> a;
    public final ef0<I> b;
    public final yd0 c;
    public final String d;

    public mf0(yd0 yd0Var, String str, ef0<I> ef0Var, bf0<O> bf0Var) {
        this.c = yd0Var;
        this.d = str;
        this.b = ef0Var;
        this.a = bf0Var;
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type update terminated with stack overflow, arg: (r0v0 'this' ?? I:mf0 A[IMMUTABLE_TYPE, THIS]), method size: 5
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    public final defpackage.aw2<O> a(I r1) throws java.lang.Exception {
        /*
            r0 = this;
            aw2 r1 = r0.b(r1)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.mf0.a(java.lang.Object):aw2");
    }

    public final aw2<O> b(I i) {
        xs0 xs0Var = new xs0();
        oe0 oe0VarB = this.c.b();
        oe0VarB.c(new lf0(this, oe0VarB, i, xs0Var), new of0(xs0Var, oe0VarB));
        return xs0Var;
    }
}
