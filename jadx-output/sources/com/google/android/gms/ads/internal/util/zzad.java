package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.PointF;
import android.os.Handler;
import android.text.TextUtils;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.util.zzad;
import defpackage.is0;
import defpackage.jo;
import java.util.ArrayList;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class zzad {
    public final Context a;
    public String b;
    public String c;
    public String d;
    public String e;
    public int f;
    public int g;
    public PointF h;
    public PointF i;
    public Handler j;
    public Runnable k;

    public zzad(Context context) {
        this.f = 0;
        this.k = new Runnable(this) { // from class: bw
            public final zzad e;

            {
                this.e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzad zzadVar = this.e;
                zzadVar.f = 4;
                zzadVar.showDialog();
            }
        };
        this.a = context;
        this.g = ViewConfiguration.get(context).getScaledTouchSlop();
        com.google.android.gms.ads.internal.zzr.zzlj().zzaai();
        this.j = com.google.android.gms.ads.internal.zzr.zzlj().getHandler();
    }

    public final boolean a(float f, float f2, float f3, float f4) {
        return Math.abs(this.h.x - f) < ((float) this.g) && Math.abs(this.h.y - f2) < ((float) this.g) && Math.abs(this.i.x - f3) < ((float) this.g) && Math.abs(this.i.y - f4) < ((float) this.g);
    }

    public final void setAdUnitId(String str) {
        this.c = str;
    }

    public final void showDialog() {
        try {
            if (!(this.a instanceof Activity)) {
                is0.zzey("Can not create dialog without Activity Context");
                return;
            }
            String str = !TextUtils.isEmpty(com.google.android.gms.ads.internal.zzr.zzlf().zzaae()) ? "Creative Preview (Enabled)" : "Creative Preview";
            String str2 = com.google.android.gms.ads.internal.zzr.zzlf().zzaaf() ? "Troubleshooting (Enabled)" : "Troubleshooting";
            ArrayList arrayList = new ArrayList();
            arrayList.add("Ad Information");
            final int size = arrayList.size() - 1;
            arrayList.add(str);
            final int size2 = arrayList.size() - 1;
            arrayList.add(str2);
            final int size3 = arrayList.size() - 1;
            AlertDialog.Builder builder = new AlertDialog.Builder(this.a, com.google.android.gms.ads.internal.zzr.zzkx().zzzy());
            builder.setTitle("Select a Debug Mode").setItems((CharSequence[]) arrayList.toArray(new String[0]), new DialogInterface.OnClickListener(this, size, size2, size3) { // from class: aw
                public final zzad e;
                public final int f;
                public final int g;
                public final int h;

                {
                    this.e = this;
                    this.f = size;
                    this.g = size2;
                    this.h = size3;
                }

                /* JADX WARN: Removed duplicated region for block: B:16:0x007d  */
                @Override // android.content.DialogInterface.OnClickListener
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void onClick(android.content.DialogInterface r5, int r6) {
                    /*
                        r4 = this;
                        com.google.android.gms.ads.internal.util.zzad r5 = r4.e
                        int r0 = r4.f
                        int r1 = r4.g
                        int r2 = r4.h
                        java.util.Objects.requireNonNull(r5)
                        if (r6 != r0) goto La7
                        android.content.Context r6 = r5.a
                        boolean r6 = r6 instanceof android.app.Activity
                        if (r6 != 0) goto L1a
                        java.lang.String r5 = "Can not create dialog without Activity Context"
                        defpackage.is0.zzey(r5)
                        goto Lca
                    L1a:
                        java.lang.String r6 = r5.b
                        boolean r0 = android.text.TextUtils.isEmpty(r6)
                        if (r0 != 0) goto L7d
                        java.lang.String r0 = "\\+"
                        java.lang.String r1 = "%20"
                        java.lang.String r6 = r6.replaceAll(r0, r1)
                        android.net.Uri$Builder r0 = new android.net.Uri$Builder
                        r0.<init>()
                        android.net.Uri$Builder r6 = r0.encodedQuery(r6)
                        android.net.Uri r6 = r6.build()
                        java.lang.StringBuilder r0 = new java.lang.StringBuilder
                        r0.<init>()
                        com.google.android.gms.ads.internal.zzr.zzkv()
                        java.util.Map r6 = com.google.android.gms.ads.internal.util.zzj.zzg(r6)
                        java.util.Set r1 = r6.keySet()
                        java.util.Iterator r1 = r1.iterator()
                    L4b:
                        boolean r2 = r1.hasNext()
                        if (r2 == 0) goto L6e
                        java.lang.Object r2 = r1.next()
                        java.lang.String r2 = (java.lang.String) r2
                        r0.append(r2)
                        java.lang.String r3 = " = "
                        r0.append(r3)
                        java.lang.Object r2 = r6.get(r2)
                        java.lang.String r2 = (java.lang.String) r2
                        r0.append(r2)
                        java.lang.String r2 = "\n\n"
                        r0.append(r2)
                        goto L4b
                    L6e:
                        java.lang.String r6 = r0.toString()
                        java.lang.String r6 = r6.trim()
                        boolean r0 = android.text.TextUtils.isEmpty(r6)
                        if (r0 != 0) goto L7d
                        goto L7f
                    L7d:
                        java.lang.String r6 = "No debug information"
                    L7f:
                        android.app.AlertDialog$Builder r0 = new android.app.AlertDialog$Builder
                        android.content.Context r1 = r5.a
                        r0.<init>(r1)
                        r0.setMessage(r6)
                        java.lang.String r1 = "Ad Information"
                        r0.setTitle(r1)
                        dw r1 = new dw
                        r1.<init>(r5, r6)
                        java.lang.String r5 = "Share"
                        r0.setPositiveButton(r5, r1)
                        android.content.DialogInterface$OnClickListener r5 = defpackage.cw.e
                        java.lang.String r6 = "Close"
                        r0.setNegativeButton(r6, r5)
                        android.app.AlertDialog r5 = r0.create()
                        r5.show()
                        goto Lca
                    La7:
                        if (r6 != r1) goto Lb9
                        java.lang.String r6 = "Debug mode [Creative Preview] selected."
                        defpackage.is0.zzdz(r6)
                        zv2 r6 = defpackage.ms0.a
                        fw r0 = new fw
                        r0.<init>(r5)
                        r6.execute(r0)
                        goto Lca
                    Lb9:
                        if (r6 != r2) goto Lca
                        java.lang.String r6 = "Debug mode [Troubleshooting] selected."
                        defpackage.is0.zzdz(r6)
                        zv2 r6 = defpackage.ms0.a
                        ew r0 = new ew
                        r0.<init>(r5)
                        r6.execute(r0)
                    Lca:
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: defpackage.aw.onClick(android.content.DialogInterface, int):void");
                }
            });
            builder.create().show();
        } catch (WindowManager.BadTokenException e) {
            zzd.zza("", e);
        }
    }

    public final String toString() {
        StringBuilder sbW = jo.w(100, "{Dialog: ");
        sbW.append(this.b);
        sbW.append(",DebugSignal: ");
        sbW.append(this.e);
        sbW.append(",AFMA Version: ");
        sbW.append(this.d);
        sbW.append(",Ad Unit ID: ");
        return jo.s(sbW, this.c, StringSubstitutor.DEFAULT_VAR_END);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzd(android.view.MotionEvent r11) {
        /*
            r10 = this;
            int r0 = r11.getActionMasked()
            int r1 = r11.getHistorySize()
            int r2 = r11.getPointerCount()
            r3 = 0
            if (r0 != 0) goto L21
            r10.f = r3
            android.graphics.PointF r0 = new android.graphics.PointF
            float r1 = r11.getX(r3)
            float r11 = r11.getY(r3)
            r0.<init>(r1, r11)
            r10.h = r0
            return
        L21:
            int r4 = r10.f
            r5 = -1
            if (r4 != r5) goto L27
            return
        L27:
            r6 = 5
            r7 = 1
            if (r4 != 0) goto L56
            if (r0 != r6) goto L56
            r10.f = r6
            android.graphics.PointF r0 = new android.graphics.PointF
            float r1 = r11.getX(r7)
            float r11 = r11.getY(r7)
            r0.<init>(r1, r11)
            r10.i = r0
            android.os.Handler r11 = r10.j
            java.lang.Runnable r0 = r10.k
            o40<java.lang.Long> r1 = defpackage.y40.C2
            os3 r2 = defpackage.os3.j
            u40 r2 = r2.f
            java.lang.Object r1 = r2.a(r1)
            java.lang.Long r1 = (java.lang.Long) r1
            long r1 = r1.longValue()
            r11.postDelayed(r0, r1)
            return
        L56:
            if (r4 != r6) goto La0
            r4 = 2
            if (r2 == r4) goto L5d
        L5b:
            r3 = 1
            goto L95
        L5d:
            if (r0 != r4) goto L95
            r0 = 0
            r2 = 0
        L61:
            if (r0 >= r1) goto L7d
            float r4 = r11.getHistoricalX(r3, r0)
            float r6 = r11.getHistoricalY(r3, r0)
            float r8 = r11.getHistoricalX(r7, r0)
            float r9 = r11.getHistoricalY(r7, r0)
            boolean r4 = r10.a(r4, r6, r8, r9)
            if (r4 != 0) goto L7a
            r2 = 1
        L7a:
            int r0 = r0 + 1
            goto L61
        L7d:
            float r0 = r11.getX()
            float r1 = r11.getY()
            float r3 = r11.getX(r7)
            float r11 = r11.getY(r7)
            boolean r11 = r10.a(r0, r1, r3, r11)
            if (r11 != 0) goto L94
            goto L5b
        L94:
            r3 = r2
        L95:
            if (r3 == 0) goto La0
            r10.f = r5
            android.os.Handler r11 = r10.j
            java.lang.Runnable r0 = r10.k
            r11.removeCallbacks(r0)
        La0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzad.zzd(android.view.MotionEvent):void");
    }

    public final void zzeo(String str) {
        this.b = str;
    }

    public final void zzep(String str) {
        this.e = str;
    }

    public final void zzu(String str) {
        this.d = str;
    }

    public zzad(Context context, String str) {
        this(context);
        this.b = str;
    }
}
