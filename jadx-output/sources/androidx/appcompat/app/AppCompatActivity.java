package androidx.appcompat.app;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.FragmentActivity;
import defpackage.b0;
import defpackage.c0;
import defpackage.d0;
import defpackage.f7;
import defpackage.h3;
import defpackage.h4;
import defpackage.u;
import defpackage.u7;
import defpackage.v0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class AppCompatActivity extends FragmentActivity implements b0 {
    public c0 u;

    @Override // android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        s().c(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(s().d(context));
    }

    @Override // android.app.Activity
    public void closeOptionsMenu() {
        u uVarT = t();
        if (getWindow().hasFeature(0)) {
            if (uVarT == null || !uVarT.a()) {
                super.closeOptionsMenu();
            }
        }
    }

    @Override // defpackage.b0
    public void d(v0 v0Var) {
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        u uVarT = t();
        if (keyCode == 82 && uVarT != null && uVarT.k(keyEvent)) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // defpackage.b0
    public void e(v0 v0Var) {
    }

    @Override // android.app.Activity
    public <T extends View> T findViewById(int i) {
        return (T) s().e(i);
    }

    @Override // android.app.Activity
    public MenuInflater getMenuInflater() {
        return s().g();
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        int i = h3.a;
        return super.getResources();
    }

    @Override // defpackage.b0
    public v0 i(v0.a aVar) {
        return null;
    }

    @Override // android.app.Activity
    public void invalidateOptionsMenu() {
        s().j();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        s().k(configuration);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        c0 c0VarS = s();
        c0VarS.i();
        c0VarS.l(bundle);
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        s().m();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        Window window;
        if ((Build.VERSION.SDK_INT >= 26 || keyEvent.isCtrlPressed() || KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) || keyEvent.getRepeatCount() != 0 || KeyEvent.isModifierKey(keyEvent.getKeyCode()) || (window = getWindow()) == null || window.getDecorView() == null || !window.getDecorView().dispatchKeyShortcutEvent(keyEvent)) ? false : true) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
        Intent intentG;
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        u uVarT = t();
        if (menuItem.getItemId() != 16908332 || uVarT == null || (uVarT.d() & 4) == 0 || (intentG = d0.h.G(this)) == null) {
            return false;
        }
        if (!shouldUpRecreateTask(intentG)) {
            navigateUpTo(intentG);
            return true;
        }
        ArrayList arrayList = new ArrayList();
        Intent intentU = u();
        if (intentU == null) {
            intentU = d0.h.G(this);
        }
        if (intentU != null) {
            ComponentName component = intentU.getComponent();
            if (component == null) {
                component = intentU.resolveActivity(getPackageManager());
            }
            int size = arrayList.size();
            try {
                Intent intentH = d0.h.H(this, component);
                while (intentH != null) {
                    arrayList.add(size, intentH);
                    intentH = d0.h.H(this, intentH.getComponent());
                }
                arrayList.add(intentU);
            } catch (PackageManager.NameNotFoundException e) {
                Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
                throw new IllegalArgumentException(e);
            }
        }
        w();
        if (arrayList.isEmpty()) {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
        }
        Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        Object obj = u7.a;
        startActivities(intentArr, null);
        try {
            int i2 = f7.b;
            finishAffinity();
            return true;
        } catch (IllegalStateException unused) {
            finish();
            return true;
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuOpened(int i, Menu menu) {
        return super.onMenuOpened(i, menu);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        s().n(bundle);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        s().o();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        s().p(bundle);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        s().q();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        s().r();
    }

    @Override // android.app.Activity
    public void onTitleChanged(CharSequence charSequence, int i) {
        super.onTitleChanged(charSequence, i);
        s().z(charSequence);
    }

    @Override // android.app.Activity
    public void openOptionsMenu() {
        u uVarT = t();
        if (getWindow().hasFeature(0)) {
            if (uVarT == null || !uVarT.l()) {
                super.openOptionsMenu();
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity
    public void r() {
        s().j();
    }

    public c0 s() {
        if (this.u == null) {
            h4<WeakReference<c0>> h4Var = c0.e;
            this.u = new d0(this, null, this, this);
        }
        return this.u;
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        s().u(i);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        super.setTheme(i);
        s().y(i);
    }

    public u t() {
        return s().h();
    }

    public Intent u() {
        return d0.h.G(this);
    }

    public void v() {
    }

    public void w() {
    }

    public void x(Toolbar toolbar) {
        s().x(toolbar);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        s().v(view);
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        s().w(view, layoutParams);
    }
}
