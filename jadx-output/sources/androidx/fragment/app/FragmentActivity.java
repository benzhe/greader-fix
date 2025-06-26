package androidx.fragment.app;

import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.activity.ComponentActivity;
import androidx.activity.OnBackPressedDispatcher;
import defpackage.ad;
import defpackage.d0;
import defpackage.ed;
import defpackage.f7;
import defpackage.i4;
import defpackage.n4;
import defpackage.qd;
import defpackage.rd;
import defpackage.sd;
import defpackage.t;
import defpackage.tb;
import defpackage.vb;
import defpackage.wb;
import defpackage.xb;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Objects;
import okhttp3.internal.http2.Settings;

/* loaded from: classes.dex */
public class FragmentActivity extends ComponentActivity implements f7.b, f7.c {
    public final tb k;
    public final ed l;
    public boolean m;
    public boolean n;
    public boolean o;
    public boolean p;
    public boolean q;
    public boolean r;
    public int s;
    public n4<String> t;

    public class a extends vb<FragmentActivity> implements rd, t {
        public a() {
            super(FragmentActivity.this);
        }

        @Override // defpackage.sb
        public View a(int i) {
            return FragmentActivity.this.findViewById(i);
        }

        @Override // defpackage.t
        public OnBackPressedDispatcher b() {
            return FragmentActivity.this.j;
        }

        @Override // defpackage.sb
        public boolean c() {
            Window window = FragmentActivity.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }

        @Override // defpackage.vb
        public void d(Fragment fragment) {
            FragmentActivity.this.q();
        }

        @Override // defpackage.vb
        public void e(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            FragmentActivity.this.dump(str, null, printWriter, strArr);
        }

        @Override // defpackage.vb
        public FragmentActivity f() {
            return FragmentActivity.this;
        }

        @Override // defpackage.vb
        public LayoutInflater g() {
            return FragmentActivity.this.getLayoutInflater().cloneInContext(FragmentActivity.this);
        }

        @Override // defpackage.dd
        public ad getLifecycle() {
            return FragmentActivity.this.l;
        }

        @Override // defpackage.rd
        public qd getViewModelStore() {
            return FragmentActivity.this.getViewModelStore();
        }

        @Override // defpackage.vb
        public int h() {
            Window window = FragmentActivity.this.getWindow();
            if (window == null) {
                return 0;
            }
            return window.getAttributes().windowAnimations;
        }

        @Override // defpackage.vb
        public boolean i() {
            return FragmentActivity.this.getWindow() != null;
        }

        @Override // defpackage.vb
        public void j(Fragment fragment, String[] strArr, int i) {
            FragmentActivity fragmentActivity = FragmentActivity.this;
            Objects.requireNonNull(fragmentActivity);
            if (i == -1) {
                f7.c(fragmentActivity, strArr, i);
                return;
            }
            FragmentActivity.n(i);
            try {
                fragmentActivity.p = true;
                f7.c(fragmentActivity, strArr, ((fragmentActivity.m(fragment) + 1) << 16) + (i & Settings.DEFAULT_INITIAL_WINDOW_SIZE));
            } finally {
                fragmentActivity.p = false;
            }
        }

        @Override // defpackage.vb
        public boolean k(Fragment fragment) {
            return !FragmentActivity.this.isFinishing();
        }

        @Override // defpackage.vb
        public boolean l(String str) {
            FragmentActivity fragmentActivity = FragmentActivity.this;
            int i = f7.b;
            if (Build.VERSION.SDK_INT >= 23) {
                return fragmentActivity.shouldShowRequestPermissionRationale(str);
            }
            return false;
        }

        @Override // defpackage.vb
        public void m(Fragment fragment, Intent intent, int i, Bundle bundle) {
            FragmentActivity fragmentActivity = FragmentActivity.this;
            fragmentActivity.r = true;
            try {
                if (i == -1) {
                    int i2 = f7.b;
                    fragmentActivity.startActivityForResult(intent, -1, bundle);
                } else {
                    FragmentActivity.n(i);
                    int iM = ((fragmentActivity.m(fragment) + 1) << 16) + (i & Settings.DEFAULT_INITIAL_WINDOW_SIZE);
                    int i3 = f7.b;
                    fragmentActivity.startActivityForResult(intent, iM, bundle);
                }
            } finally {
                fragmentActivity.r = false;
            }
        }

