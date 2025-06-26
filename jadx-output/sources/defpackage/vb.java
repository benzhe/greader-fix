package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import defpackage.d0;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* loaded from: classes.dex */
public abstract class vb<E> extends sb {
    public final Activity e;
    public final Context f;
    public final Handler g;
    public final int h;
    public final xb i;

    public vb(FragmentActivity fragmentActivity) {
        Handler handler = new Handler();
        this.i = new xb();
        this.e = fragmentActivity;
        d0.h.h(fragmentActivity, "context == null");
        this.f = fragmentActivity;
        d0.h.h(handler, "handler == null");
        this.g = handler;
        this.h = 0;
    }

    public abstract void d(Fragment fragment);

    public abstract void e(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public abstract E f();

    public abstract LayoutInflater g();

    public abstract int h();

    public abstract boolean i();

    public abstract void j(Fragment fragment, String[] strArr, int i);

    public abstract boolean k(Fragment fragment);

    public abstract boolean l(String str);

    public abstract void m(Fragment fragment, Intent intent, int i, Bundle bundle);

    public abstract void n(Fragment fragment, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException;

    public abstract void o();
}
