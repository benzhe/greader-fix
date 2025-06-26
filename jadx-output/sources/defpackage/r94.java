package defpackage;

/* loaded from: classes.dex */
public final class r94 extends s94 {
    @Override // defpackage.s94
    public final void a(Object obj, long j) {
        ((i94) lb4.q(obj, j)).b();
    }

    @Override // defpackage.s94
    public final <E> void b(Object obj, Object obj2, long j) {
        i94 i94VarW = (i94) lb4.q(obj, j);
        i94 i94Var = (i94) lb4.q(obj2, j);
        int size = i94VarW.size();
        int size2 = i94Var.size();
        if (size > 0 && size2 > 0) {
            if (!i94VarW.a()) {
                i94VarW = i94VarW.w(size2 + size);
            }
            i94VarW.addAll(i94Var);
        }
        if (size > 0) {
            i94Var = i94VarW;
        }
        lb4.e.s(obj, j, i94Var);
    }
}
