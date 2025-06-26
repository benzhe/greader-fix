package defpackage;

import android.content.Context;
import okhttp3.Request;

/* loaded from: classes2.dex */
public final class xn6 extends un6 {
    public xn6(Context context) {
        super(context);
    }

    @Override // defpackage.un6
    public String f(String str) {
        im7.e(str, "endpoint");
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        t(this.mContext);
        sb2.append("https://theoldreader.com");
        sb2.append(str);
        return jo.s(sb, sb2.toString(), "?client=greader");
    }

    @Override // defpackage.rn6
    public String getClientName() {
        return "the old reader";
    }

    @Override // defpackage.rn6
    public int getClientService() {
        return 6;
    }

    @Override // defpackage.un6
    public void p(Request.Builder builder) {
        im7.e(builder, "builder");
    }

    public String t(Context context) {
        im7.e(context, "context");
        return "https://theoldreader.com";
    }
}