        @Override // defpackage.vb
        public void n(Fragment fragment, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
            FragmentActivity fragmentActivity = FragmentActivity.this;
            fragmentActivity.q = true;
            try {
                if (i == -1) {
                    int i5 = f7.b;
                    fragmentActivity.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
                } else {
                    FragmentActivity.n(i);
                    int iM = ((fragmentActivity.m(fragment) + 1) << 16) + (i & Settings.DEFAULT_INITIAL_WINDOW_SIZE);
                    int i6 = f7.b;
                    fragmentActivity.startIntentSenderForResult(intentSender, iM, intent, i2, i3, i4, bundle);
                }
            } finally {
                fragmentActivity.q = false;
            }
        }

        @Override // defpackage.vb
        public void o() {
            FragmentActivity.this.r();
        }
    }

    public FragmentActivity() {
        a aVar = new a();
        d0.h.h(aVar, "callbacks == null");
        this.k = new tb(aVar);
        this.l = new ed(this);
        this.o = true;
    }

    public static void n(int i) {
        if ((i & (-65536)) != 0) {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        }
    }

    public static boolean p(wb wbVar, ad.b bVar) {
        boolean zP = false;
        for (Fragment fragment : wbVar.d()) {
            if (fragment != null) {
                if (((ed) fragment.getLifecycle()).b.compareTo(ad.b.STARTED) >= 0) {
                    fragment.mLifecycleRegistry.f(bVar);
                    zP = true;
                }
                if (fragment.getHost() != null) {
                    zP |= p(fragment.getChildFragmentManager(), bVar);
                }
            }
        }
        return zP;
    }

    @Override // f7.c
    public final void a(int i) {
        if (this.p || i == -1) {
            return;
        }
        n(i);
    }

