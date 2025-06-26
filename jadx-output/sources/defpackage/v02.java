package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzb;
import com.google.android.gms.ads.internal.overlay.zzo;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzbar;
import java.util.Objects;
import java.util.concurrent.Executor;
import org.json.JSONException;

/* loaded from: classes.dex */
public final class v02 implements jz1<qg1> {
    public final Context a;
    public final oh1 b;
    public final Executor c;
    public final qk2 d;

    public v02(Context context, Executor executor, oh1 oh1Var, qk2 qk2Var) {
        this.a = context;
        this.b = oh1Var;
        this.c = executor;
        this.d = qk2Var;
    }

    @Override // defpackage.jz1
    public final boolean a(hl2 hl2Var, sk2 sk2Var) throws JSONException {
        String string;
        Context context = this.a;
        if (!(context instanceof Activity) || !w50.c(context)) {
            return false;
        }
        try {
            string = sk2Var.u.getString("tab_url");
        } catch (Exception unused) {
            string = null;
        }
        return !TextUtils.isEmpty(string);
    }

    @Override // defpackage.jz1
    public final aw2<qg1> b(final hl2 hl2Var, final sk2 sk2Var) throws JSONException {
        String string;
        try {
            string = sk2Var.u.getString("tab_url");
        } catch (Exception unused) {
            string = null;
        }
        final Uri uri = string != null ? Uri.parse(string) : null;
        return vt2.m(vt2.j(null), new cv2(this, uri, hl2Var, sk2Var) { // from class: y02
            public final v02 a;
            public final Uri b;
            public final hl2 c;
            public final sk2 d;

            {
                this.a = this;
                this.b = uri;
                this.c = hl2Var;
                this.d = sk2Var;
            }

            @Override // defpackage.cv2
            public final aw2 a(Object obj) {
                v02 v02Var = this.a;
                Uri uri2 = this.b;
                hl2 hl2Var2 = this.c;
                sk2 sk2Var2 = this.d;
                Objects.requireNonNull(v02Var);
                try {
                    Intent intent = new Intent("android.intent.action.VIEW");
                    if (!intent.hasExtra("android.support.customtabs.extra.SESSION")) {
                        Bundle bundle = new Bundle();
                        bundle.putBinder("android.support.customtabs.extra.SESSION", null);
                        intent.putExtras(bundle);
                    }
                    intent.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", true);
                    intent.putExtras(new Bundle());
                    intent.putExtra("androidx.browser.customtabs.extra.SHARE_STATE", 0);
                    intent.setData(uri2);
                    zzb zzbVar = new zzb(intent, null);
                    xs0 xs0Var = new xs0();
                    sg1 sg1VarA = v02Var.b.a(new v61(hl2Var2, sk2Var2, null), new rg1(new wh1(xs0Var) { // from class: x02
                        public final xs0 a;

                        {
                            this.a = xs0Var;
                        }

                        @Override // defpackage.wh1
                        public final void a(boolean z, Context context) {
                            xs0 xs0Var2 = this.a;
                            try {
                                zzr.zzku();
                                zzo.zza(context, (AdOverlayInfoParcel) xs0Var2.get(), true);
                            } catch (Exception unused2) {
                            }
                        }
                    }));
                    xs0Var.a(new AdOverlayInfoParcel(zzbVar, null, sg1VarA.k(), null, new zzbar(0, 0, false), null));
                    v02Var.d.b(2, 3);
                    return vt2.j(sg1VarA.j());
                } catch (Throwable th) {
                    is0.zzc("Error in CustomTabsAdRenderer", th);
                    throw th;
                }
            }
        }, this.c);
    }
}
