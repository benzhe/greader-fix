package defpackage;

import android.content.Context;
import okhttp3.Request;
import okhttp3.internal.Util;

/* loaded from: classes2.dex */
public final class wn6 extends un6 {
    public wn6(Context context) {
        super(context);
    }

    @Override // defpackage.un6
    public int d() {
        return 1000;
    }

    @Override // defpackage.un6
    public int e() {
        return 100;
    }

    @Override // defpackage.un6
    public String f(String str) {
        im7.e(str, "endpoint");
        StringBuilder sb = new StringBuilder();
        sb.append(t(this.mContext) + str);
        sb.append("?client=greader");
        return sb.toString();
    }

    @Override // defpackage.rn6
    public String getClientName() {
        return "inoreader";
    }

    @Override // defpackage.rn6
    public int getClientService() {
        return 8;
    }

    @Override // defpackage.un6
    public String k(String str) {
        CharSequence charSequenceSubSequence;
        im7.e(str, "id");
        Long lE = co7.E(str);
        if (lE == null) {
            return str;
        }
        String hexString = Util.toHexString(lE.longValue());
        im7.e(hexString, "$this$padStart");
        im7.e(hexString, "$this$padStart");
        if (16 <= hexString.length()) {
            charSequenceSubSequence = hexString.subSequence(0, hexString.length());
        } else {
            StringBuilder sb = new StringBuilder(16);
            int length = 16 - hexString.length();
            int i = 1;
            if (1 <= length) {
                while (true) {
                    sb.append('0');
                    if (i == length) {
                        break;
                    }
                    i++;
                }
            }
            sb.append((CharSequence) hexString);
            charSequenceSubSequence = sb;
        }
        String string = charSequenceSubSequence.toString();
        return string != null ? string : str;
    }

    @Override // defpackage.un6
    public void p(Request.Builder builder) {
        im7.e(builder, "builder");
        builder.addHeader("AppId", "999999346");
        builder.addHeader("AppKey", "mMJ988jRkf3FttaeEgNalb4n9W4In95x");
    }

    public String t(Context context) {
        im7.e(context, "context");
        int i = cn6.b;
        String strG = iw6.G(context, "inoreader_base_url", "https://inoreader.com");
        im7.d(strG, "Prefs.getInoreaderBaseUrl(context)");
        return strG;
    }
}