    @Override // android.app.Activity
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String str2 = str + "  ";
        printWriter.print(str2);
        printWriter.print("mCreated=");
        printWriter.print(this.m);
        printWriter.print(" mResumed=");
        printWriter.print(this.n);
        printWriter.print(" mStopped=");
        printWriter.print(this.o);
        if (getApplication() != null) {
            sd.b(this).a(str2, fileDescriptor, printWriter, strArr);
        }
        this.k.a.i.R(str, fileDescriptor, printWriter, strArr);
    }

    public final int m(Fragment fragment) {
        if (this.t.j() >= 65534) {
            throw new IllegalStateException("Too many pending Fragment activity results.");
        }
        while (true) {
            n4<String> n4Var = this.t;
            int i = this.s;
            if (n4Var.e) {
                n4Var.d();
            }
            if (i4.a(n4Var.f, n4Var.h, i) < 0) {
                int i2 = this.s;
                this.t.h(i2, fragment.mWho);
                this.s = (this.s + 1) % 65534;
                return i2;
            }
            this.s = (this.s + 1) % 65534;
        }
    }

    public wb o() {
        return this.k.a.i;
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        this.k.a();
        int i3 = i >> 16;
        if (i3 == 0) {
            int i4 = f7.b;
            super.onActivityResult(i, i2, intent);
            return;
        }
        int i5 = i3 - 1;
        String strE = this.t.e(i5);
        this.t.i(i5);
        if (strE == null) {
            Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
            return;
        }
        Fragment fragmentY = this.k.a.i.Y(strE);
        if (fragmentY != null) {
            fragmentY.onActivityResult(i & Settings.DEFAULT_INITIAL_WINDOW_SIZE, i2, intent);
            return;
        }
        Log.w("FragmentActivity", "Activity result no fragment exists for who: " + strE);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.k.a();
        this.k.a.i.p(configuration);
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        vb<?> vbVar = this.k.a;
        vbVar.i.i(vbVar, vbVar, null);
        if (bundle != null) {
            Parcelable parcelable = bundle.getParcelable("android:support:fragments");
            vb<?> vbVar2 = this.k.a;
            if (!(vbVar2 instanceof rd)) {
                throw new IllegalStateException("Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you're still using retainNestedNonConfig().");
            }
            vbVar2.i.p0(parcelable);
            if (bundle.containsKey("android:support:next_request_index")) {
                this.s = bundle.getInt("android:support:next_request_index");
                int[] intArray = bundle.getIntArray("android:support:request_indicies");
                String[] stringArray = bundle.getStringArray("android:support:request_fragment_who");
                if (intArray == null || stringArray == null || intArray.length != stringArray.length) {
                    Log.w("FragmentActivity", "Invalid requestCode mapping in savedInstanceState.");
                } else {
                    this.t = new n4<>(intArray.length);
                    for (int i = 0; i < intArray.length; i++) {
                        this.t.h(intArray[i], stringArray[i]);
                    }
                }
            }
        }
        if (this.t == null) {
            this.t = new n4<>(10);
            this.s = 0;
        }
        super.onCreate(bundle);
        this.l.d(ad.a.ON_CREATE);
        this.k.a.i.r();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i, Menu menu) {
        if (i != 0) {
            return super.onCreatePanelMenu(i, menu);
        }
        boolean zOnCreatePanelMenu = super.onCreatePanelMenu(i, menu);
        tb tbVar = this.k;
        return zOnCreatePanelMenu | tbVar.a.i.s(menu, getMenuInflater());
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View viewOnCreateView = this.k.a.i.onCreateView(view, str, context, attributeSet);
        return viewOnCreateView == null ? super.onCreateView(view, str, context, attributeSet) : viewOnCreateView;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.k.a.i.t();
        this.l.d(ad.a.ON_DESTROY);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        this.k.a.i.u();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        if (i == 0) {
            return this.k.a.i.K(menuItem);
        }
        if (i != 6) {
            return false;
        }
        return this.k.a.i.q(menuItem);
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z) {
        this.k.a.i.v(z);
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.k.a();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        if (i == 0) {
            this.k.a.i.L(menu);
        }
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.n = false;
        this.k.a.i.P(3);
        this.l.d(ad.a.ON_PAUSE);
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z) {
        this.k.a.i.N(z);
    }

    @Override // android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        this.l.d(ad.a.ON_RESUME);
        xb xbVar = this.k.a.i;
        xbVar.y = false;
        xbVar.z = false;
        xbVar.P(4);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i, View view, Menu menu) {
        return i == 0 ? super.onPreparePanel(0, view, menu) | this.k.a.i.O(menu) : super.onPreparePanel(i, view, menu);
    }

    @Override // android.app.Activity, f7.b
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        this.k.a();
        int i2 = (i >> 16) & Settings.DEFAULT_INITIAL_WINDOW_SIZE;
        if (i2 != 0) {
            int i3 = i2 - 1;
            String strE = this.t.e(i3);
            this.t.i(i3);
            if (strE == null) {
                Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
                return;
            }
            Fragment fragmentY = this.k.a.i.Y(strE);
            if (fragmentY != null) {
                fragmentY.onRequestPermissionsResult(i & Settings.DEFAULT_INITIAL_WINDOW_SIZE, strArr, iArr);
                return;
            }
            Log.w("FragmentActivity", "Activity result no fragment exists for who: " + strE);
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.n = true;
        this.k.a();
        this.k.a.i.U();
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        while (p(o(), ad.b.CREATED)) {
        }
        this.l.d(ad.a.ON_STOP);
        Parcelable parcelableQ0 = this.k.a.i.q0();
        if (parcelableQ0 != null) {
            bundle.putParcelable("android:support:fragments", parcelableQ0);
        }
        if (this.t.j() > 0) {
            bundle.putInt("android:support:next_request_index", this.s);
            int[] iArr = new int[this.t.j()];
            String[] strArr = new String[this.t.j()];
            for (int i = 0; i < this.t.j(); i++) {
                iArr[i] = this.t.g(i);
                strArr[i] = this.t.k(i);
            }
            bundle.putIntArray("android:support:request_indicies", iArr);
            bundle.putStringArray("android:support:request_fragment_who", strArr);
        }
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        this.o = false;
        if (!this.m) {
            this.m = true;
            xb xbVar = this.k.a.i;
            xbVar.y = false;
            xbVar.z = false;
            xbVar.P(2);
        }
        this.k.a();
        this.k.a.i.U();
        this.l.d(ad.a.ON_START);
        xb xbVar2 = this.k.a.i;
        xbVar2.y = false;
        xbVar2.z = false;
        xbVar2.P(3);
    }

    @Override // android.app.Activity
    public void onStateNotSaved() {
        this.k.a();
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.o = true;
        while (p(o(), ad.b.CREATED)) {
        }
        xb xbVar = this.k.a.i;
        xbVar.z = true;
        xbVar.P(2);
        this.l.d(ad.a.ON_STOP);
    }

    public void q() {
    }

    @Deprecated
    public void r() {
        invalidateOptionsMenu();
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i) {
        if (!this.r && i != -1) {
            n(i);
        }
        super.startActivityForResult(intent, i);
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4) throws IntentSender.SendIntentException {
        if (!this.q && i != -1) {
            n(i);
        }
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View viewOnCreateView = this.k.a.i.onCreateView(null, str, context, attributeSet);
        return viewOnCreateView == null ? super.onCreateView(str, context, attributeSet) : viewOnCreateView;
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i, Bundle bundle) {
        if (!this.r && i != -1) {
            n(i);
        }
        super.startActivityForResult(intent, i, bundle);
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        if (!this.q && i != -1) {
            n(i);
        }
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
    }
}
