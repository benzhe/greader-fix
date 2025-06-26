package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;

/* loaded from: classes.dex */
public class d75 extends RecyclerView.r {
    public final /* synthetic */ k75 a;
    public final /* synthetic */ MaterialButton b;
    public final /* synthetic */ a75 c;

    public d75(a75 a75Var, k75 k75Var, MaterialButton materialButton) {
        this.c = a75Var;
        this.a = k75Var;
        this.b = materialButton;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    public void a(RecyclerView recyclerView, int i) {
        if (i == 0) {
            recyclerView.announceForAccessibility(this.b.getText());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    public void b(RecyclerView recyclerView, int i, int i2) {
        int iL1 = i < 0 ? this.c.d().l1() : this.c.d().n1();
        this.c.i = this.a.a(iL1);
        MaterialButton materialButton = this.b;
        k75 k75Var = this.a;
        materialButton.setText(k75Var.b.e.t(iL1).l(k75Var.a));
    }
}
