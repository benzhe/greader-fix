package com.google.android.youtube.player;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import com.google.android.youtube.player.YouTubeBaseActivity;
import com.google.android.youtube.player.internal.n;
import defpackage.ad5;
import defpackage.c50;
import defpackage.dd5;
import defpackage.gd5;
import defpackage.hd5;
import defpackage.nc5;
import defpackage.oc5;
import defpackage.rc5;
import defpackage.tc5;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public final class YouTubePlayerView extends ViewGroup implements oc5.e {
    public static final /* synthetic */ int p = 0;
    public final a e;
    public final Set<View> f;
    public final b g;
    public tc5 h;
    public dd5 i;
    public View j;
    public n k;
    public oc5.e l;
    public Bundle m;
    public oc5.b n;
    public boolean o;

    public final class a implements ViewTreeObserver.OnGlobalFocusChangeListener {
        public a(byte b) {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
        public final void onGlobalFocusChanged(View view, View view2) {
            YouTubePlayerView youTubePlayerView = YouTubePlayerView.this;
            if (youTubePlayerView.i == null || !youTubePlayerView.f.contains(view2) || YouTubePlayerView.this.f.contains(view)) {
                return;
            }
            dd5 dd5Var = YouTubePlayerView.this.i;
            Objects.requireNonNull(dd5Var);
            try {
                dd5Var.b.l();
            } catch (RemoteException e) {
                throw new ad5(e);
            }
        }
    }

    public interface b {
        void a(YouTubePlayerView youTubePlayerView);

        void b(YouTubePlayerView youTubePlayerView, String str, oc5.b bVar);
    }

    public YouTubePlayerView(Context context) {
        this(context, null);
    }

    public YouTubePlayerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public YouTubePlayerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        if (!(context instanceof YouTubeBaseActivity)) {
            throw new IllegalStateException("A YouTubePlayerView can only be created with an Activity  which extends YouTubeBaseActivity as its context.");
        }
        YouTubeBaseActivity.a aVar = ((YouTubeBaseActivity) context).e;
        c50.a(context, "context cannot be null");
        c50.a(aVar, "listener cannot be null");
        this.g = aVar;
        if (getBackground() == null) {
            setBackgroundColor(-16777216);
        }
        setClipToPadding(false);
        n nVar = new n(context);
        this.k = nVar;
        requestTransparentRegion(nVar);
        View view = this.k;
        b(view);
        super.addView(view);
        this.f = new HashSet();
        this.e = new a((byte) 0);
    }

    public static void d(YouTubePlayerView youTubePlayerView, Activity activity) {
        try {
            boolean zY0 = false;
            dd5 dd5Var = new dd5(youTubePlayerView.h, rc5.a.b(activity, youTubePlayerView.h, false));
            youTubePlayerView.i = dd5Var;
            try {
                View view = (View) gd5.Z(dd5Var.b.n1());
                youTubePlayerView.j = view;
                youTubePlayerView.b(view);
                super.addView(view);
                youTubePlayerView.removeView(youTubePlayerView.k);
                youTubePlayerView.g.a(youTubePlayerView);
                if (youTubePlayerView.n != null) {
                    Bundle bundle = youTubePlayerView.m;
                    if (bundle != null) {
                        dd5 dd5Var2 = youTubePlayerView.i;
                        Objects.requireNonNull(dd5Var2);
                        try {
                            zY0 = dd5Var2.b.Y0(bundle);
                            youTubePlayerView.m = null;
                        } catch (RemoteException e) {
                            throw new ad5(e);
                        }
                    }
                    youTubePlayerView.n.a(youTubePlayerView.l, youTubePlayerView.i, zY0);
                    youTubePlayerView.n = null;
                }
            } catch (RemoteException e2) {
                throw new ad5(e2);
            }
        } catch (hd5.a e3) {
            Log.e("YouTubeAndroidPlayerAPI", "Error creating YouTubePlayerView", e3);
            youTubePlayerView.c(nc5.INTERNAL_ERROR);
        }
    }

    public final void a() {
        dd5 dd5Var = this.i;
        if (dd5Var != null) {
            Objects.requireNonNull(dd5Var);
            try {
                dd5Var.b.m();
            } catch (RemoteException e) {
                throw new ad5(e);
            }
        }
    }

    @Override // android.view.View
    public final void addFocusables(ArrayList<View> arrayList, int i) {
        ArrayList<View> arrayList2 = new ArrayList<>();
        super.addFocusables(arrayList2, i);
        arrayList.addAll(arrayList2);
        this.f.clear();
        this.f.addAll(arrayList2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        ArrayList<View> arrayList2 = new ArrayList<>();
        super.addFocusables(arrayList2, i, i2);
        arrayList.addAll(arrayList2);
        this.f.clear();
        this.f.addAll(arrayList2);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view) {
        b(view);
        super.addView(view);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i) {
        b(view);
        super.addView(view, i);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, int i2) {
        b(view);
        super.addView(view, i, i2);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        b(view);
        super.addView(view, i, layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        b(view);
        super.addView(view, layoutParams);
    }

    public final void b(View view) {
        if (!(view == this.k || (this.i != null && view == this.j))) {
            throw new UnsupportedOperationException("No views can be added on top of the player");
        }
    }

    public final void c(nc5 nc5Var) {
        this.i = null;
        n nVar = this.k;
        nVar.e.setVisibility(8);
        nVar.f.setVisibility(0);
        oc5.b bVar = this.n;
        if (bVar != null) {
            bVar.b(this.l, nc5Var);
            this.n = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void clearChildFocus(View view) {
        if (hasFocusable()) {
            requestFocus();
        } else {
            super.clearChildFocus(view);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (this.i != null) {
            if (keyEvent.getAction() == 0) {
                dd5 dd5Var = this.i;
                int keyCode = keyEvent.getKeyCode();
                Objects.requireNonNull(dd5Var);
                try {
                    return dd5Var.b.k2(keyCode, keyEvent) || super.dispatchKeyEvent(keyEvent);
                } catch (RemoteException e) {
                    throw new ad5(e);
                }
            }
            if (keyEvent.getAction() == 1) {
                dd5 dd5Var2 = this.i;
                int keyCode2 = keyEvent.getKeyCode();
                Objects.requireNonNull(dd5Var2);
                try {
                    return dd5Var2.b.f5(keyCode2, keyEvent) || super.dispatchKeyEvent(keyEvent);
                } catch (RemoteException e2) {
                    throw new ad5(e2);
                }
            }
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    public final void e() {
        dd5 dd5Var = this.i;
        if (dd5Var != null) {
            Objects.requireNonNull(dd5Var);
            try {
                dd5Var.b.c4();
            } catch (RemoteException e) {
                throw new ad5(e);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void focusableViewAvailable(View view) {
        super.focusableViewAvailable(view);
        this.f.add(view);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnGlobalFocusChangeListener(this.e);
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        dd5 dd5Var = this.i;
        if (dd5Var != null) {
            Objects.requireNonNull(dd5Var);
            try {
                dd5Var.b.t1(configuration);
            } catch (RemoteException e) {
                throw new ad5(e);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnGlobalFocusChangeListener(this.e);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (getChildCount() > 0) {
            getChildAt(0).layout(0, 0, i3 - i, i4 - i2);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        if (getChildCount() <= 0) {
            setMeasuredDimension(0, 0);
            return;
        }
        View childAt = getChildAt(0);
        childAt.measure(i, i2);
        setMeasuredDimension(childAt.getMeasuredWidth(), childAt.getMeasuredHeight());
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        this.f.add(view2);
    }

    @Override // android.view.ViewGroup
    public final void setClipToPadding(boolean z) {
    }

    @Override // android.view.View
    public final void setPadding(int i, int i2, int i3, int i4) {
    }
}
