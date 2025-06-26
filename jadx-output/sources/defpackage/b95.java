package defpackage;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;

/* loaded from: classes.dex */
public final class b95 extends j1 {
    public final int A;
    public final Class<?> z;

    public b95(Context context, Class<?> cls, int i) {
        super(context);
        this.z = cls;
        this.A = i;
    }

    @Override // defpackage.j1
    public MenuItem a(int i, int i2, int i3, CharSequence charSequence) {
        if (size() + 1 <= this.A) {
            B();
            MenuItem menuItemA = super.a(i, i2, i3, charSequence);
            ((l1) menuItemA).k(true);
            A();
            return menuItemA;
        }
        String simpleName = this.z.getSimpleName();
        StringBuilder sbC = jo.C("Maximum number of items supported by ", simpleName, " is ");
        sbC.append(this.A);
        sbC.append(". Limit can be checked with ");
        sbC.append(simpleName);
        sbC.append("#getMaxItemCount()");
        throw new IllegalArgumentException(sbC.toString());
    }

    @Override // defpackage.j1, android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        throw new UnsupportedOperationException(this.z.getSimpleName() + " does not support submenus");
    }
}
