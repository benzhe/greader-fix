package defpackage;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.util.zzbn;
import com.google.android.gms.internal.ads.zzvt;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public final class pl1 {
    public final mp1 a;
    public final io1 b;
    public ViewTreeObserver.OnScrollChangedListener c = null;

    public pl1(mp1 mp1Var, io1 io1Var) {
        this.a = mp1Var;
        this.b = io1Var;
    }

    public static int a(Context context, String str, int i) throws NumberFormatException {
        try {
            i = Integer.parseInt(str);
        } catch (NumberFormatException unused) {
        }
        zr0 zr0Var = os3.j.a;
        return zr0.a(context.getResources().getDisplayMetrics(), i);
    }

    public final View b(final View view, final WindowManager windowManager) throws ix0 {
        xw0 xw0VarA = this.a.a(zzvt.C(), null, null);
        xw0VarA.getView().setVisibility(4);
        xw0VarA.getView().setContentDescription("policy_validator");
        xw0VarA.o("/sendMessageToSdk", new kb0(this) { // from class: ol1
            public final pl1 a;

            {
                this.a = this;
            }

            @Override // defpackage.kb0
            public final void a(Object obj, Map map) {
                this.a.b.b("sendMessageToNativeJs", map);
            }
        });
        xw0VarA.o("/hideValidatorOverlay", new kb0(this, windowManager, view) { // from class: rl1
            public final pl1 a;
            public final WindowManager b;
            public final View c;

            {
                this.a = this;
                this.b = windowManager;
                this.c = view;
            }

            @Override // defpackage.kb0
            public final void a(Object obj, Map map) {
                pl1 pl1Var = this.a;
                WindowManager windowManager2 = this.b;
                View view2 = this.c;
                xw0 xw0Var = (xw0) obj;
                Objects.requireNonNull(pl1Var);
                is0.zzdz("Hide native ad policy validator overlay.");
                xw0Var.getView().setVisibility(8);
                if (xw0Var.getView().getWindowToken() != null) {
                    windowManager2.removeView(xw0Var.getView());
                }
                xw0Var.destroy();
                ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
                if (pl1Var.c == null || viewTreeObserver == null || !viewTreeObserver.isAlive()) {
                    return;
                }
                viewTreeObserver.removeOnScrollChangedListener(pl1Var.c);
            }
        });
        xw0VarA.o("/open", new rb0(null, null, null, null, null));
        this.b.c(new WeakReference(xw0VarA), "/loadNativeAdPolicyViolations", new kb0(this, view, windowManager) { // from class: ql1
            public final pl1 a;
            public final View b;
            public final WindowManager c;

            {
                this.a = this;
                this.b = view;
                this.c = windowManager;
            }

            @Override // defpackage.kb0
            public final void a(Object obj, final Map map) throws NumberFormatException {
                final pl1 pl1Var = this.a;
                final View view2 = this.b;
                final WindowManager windowManager2 = this.c;
                final xw0 xw0Var = (xw0) obj;
                Objects.requireNonNull(pl1Var);
                ((ww0) xw0Var.I()).k = new gy0(pl1Var, map) { // from class: vl1
                    public final pl1 a;
                    public final Map b;

                    {
                        this.a = pl1Var;
                        this.b = map;
                    }

                    @Override // defpackage.gy0
                    public final void a(boolean z) {
                        pl1 pl1Var2 = this.a;
                        Map map2 = this.b;
                        Objects.requireNonNull(pl1Var2);
                        HashMap map3 = new HashMap();
                        map3.put("messageType", "validatorHtmlLoaded");
                        map3.put("id", (String) map2.get("id"));
                        pl1Var2.b.b("sendMessageToNativeJs", map3);
                    }
                };
                if (map == null) {
                    return;
                }
                Context context = view2.getContext();
                int iA = pl1.a(context, (String) map.get("validator_width"), ((Integer) os3.j.f.a(y40.H4)).intValue());
                int iA2 = pl1.a(context, (String) map.get("validator_height"), ((Integer) os3.j.f.a(y40.I4)).intValue());
                int iA3 = pl1.a(context, (String) map.get("validator_x"), 0);
                int iA4 = pl1.a(context, (String) map.get("validator_y"), 0);
                xw0Var.J(jy0.d(iA, iA2));
                try {
                    xw0Var.getWebView().getSettings().setUseWideViewPort(((Boolean) os3.j.f.a(y40.J4)).booleanValue());
                    xw0Var.getWebView().getSettings().setLoadWithOverviewMode(((Boolean) os3.j.f.a(y40.K4)).booleanValue());
                } catch (NullPointerException unused) {
                }
                final WindowManager.LayoutParams layoutParamsZzaaj = zzbn.zzaaj();
                layoutParamsZzaaj.x = iA3;
                layoutParamsZzaaj.y = iA4;
                windowManager2.updateViewLayout(xw0Var.getView(), layoutParamsZzaaj);
                final String str = (String) map.get("orientation");
                Rect rect = new Rect();
                if (view2.getGlobalVisibleRect(rect)) {
                    final int i = (("1".equals(str) || "2".equals(str)) ? rect.bottom : rect.top) - iA4;
                    pl1Var.c = new ViewTreeObserver.OnScrollChangedListener(view2, xw0Var, str, layoutParamsZzaaj, i, windowManager2) { // from class: sl1
                        public final View e;
                        public final xw0 f;
                        public final String g;
                        public final WindowManager.LayoutParams h;
                        public final int i;
                        public final WindowManager j;

                        {
                            this.e = view2;
                            this.f = xw0Var;
                            this.g = str;
                            this.h = layoutParamsZzaaj;
                            this.i = i;
                            this.j = windowManager2;
                        }

                        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
                        public final void onScrollChanged() {
                            View view3 = this.e;
                            xw0 xw0Var2 = this.f;
                            String str2 = this.g;
                            WindowManager.LayoutParams layoutParams = this.h;
                            int i2 = this.i;
                            WindowManager windowManager3 = this.j;
                            Rect rect2 = new Rect();
                            if (!view3.getGlobalVisibleRect(rect2) || xw0Var2.getView().getWindowToken() == null) {
                                return;
                            }
                            if ("1".equals(str2) || "2".equals(str2)) {
                                layoutParams.y = rect2.bottom - i2;
                            } else {
                                layoutParams.y = rect2.top - i2;
                            }
                            windowManager3.updateViewLayout(xw0Var2.getView(), layoutParams);
                        }
                    };
                    ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
                    if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                        viewTreeObserver.addOnScrollChangedListener(pl1Var.c);
                    }
                }
                String str2 = (String) map.get("overlay_url");
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                xw0Var.loadUrl(str2);
            }
        });
        this.b.c(new WeakReference(xw0VarA), "/showValidatorOverlay", tl1.a);
        return xw0VarA.getView();
    }
}
