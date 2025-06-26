package androidx.activity;

import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import defpackage.ad;
import defpackage.bd;
import defpackage.dd;
import defpackage.ed;
import defpackage.ld;
import defpackage.qd;
import defpackage.rd;
import defpackage.sg;
import defpackage.t;
import defpackage.tg;
import defpackage.ug;

/* loaded from: classes.dex */
public class ComponentActivity extends androidx.core.app.ComponentActivity implements dd, rd, ug, t {
    public final ed g;
    public final tg h;
    public qd i;
    public final OnBackPressedDispatcher j;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ComponentActivity.super.onBackPressed();
        }
    }

    public static final class b {
        public qd a;
    }

    public ComponentActivity() {
        ed edVar = new ed(this);
        this.g = edVar;
        this.h = new tg(this);
        this.j = new OnBackPressedDispatcher(new a());
        int i = Build.VERSION.SDK_INT;
        edVar.a(new bd() { // from class: androidx.activity.ComponentActivity.2
            @Override // defpackage.bd
            public void c(dd ddVar, ad.a aVar) {
                if (aVar == ad.a.ON_STOP) {
                    Window window = ComponentActivity.this.getWindow();
                    View viewPeekDecorView = window != null ? window.peekDecorView() : null;
                    if (viewPeekDecorView != null) {
                        viewPeekDecorView.cancelPendingInputEvents();
                    }
                }
            }
        });
        edVar.a(new bd() { // from class: androidx.activity.ComponentActivity.3
            @Override // defpackage.bd
            public void c(dd ddVar, ad.a aVar) {
                if (aVar != ad.a.ON_DESTROY || ComponentActivity.this.isChangingConfigurations()) {
                    return;
                }
                ComponentActivity.this.getViewModelStore().a();
            }
        });
        if (i <= 23) {
            edVar.a(new ImmLeaksCleaner(this));
        }
    }

    @Override // defpackage.t
    public final OnBackPressedDispatcher b() {
        return this.j;
    }

    @Override // androidx.core.app.ComponentActivity, defpackage.dd
    public ad getLifecycle() {
        return this.g;
    }

    @Override // defpackage.ug
    public final sg getSavedStateRegistry() {
        return this.h.b;
    }

    @Override // defpackage.rd
    public qd getViewModelStore() {
        if (getApplication() == null) {
            throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
        }
        if (this.i == null) {
            b bVar = (b) getLastNonConfigurationInstance();
            if (bVar != null) {
                this.i = bVar.a;
            }
            if (this.i == null) {
                this.i = new qd();
            }
        }
        return this.i;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        this.j.a();
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.h.a(bundle);
        ld.b(this);
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        b bVar;
        qd qdVar = this.i;
        if (qdVar == null && (bVar = (b) getLastNonConfigurationInstance()) != null) {
            qdVar = bVar.a;
        }
        if (qdVar == null) {
            return null;
        }
        b bVar2 = new b();
        bVar2.a = qdVar;
        return bVar2;
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        ed edVar = this.g;
        if (edVar instanceof ed) {
            edVar.f(ad.b.CREATED);
        }
        super.onSaveInstanceState(bundle);
        this.h.b(bundle);
    }
}
