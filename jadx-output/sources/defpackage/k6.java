package defpackage;

import java.util.ArrayList;

/* loaded from: classes.dex */
public class k6 extends c6 {
    public ArrayList<c6> C0 = new ArrayList<>();

    @Override // defpackage.c6
    public void B(t5 t5Var) {
        super.B(t5Var);
        int size = this.C0.size();
        for (int i = 0; i < size; i++) {
            this.C0.get(i).B(t5Var);
        }
    }

    public void L() {
        ArrayList<c6> arrayList = this.C0;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            c6 c6Var = this.C0.get(i);
            if (c6Var instanceof k6) {
                ((k6) c6Var).L();
            }
        }
    }

    public void a(c6 c6Var) {
        this.C0.add(c6Var);
        c6 c6Var2 = c6Var.M;
        if (c6Var2 != null) {
            ((k6) c6Var2).C0.remove(c6Var);
            c6Var.M = null;
        }
        c6Var.M = this;
    }

    @Override // defpackage.c6
    public void z() {
        this.C0.clear();
        super.z();
    }
}
