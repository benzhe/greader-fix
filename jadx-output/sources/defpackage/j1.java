package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class j1 implements t8 {
    public static final int[] y = {1, 4, 5, 3, 2, 0};
    public final Context a;
    public final Resources b;
    public boolean c;
    public boolean d;
    public a e;
    public ArrayList<l1> f;
    public ArrayList<l1> g;
    public boolean h;
    public ArrayList<l1> i;
    public ArrayList<l1> j;
    public boolean k;
    public CharSequence m;
    public Drawable n;
    public View o;
    public l1 v;
    public boolean x;
    public int l = 0;
    public boolean p = false;
    public boolean q = false;
    public boolean r = false;
    public boolean s = false;
    public ArrayList<l1> t = new ArrayList<>();
    public CopyOnWriteArrayList<WeakReference<p1>> u = new CopyOnWriteArrayList<>();
    public boolean w = false;

    public interface a {
        boolean a(j1 j1Var, MenuItem menuItem);

        void b(j1 j1Var);
    }

    public interface b {
        boolean a(l1 l1Var);
    }

    public j1(Context context) {
        boolean zShouldShowMenuShortcutsWhenKeyboardPresent;
        boolean z = false;
        this.a = context;
        Resources resources = context.getResources();
        this.b = resources;
        this.f = new ArrayList<>();
        this.g = new ArrayList<>();
        this.h = true;
        this.i = new ArrayList<>();
        this.j = new ArrayList<>();
        this.k = true;
        if (resources.getConfiguration().keyboard != 1) {
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            Method method = la.a;
            if (Build.VERSION.SDK_INT >= 28) {
                zShouldShowMenuShortcutsWhenKeyboardPresent = viewConfiguration.shouldShowMenuShortcutsWhenKeyboardPresent();
            } else {
                Resources resources2 = context.getResources();
                int identifier = resources2.getIdentifier("config_showMenuShortcutsWhenKeyboardPresent", "bool", "android");
                zShouldShowMenuShortcutsWhenKeyboardPresent = identifier != 0 && resources2.getBoolean(identifier);
            }
            if (zShouldShowMenuShortcutsWhenKeyboardPresent) {
                z = true;
            }
        }
        this.d = z;
    }

    public void A() {
        this.p = false;
        if (this.q) {
            this.q = false;
            q(this.r);
        }
    }

    public void B() {
        if (this.p) {
            return;
        }
        this.p = true;
        this.q = false;
        this.r = false;
    }

    public MenuItem a(int i, int i2, int i3, CharSequence charSequence) {
        int i4;
        int i5 = ((-65536) & i3) >> 16;
        if (i5 >= 0) {
            int[] iArr = y;
            if (i5 < iArr.length) {
                int i6 = (iArr[i5] << 16) | (65535 & i3);
                l1 l1Var = new l1(this, i, i2, i3, i6, charSequence, this.l);
                ArrayList<l1> arrayList = this.f;
                int size = arrayList.size();
                while (true) {
                    size--;
                    if (size < 0) {
                        i4 = 0;
                        break;
                    }
                    if (arrayList.get(size).d <= i6) {
                        i4 = size + 1;
                        break;
                    }
                }
                arrayList.add(i4, l1Var);
                q(true);
                return l1Var;
            }
        }
        throw new IllegalArgumentException("order does not contain a valid category.");
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        int i5;
        PackageManager packageManager = this.a.getPackageManager();
        List<ResolveInfo> listQueryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = listQueryIntentActivityOptions != null ? listQueryIntentActivityOptions.size() : 0;
        if ((i4 & 1) == 0) {
            removeGroup(i);
        }
        for (int i6 = 0; i6 < size; i6++) {
            ResolveInfo resolveInfo = listQueryIntentActivityOptions.get(i6);
            int i7 = resolveInfo.specificIndex;
            Intent intent2 = new Intent(i7 < 0 ? intent : intentArr[i7]);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
            MenuItem intent3 = a(i, i2, i3, resolveInfo.loadLabel(packageManager)).setIcon(resolveInfo.loadIcon(packageManager)).setIntent(intent2);
            if (menuItemArr != null && (i5 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i5] = intent3;
            }
        }
        return size;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    public void b(p1 p1Var, Context context) {
        this.u.add(new WeakReference<>(p1Var));
        p1Var.t(context, this);
        this.k = true;
    }

    public final void c(boolean z) {
        if (this.s) {
            return;
        }
        this.s = true;
        Iterator<WeakReference<p1>> it = this.u.iterator();
        while (it.hasNext()) {
            WeakReference<p1> next = it.next();
            p1 p1Var = next.get();
            if (p1Var == null) {
                this.u.remove(next);
            } else {
                p1Var.b(this, z);
            }
        }
        this.s = false;
    }

    @Override // android.view.Menu
    public void clear() {
        l1 l1Var = this.v;
        if (l1Var != null) {
            d(l1Var);
        }
        this.f.clear();
        q(true);
    }

    public void clearHeader() {
        this.n = null;
        this.m = null;
        this.o = null;
        q(false);
    }

    @Override // android.view.Menu
    public void close() {
        c(true);
    }

    public boolean d(l1 l1Var) {
        boolean zQ = false;
        if (!this.u.isEmpty() && this.v == l1Var) {
            B();
            Iterator<WeakReference<p1>> it = this.u.iterator();
            while (it.hasNext()) {
                WeakReference<p1> next = it.next();
                p1 p1Var = next.get();
                if (p1Var == null) {
                    this.u.remove(next);
                } else {
                    zQ = p1Var.q(this, l1Var);
                    if (zQ) {
                        break;
                    }
                }
            }
            A();
            if (zQ) {
                this.v = null;
            }
        }
        return zQ;
    }

    public boolean e(j1 j1Var, MenuItem menuItem) {
        a aVar = this.e;
        return aVar != null && aVar.a(j1Var, menuItem);
    }

    public boolean f(l1 l1Var) {
        boolean zR = false;
        if (this.u.isEmpty()) {
            return false;
        }
        B();
        Iterator<WeakReference<p1>> it = this.u.iterator();
        while (it.hasNext()) {
            WeakReference<p1> next = it.next();
            p1 p1Var = next.get();
            if (p1Var == null) {
                this.u.remove(next);
            } else {
                zR = p1Var.r(this, l1Var);
                if (zR) {
                    break;
                }
            }
        }
        A();
        if (zR) {
            this.v = l1Var;
        }
        return zR;
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i) {
        MenuItem menuItemFindItem;
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            l1 l1Var = this.f.get(i2);
            if (l1Var.a == i) {
                return l1Var;
            }
            if (l1Var.hasSubMenu() && (menuItemFindItem = l1Var.o.findItem(i)) != null) {
                return menuItemFindItem;
            }
        }
        return null;
    }

    public l1 g(int i, KeyEvent keyEvent) {
        ArrayList<l1> arrayList = this.t;
        arrayList.clear();
        h(arrayList, i, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return arrayList.get(0);
        }
        boolean zN = n();
        for (int i2 = 0; i2 < size; i2++) {
            l1 l1Var = arrayList.get(i2);
            char c = zN ? l1Var.j : l1Var.h;
            char[] cArr = keyData.meta;
            if ((c == cArr[0] && (metaState & 2) == 0) || ((c == cArr[2] && (metaState & 2) != 0) || (zN && c == '\b' && i == 67))) {
                return l1Var;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i) {
        return this.f.get(i);
    }

    public void h(List<l1> list, int i, KeyEvent keyEvent) {
        boolean zN = n();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i == 67) {
            int size = this.f.size();
            for (int i2 = 0; i2 < size; i2++) {
                l1 l1Var = this.f.get(i2);
                if (l1Var.hasSubMenu()) {
                    l1Var.o.h(list, i, keyEvent);
                }
                char c = zN ? l1Var.j : l1Var.h;
                if (((modifiers & 69647) == ((zN ? l1Var.k : l1Var.i) & 69647)) && c != 0) {
                    char[] cArr = keyData.meta;
                    if ((c == cArr[0] || c == cArr[2] || (zN && c == '\b' && i == 67)) && l1Var.isEnabled()) {
                        list.add(l1Var);
                    }
                }
            }
        }
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        if (this.x) {
            return true;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f.get(i).isVisible()) {
                return true;
            }
        }
        return false;
    }

    public void i() {
        ArrayList<l1> arrayListL = l();
        if (this.k) {
            Iterator<WeakReference<p1>> it = this.u.iterator();
            boolean zP = false;
            while (it.hasNext()) {
                WeakReference<p1> next = it.next();
                p1 p1Var = next.get();
                if (p1Var == null) {
                    this.u.remove(next);
                } else {
                    zP |= p1Var.p();
                }
            }
            if (zP) {
                this.i.clear();
                this.j.clear();
                int size = arrayListL.size();
                for (int i = 0; i < size; i++) {
                    l1 l1Var = arrayListL.get(i);
                    if (l1Var.g()) {
                        this.i.add(l1Var);
                    } else {
                        this.j.add(l1Var);
                    }
                }
            } else {
                this.i.clear();
                this.j.clear();
                this.j.addAll(l());
            }
            this.k = false;
        }
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return g(i, keyEvent) != null;
    }

    public String j() {
        return "android:menu:actionviewstates";
    }

    public j1 k() {
        return this;
    }

    public ArrayList<l1> l() {
        if (!this.h) {
            return this.g;
        }
        this.g.clear();
        int size = this.f.size();
        for (int i = 0; i < size; i++) {
            l1 l1Var = this.f.get(i);
            if (l1Var.isVisible()) {
                this.g.add(l1Var);
            }
        }
        this.h = false;
        this.k = true;
        return this.g;
    }

    public boolean m() {
        return this.w;
    }

    public boolean n() {
        return this.c;
    }

    public boolean o() {
        return this.d;
    }

    public void p() {
        this.k = true;
        q(true);
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i, int i2) {
        return r(findItem(i), i2);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        l1 l1VarG = g(i, keyEvent);
        boolean zS = l1VarG != null ? s(l1VarG, null, i2) : false;
        if ((i2 & 2) != 0) {
            c(true);
        }
        return zS;
    }

    public void q(boolean z) {
        if (this.p) {
            this.q = true;
            if (z) {
                this.r = true;
                return;
            }
            return;
        }
        if (z) {
            this.h = true;
            this.k = true;
        }
        if (this.u.isEmpty()) {
            return;
        }
        B();
        Iterator<WeakReference<p1>> it = this.u.iterator();
        while (it.hasNext()) {
            WeakReference<p1> next = it.next();
            p1 p1Var = next.get();
            if (p1Var == null) {
                this.u.remove(next);
            } else {
                p1Var.o(z);
            }
        }
        A();
    }

    public boolean r(MenuItem menuItem, int i) {
        return s(menuItem, null, i);
    }

    @Override // android.view.Menu
    public void removeGroup(int i) {
        int size = size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                i2 = -1;
                break;
            } else if (this.f.get(i2).b == i) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 >= 0) {
            int size2 = this.f.size() - i2;
            int i3 = 0;
            while (true) {
                int i4 = i3 + 1;
                if (i3 >= size2 || this.f.get(i2).b != i) {
                    break;
                }
                t(i2, false);
                i3 = i4;
            }
            q(true);
        }
    }

    @Override // android.view.Menu
    public void removeItem(int i) {
        int size = size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                i2 = -1;
                break;
            } else if (this.f.get(i2).a == i) {
                break;
            } else {
                i2++;
            }
        }
        t(i2, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean s(android.view.MenuItem r7, defpackage.p1 r8, int r9) {
        /*
            r6 = this;
            l1 r7 = (defpackage.l1) r7
            r0 = 0
            if (r7 == 0) goto Ld2
            boolean r1 = r7.isEnabled()
            if (r1 != 0) goto Ld
            goto Ld2
        Ld:
            android.view.MenuItem$OnMenuItemClickListener r1 = r7.p
            r2 = 1
            if (r1 == 0) goto L19
            boolean r1 = r1.onMenuItemClick(r7)
            if (r1 == 0) goto L19
            goto L21
        L19:
            j1 r1 = r7.n
            boolean r1 = r1.e(r1, r7)
            if (r1 == 0) goto L23
        L21:
            r1 = 1
            goto L43
        L23:
            android.content.Intent r1 = r7.g
            if (r1 == 0) goto L37
            j1 r3 = r7.n     // Catch: android.content.ActivityNotFoundException -> L2f
            android.content.Context r3 = r3.a     // Catch: android.content.ActivityNotFoundException -> L2f
            r3.startActivity(r1)     // Catch: android.content.ActivityNotFoundException -> L2f
            goto L21
        L2f:
            r1 = move-exception
            java.lang.String r3 = "MenuItemImpl"
            java.lang.String r4 = "Can't find activity to handle intent; ignoring"
            android.util.Log.e(r3, r4, r1)
        L37:
            w9 r1 = r7.A
            if (r1 == 0) goto L42
            boolean r1 = r1.e()
            if (r1 == 0) goto L42
            goto L21
        L42:
            r1 = 0
        L43:
            w9 r3 = r7.A
            if (r3 == 0) goto L4f
            boolean r4 = r3.a()
            if (r4 == 0) goto L4f
            r4 = 1
            goto L50
        L4f:
            r4 = 0
        L50:
            boolean r5 = r7.f()
            if (r5 == 0) goto L62
            boolean r7 = r7.expandActionView()
            r1 = r1 | r7
            if (r1 == 0) goto Ld1
            r6.c(r2)
            goto Ld1
        L62:
            boolean r5 = r7.hasSubMenu()
            if (r5 != 0) goto L73
            if (r4 == 0) goto L6b
            goto L73
        L6b:
            r7 = r9 & 1
            if (r7 != 0) goto Ld1
            r6.c(r2)
            goto Ld1
        L73:
            r9 = r9 & 4
            if (r9 != 0) goto L7a
            r6.c(r0)
        L7a:
            boolean r9 = r7.hasSubMenu()
            if (r9 != 0) goto L8e
            u1 r9 = new u1
            android.content.Context r5 = r6.a
            r9.<init>(r5, r6, r7)
            r7.o = r9
            java.lang.CharSequence r5 = r7.e
            r9.setHeaderTitle(r5)
        L8e:
            u1 r7 = r7.o
            if (r4 == 0) goto L95
            r3.f(r7)
        L95:
            java.util.concurrent.CopyOnWriteArrayList<java.lang.ref.WeakReference<p1>> r9 = r6.u
            boolean r9 = r9.isEmpty()
            if (r9 == 0) goto L9e
            goto Lcb
        L9e:
            if (r8 == 0) goto La4
            boolean r0 = r8.v(r7)
        La4:
            java.util.concurrent.CopyOnWriteArrayList<java.lang.ref.WeakReference<p1>> r8 = r6.u
            java.util.Iterator r8 = r8.iterator()
        Laa:
            boolean r9 = r8.hasNext()
            if (r9 == 0) goto Lcb
            java.lang.Object r9 = r8.next()
            java.lang.ref.WeakReference r9 = (java.lang.ref.WeakReference) r9
            java.lang.Object r3 = r9.get()
            p1 r3 = (defpackage.p1) r3
            if (r3 != 0) goto Lc4
            java.util.concurrent.CopyOnWriteArrayList<java.lang.ref.WeakReference<p1>> r3 = r6.u
            r3.remove(r9)
            goto Laa
        Lc4:
            if (r0 != 0) goto Laa
            boolean r0 = r3.v(r7)
            goto Laa
        Lcb:
            r1 = r1 | r0
            if (r1 != 0) goto Ld1
            r6.c(r2)
        Ld1:
            return r1
        Ld2:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.j1.s(android.view.MenuItem, p1, int):boolean");
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i, boolean z, boolean z2) {
        int size = this.f.size();
        for (int i2 = 0; i2 < size; i2++) {
            l1 l1Var = this.f.get(i2);
            if (l1Var.b == i) {
                l1Var.k(z2);
                l1Var.setCheckable(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.w = z;
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i, boolean z) {
        int size = this.f.size();
        for (int i2 = 0; i2 < size; i2++) {
            l1 l1Var = this.f.get(i2);
            if (l1Var.b == i) {
                l1Var.setEnabled(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i, boolean z) {
        int size = this.f.size();
        boolean z2 = false;
        for (int i2 = 0; i2 < size; i2++) {
            l1 l1Var = this.f.get(i2);
            if (l1Var.b == i && l1Var.m(z)) {
                z2 = true;
            }
        }
        if (z2) {
            q(true);
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.c = z;
        q(false);
    }

    @Override // android.view.Menu
    public int size() {
        return this.f.size();
    }

    public final void t(int i, boolean z) {
        if (i < 0 || i >= this.f.size()) {
            return;
        }
        this.f.remove(i);
        if (z) {
            q(true);
        }
    }

    public void u(p1 p1Var) {
        Iterator<WeakReference<p1>> it = this.u.iterator();
        while (it.hasNext()) {
            WeakReference<p1> next = it.next();
            p1 p1Var2 = next.get();
            if (p1Var2 == null || p1Var2 == p1Var) {
                this.u.remove(next);
            }
        }
    }

    public void v(Bundle bundle) {
        MenuItem menuItemFindItem;
        if (bundle == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(j());
        int size = size();
        for (int i = 0; i < size; i++) {
            MenuItem item = getItem(i);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                ((u1) item.getSubMenu()).v(bundle);
            }
        }
        int i2 = bundle.getInt("android:menu:expandedactionview");
        if (i2 <= 0 || (menuItemFindItem = findItem(i2)) == null) {
            return;
        }
        menuItemFindItem.expandActionView();
    }

    public void w(Bundle bundle) {
        Parcelable parcelable;
        SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:presenters");
        if (sparseParcelableArray == null || this.u.isEmpty()) {
            return;
        }
        Iterator<WeakReference<p1>> it = this.u.iterator();
        while (it.hasNext()) {
            WeakReference<p1> next = it.next();
            p1 p1Var = next.get();
            if (p1Var == null) {
                this.u.remove(next);
            } else {
                int iN = p1Var.n();
                if (iN > 0 && (parcelable = (Parcelable) sparseParcelableArray.get(iN)) != null) {
                    p1Var.u(parcelable);
                }
            }
        }
    }

    public void x(Bundle bundle) {
        int size = size();
        SparseArray<? extends Parcelable> sparseArray = null;
        for (int i = 0; i < size; i++) {
            MenuItem item = getItem(i);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                actionView.saveHierarchyState(sparseArray);
                if (item.isActionViewExpanded()) {
                    bundle.putInt("android:menu:expandedactionview", item.getItemId());
                }
            }
            if (item.hasSubMenu()) {
                ((u1) item.getSubMenu()).x(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(j(), sparseArray);
        }
    }

    public void y(Bundle bundle) {
        Parcelable parcelableW;
        if (this.u.isEmpty()) {
            return;
        }
        SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
        Iterator<WeakReference<p1>> it = this.u.iterator();
        while (it.hasNext()) {
            WeakReference<p1> next = it.next();
            p1 p1Var = next.get();
            if (p1Var == null) {
                this.u.remove(next);
            } else {
                int iN = p1Var.n();
                if (iN > 0 && (parcelableW = p1Var.w()) != null) {
                    sparseArray.put(iN, parcelableW);
                }
            }
        }
        bundle.putSparseParcelableArray("android:menu:presenters", sparseArray);
    }

    public final void z(int i, CharSequence charSequence, int i2, Drawable drawable, View view) {
        Resources resources = this.b;
        if (view != null) {
            this.o = view;
            this.m = null;
            this.n = null;
        } else {
            if (i > 0) {
                this.m = resources.getText(i);
            } else if (charSequence != null) {
                this.m = charSequence;
            }
            if (i2 > 0) {
                Context context = this.a;
                Object obj = u7.a;
                this.n = context.getDrawable(i2);
            } else if (drawable != null) {
                this.n = drawable;
            }
            this.o = null;
        }
        q(false);
    }

    @Override // android.view.Menu
    public MenuItem add(int i) {
        return a(0, 0, 0, this.b.getString(i));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i) {
        return addSubMenu(0, 0, 0, this.b.getString(i));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return a(i, i2, i3, charSequence);
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        l1 l1Var = (l1) a(i, i2, i3, charSequence);
        u1 u1Var = new u1(this.a, this, l1Var);
        l1Var.o = u1Var;
        u1Var.setHeaderTitle(l1Var.e);
        return u1Var;
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, int i4) {
        return a(i, i2, i3, this.b.getString(i4));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return addSubMenu(i, i2, i3, this.b.getString(i4));
    }
}
