package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import defpackage.ft0;

/* loaded from: classes.dex */
public final class zzbz {
    public final View a;
    public Activity b;
    public boolean c;
    public boolean d;
    public boolean e;
    public ViewTreeObserver.OnGlobalLayoutListener f;

    public zzbz(Activity activity, View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        this.b = activity;
        this.a = view;
        this.f = onGlobalLayoutListener;
    }

    public static ViewTreeObserver c(Activity activity) {
        Window window;
        View decorView;
        if (activity == null || (window = activity.getWindow()) == null || (decorView = window.getDecorView()) == null) {
            return null;
        }
        return decorView.getViewTreeObserver();
    }

    public final void a() {
        ViewTreeObserver viewTreeObserverC;
        if (this.c) {
            return;
        }
        ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.f;
        if (onGlobalLayoutListener != null) {
            Activity activity = this.b;
            if (activity != null && (viewTreeObserverC = c(activity)) != null) {
                viewTreeObserverC.addOnGlobalLayoutListener(onGlobalLayoutListener);
            }
            com.google.android.gms.ads.internal.zzr.zzls();
            ft0.a(this.a, this.f);
        }
        this.c = true;
    }

    public final void b() {
        ViewTreeObserver viewTreeObserverC;
        Activity activity = this.b;
        if (activity != null && this.c) {
            ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.f;
            if (onGlobalLayoutListener != null && (viewTreeObserverC = c(activity)) != null) {
                com.google.android.gms.ads.internal.zzr.zzkx();
                viewTreeObserverC.removeOnGlobalLayoutListener(onGlobalLayoutListener);
            }
            this.c = false;
        }
    }

    public final void onAttachedToWindow() {
        this.d = true;
        if (this.e) {
            a();
        }
    }

    public final void onDetachedFromWindow() {
        this.d = false;
        b();
    }

    public final void zzaal() {
        this.e = true;
        if (this.d) {
            a();
        }
    }

    public final void zzaam() {
        this.e = false;
        b();
    }

    public final void zzj(Activity activity) {
        this.b = activity;
    }
}
