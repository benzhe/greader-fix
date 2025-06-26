package defpackage;

import android.text.TextUtils;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class fw0 implements Runnable {
    public final /* synthetic */ String e;
    public final /* synthetic */ String f;
    public final /* synthetic */ String g;
    public final /* synthetic */ String h;
    public final /* synthetic */ zv0 i;

    public fw0(zv0 zv0Var, String str, String str2, String str3, String str4) {
        this.i = zv0Var;
        this.e = str;
        this.f = str2;
        this.g = str3;
        this.h = str4;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // java.lang.Runnable
    public final void run() {
        HashMap map = new HashMap();
        map.put("event", "precacheCanceled");
        map.put("src", this.e);
        if (!TextUtils.isEmpty(this.f)) {
            map.put("cachedSrc", this.f);
        }
        String str = this.g;
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1947652542:
                if (str.equals("interrupted")) {
                    c = 0;
                    break;
                }
                break;
            case -1396664534:
                if (str.equals("badUrl")) {
                    c = 1;
                    break;
                }
                break;
            case -1347010958:
                if (str.equals("inProgress")) {
                    c = 2;
                    break;
                }
                break;
            case -918817863:
                if (str.equals("downloadTimeout")) {
                    c = 3;
                    break;
                }
                break;
            case -659376217:
                if (str.equals("contentLengthMissing")) {
                    c = 4;
                    break;
                }
                break;
            case -642208130:
                if (str.equals("playerFailed")) {
                    c = 5;
                    break;
                }
                break;
            case -354048396:
                if (str.equals("sizeExceeded")) {
                    c = 6;
                    break;
                }
                break;
            case -32082395:
                if (str.equals("externalAbort")) {
                    c = 7;
                    break;
                }
                break;
            case 3387234:
                if (str.equals("noop")) {
                    c = '\b';
                    break;
                }
                break;
            case 96784904:
                if (str.equals("error")) {
                    c = '\t';
                    break;
                }
                break;
            case 580119100:
                if (str.equals("expireFailed")) {
                    c = '\n';
                    break;
                }
                break;
            case 725497484:
                if (str.equals("noCacheDir")) {
                    c = 11;
                    break;
                }
                break;
        }
        map.put(NSRSS20.ENC_TYPE, (c == 1 || c == 3) ? "network" : (c == 6 || c == 7) ? "policy" : (c == '\n' || c == 11) ? "io" : "internal");
        map.put("reason", this.g);
        if (!TextUtils.isEmpty(this.h)) {
            map.put("message", this.h);
        }
        zv0.j(this.i, "onPrecacheEvent", map);
    }
}
