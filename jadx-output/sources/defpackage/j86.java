package defpackage;

import java.util.Objects;

/* loaded from: classes.dex */
public final class j86 implements Object<pc7<String>> {
    public final i86 a;

    public j86(i86 i86Var) {
        this.a = i86Var;
    }

    public Object get() {
        final i86 i86Var = this.a;
        Objects.requireNonNull(i86Var);
        ob7 ob7Var = new ob7(i86Var) { // from class: h86
            public final i86 a;

            {
                this.a = i86Var;
            }

            @Override // defpackage.ob7
            public void a(nb7 nb7Var) {
                Objects.requireNonNull(this.a.a);
            }
        };
        gb7 gb7Var = gb7.BUFFER;
        int i = mb7.e;
        pc7<T> pc7VarP = new je7(ob7Var, gb7Var).p();
        pc7VarP.w();
        return pc7VarP;
    }
}
