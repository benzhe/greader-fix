package defpackage;

import android.content.Context;
import android.view.SubMenu;

/* loaded from: classes.dex */
public class l85 extends j1 {
    public l85(Context context) {
        super(context);
    }

    @Override // defpackage.j1, android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        l1 l1Var = (l1) a(i, i2, i3, charSequence);
        n85 n85Var = new n85(this.a, this, l1Var);
        l1Var.o = n85Var;
        n85Var.setHeaderTitle(l1Var.e);
        return n85Var;
    }
}
