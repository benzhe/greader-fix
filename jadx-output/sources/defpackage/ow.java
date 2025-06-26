package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.webkit.WebSettings;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class ow implements Callable<String> {
    public final /* synthetic */ Context e;
    public final /* synthetic */ Context f;

    public ow(Context context, Context context2) {
        this.e = context;
        this.f = context2;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() throws Exception {
        SharedPreferences sharedPreferences;
        boolean z = false;
        if (this.e != null) {
            zzd.zzed("Attempting to read user agent from Google Play Services.");
            sharedPreferences = this.e.getSharedPreferences("admob_user_agent", 0);
        } else {
            zzd.zzed("Attempting to read user agent from local cache.");
            sharedPreferences = this.f.getSharedPreferences("admob_user_agent", 0);
            z = true;
        }
        String string = sharedPreferences.getString("user_agent", "");
        if (TextUtils.isEmpty(string)) {
            zzd.zzed("Reading user agent from WebSettings");
            string = WebSettings.getDefaultUserAgent(this.f);
            if (z) {
                sharedPreferences.edit().putString("user_agent", string).apply();
                zzd.zzed("Persisting user agent.");
            }
        }
        return string;
    }
}
