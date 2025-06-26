package androidx.core.app;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import defpackage.ad;
import defpackage.dd;
import defpackage.ed;
import defpackage.ld;
import defpackage.m4;
import defpackage.y9;

/* loaded from: classes.dex */
public class ComponentActivity extends Activity implements dd, y9.a {
    public m4<Class<? extends a>, a> e = new m4<>();
    public ed f = new ed(this);

    @Deprecated
    public static class a {
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !y9.a(decorView, keyEvent)) {
            return y9.b(this, decorView, this, keyEvent);
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !y9.a(decorView, keyEvent)) {
            return super.dispatchKeyShortcutEvent(keyEvent);
        }
        return true;
    }

    public ad getLifecycle() {
        return this.f;
    }

    @Override // y9.a
    public boolean j(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ld.b(this);
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        this.f.f(ad.b.CREATED);
        super.onSaveInstanceState(bundle);
    }
}
