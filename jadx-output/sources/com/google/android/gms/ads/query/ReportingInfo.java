package com.google.android.gms.ads.query;

import android.net.Uri;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import defpackage.is0;
import defpackage.px;
import defpackage.rl0;
import defpackage.sl0;
import defpackage.tl0;
import defpackage.ul0;
import defpackage.y20;
import defpackage.zq0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class ReportingInfo {
    public final sl0 a;

    public static final class Builder {
        public final tl0 a;

        public Builder(View view) {
            tl0 tl0Var = new tl0();
            this.a = tl0Var;
            tl0Var.a = view;
        }

        public final ReportingInfo build() {
            return new ReportingInfo(this, null);
        }

        public final Builder setAssetViews(Map<String, View> map) {
            tl0 tl0Var = this.a;
            tl0Var.b.clear();
            for (Map.Entry<String, View> entry : map.entrySet()) {
                View value = entry.getValue();
                if (value != null) {
                    tl0Var.b.put(entry.getKey(), new WeakReference<>(value));
                }
            }
            return this;
        }
    }

    public ReportingInfo(Builder builder, px pxVar) {
        this.a = new sl0(builder.a);
    }

    public final void reportTouchEvent(MotionEvent motionEvent) {
        zq0 zq0Var = this.a.c;
        if (zq0Var == null) {
            is0.zzdz("Failed to get internal reporting info generator.");
            return;
        }
        try {
            zq0Var.o0(new y20(motionEvent));
        } catch (RemoteException unused) {
            is0.zzex("Failed to call remote method.");
        }
    }

    public final void updateClickUrl(Uri uri, UpdateClickUrlCallback updateClickUrlCallback) {
        sl0 sl0Var = this.a;
        if (sl0Var.c == null) {
            updateClickUrlCallback.onFailure("Failed to get internal reporting info generator.");
        }
        try {
            sl0Var.c.U5(new ArrayList(Arrays.asList(uri)), new y20(sl0Var.a), new ul0(updateClickUrlCallback));
        } catch (RemoteException e) {
            String strValueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 16);
            sb.append("Internal error: ");
            sb.append(strValueOf);
            updateClickUrlCallback.onFailure(sb.toString());
        }
    }

    public final void updateImpressionUrls(List<Uri> list, UpdateImpressionUrlsCallback updateImpressionUrlsCallback) {
        sl0 sl0Var = this.a;
        if (sl0Var.c == null) {
            updateImpressionUrlsCallback.onFailure("Failed to get internal reporting info generator.");
        }
        try {
            sl0Var.c.h1(list, new y20(sl0Var.a), new rl0(updateImpressionUrlsCallback));
        } catch (RemoteException e) {
            String strValueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 16);
            sb.append("Internal error: ");
            sb.append(strValueOf);
            updateImpressionUrlsCallback.onFailure(sb.toString());
        }
    }
}
