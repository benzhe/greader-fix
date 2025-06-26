package defpackage;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;

/* loaded from: classes.dex */
public abstract class f1 {
    public final Context a;
    public m4<u8, MenuItem> b;
    public m4<v8, SubMenu> c;

    public f1(Context context) {
        this.a = context;
    }

    public final MenuItem c(MenuItem menuItem) {
        if (!(menuItem instanceof u8)) {
            return menuItem;
        }
        u8 u8Var = (u8) menuItem;
        if (this.b == null) {
            this.b = new m4<>();
        }
        MenuItem orDefault = this.b.getOrDefault(menuItem, null);
        if (orDefault != null) {
            return orDefault;
        }
        m1 m1Var = new m1(this.a, u8Var);
        this.b.put(u8Var, m1Var);
        return m1Var;
    }

    public final SubMenu d(SubMenu subMenu) {
        if (!(subMenu instanceof v8)) {
            return subMenu;
        }
        v8 v8Var = (v8) subMenu;
        if (this.c == null) {
            this.c = new m4<>();
        }
        SubMenu subMenu2 = this.c.get(v8Var);
        if (subMenu2 != null) {
            return subMenu2;
        }
        v1 v1Var = new v1(this.a, v8Var);
        this.c.put(v8Var, v1Var);
        return v1Var;
    }
}
