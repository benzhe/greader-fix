package defpackage;

import android.app.AlertDialog;
import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.gms.ads.impl.R;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import java.util.Map;
import org.json.JSONException;

/* loaded from: classes.dex */
public final class nj0 extends yj0 {
    public final Map<String, String> c;
    public final Context d;
    public String e;
    public long f;
    public long g;
    public String h;
    public String i;

    public nj0(xw0 xw0Var, Map<String, String> map) throws NumberFormatException {
        long j;
        super(xw0Var, "createCalendarEvent");
        this.c = map;
        this.d = xw0Var.a();
        this.e = g(NSRSS20.DESCR);
        this.h = g("summary");
        String str = map.get("start_ticks");
        long j2 = -1;
        if (str == null) {
            j = -1;
        } else {
            try {
                j = Long.parseLong(str);
            } catch (NumberFormatException unused) {
            }
        }
        this.f = j;
        String str2 = this.c.get("end_ticks");
        if (str2 != null) {
            try {
                j2 = Long.parseLong(str2);
            } catch (NumberFormatException unused2) {
            }
        }
        this.g = j2;
        this.i = g("location");
    }

    public final void f() throws JSONException {
        if (this.d == null) {
            d("Activity context is not available.");
            return;
        }
        zzr.zzkv();
        if (!zzj.zzar(this.d).c()) {
            d("This feature is not available on the device.");
            return;
        }
        zzr.zzkv();
        AlertDialog.Builder builderZzaq = zzj.zzaq(this.d);
        Resources resourcesA = zzr.zzkz().a();
        builderZzaq.setTitle(resourcesA != null ? resourcesA.getString(R.string.s5) : "Create calendar event");
        builderZzaq.setMessage(resourcesA != null ? resourcesA.getString(R.string.s6) : "Allow Ad to create a calendar event?");
        builderZzaq.setPositiveButton(resourcesA != null ? resourcesA.getString(R.string.s3) : "Accept", new qj0(this));
        builderZzaq.setNegativeButton(resourcesA != null ? resourcesA.getString(R.string.s4) : "Decline", new pj0(this));
        builderZzaq.create().show();
    }

    public final String g(String str) {
        return TextUtils.isEmpty(this.c.get(str)) ? "" : this.c.get(str);
    }
}
