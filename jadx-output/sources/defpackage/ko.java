package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import java.util.ArrayList;
import java.util.List;
import okhttp3.internal.http2.Settings;

/* loaded from: classes.dex */
public class ko implements Menu {
    public static final int[] d = {1, 4, 5, 3, 2, 0};
    public Context a;
    public boolean b;
    public ArrayList<lo> c = new ArrayList<>();

    public ko(Context context) {
        this.a = context;
    }

    public static int a(ArrayList<lo> arrayList, int i) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size).c <= i) {
                return size + 1;
            }
        }
        return 0;
    }

    public static int d(int i) {
        int i2 = ((-65536) & i) >> 16;
        if (i2 >= 0) {
            int[] iArr = d;
            if (i2 < iArr.length) {
                return (i & Settings.DEFAULT_INITIAL_WINDOW_SIZE) | (iArr[i2] << 16);
            }
        }
        throw new IllegalArgumentException("order does not contain a valid category.");
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return add(0, 0, 0, charSequence);
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
            lo loVar = (lo) add(i, i2, i3, resolveInfo.loadLabel(packageManager));
            loVar.i = resolveInfo.loadIcon(packageManager);
            loVar.f = intent2;
            if (menuItemArr != null && (i5 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i5] = loVar;
            }
        }
        return size;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i) {
        return null;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return null;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        return null;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return null;
    }

    public final int b(int i) {
        ArrayList<lo> arrayList = this.c;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (arrayList.get(i2).a == i) {
                return i2;
            }
        }
        return -1;
    }

    public final lo c(int i) {
        boolean z = this.b;
        ArrayList<lo> arrayList = this.c;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            lo loVar = arrayList.get(i2);
            if (i == (z ? loVar.h : loVar.g)) {
                return loVar;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public void clear() {
        this.c.clear();
    }

    @Override // android.view.Menu
    public void close() {
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i) {
        int iB = b(i);
        if (iB < 0) {
            return null;
        }
        return this.c.get(iB);
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i) {
        return this.c.get(i);
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        ArrayList<lo> arrayList = this.c;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (arrayList.get(i).isVisible()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return c(i) != null;
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i, int i2) {
        int iB = b(i);
        if (iB < 0) {
            return false;
        }
        return this.c.get(iB).c();
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        lo loVarC = c(i);
        if (loVarC == null) {
            return false;
        }
        return loVarC.c();
    }

    @Override // android.view.Menu
    public void removeGroup(int i) {
        ArrayList<lo> arrayList = this.c;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            if (arrayList.get(i2).b == i) {
                arrayList.remove(i2);
                size--;
            } else {
                i2++;
            }
        }
    }

    @Override // android.view.Menu
    public void removeItem(int i) {
        int iB = b(i);
        if (iB < 0) {
            return;
        }
        this.c.remove(iB);
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i, boolean z, boolean z2) {
        ArrayList<lo> arrayList = this.c;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            lo loVar = arrayList.get(i2);
            if (loVar.b == i) {
                int i3 = (loVar.l & (-2)) | (z ? 1 : 0);
                loVar.l = i3;
                loVar.l = (i3 & (-5)) | (z2 ? 4 : 0);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i, boolean z) {
        ArrayList<lo> arrayList = this.c;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            lo loVar = arrayList.get(i2);
            if (loVar.b == i) {
                loVar.setEnabled(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i, boolean z) {
        ArrayList<lo> arrayList = this.c;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            lo loVar = arrayList.get(i2);
            if (loVar.b == i) {
                loVar.setVisible(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.b = z;
    }

    @Override // android.view.Menu
    public int size() {
        return this.c.size();
    }

    @Override // android.view.Menu
    public MenuItem add(int i) {
        return add(0, 0, 0, i);
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, int i4) {
        return add(i, i2, i3, this.a.getResources().getString(i4));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        lo loVar = new lo(this.a, i, i2, 0, i3, charSequence);
        ArrayList<lo> arrayList = this.c;
        arrayList.add(a(arrayList, d(i3)), loVar);
        return loVar;
    }
}
