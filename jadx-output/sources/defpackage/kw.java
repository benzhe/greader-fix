package defpackage;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Map;
import org.apache.commons.lang3.CharEncoding;
import org.jsoup.helper.HttpConnection;

/* loaded from: classes.dex */
public final class kw extends j40 {
    public final Object r;
    public mw<String> s;
    public final /* synthetic */ byte[] t;
    public final /* synthetic */ Map u;
    public final /* synthetic */ ds0 v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kw(int i, String str, mw mwVar, cc0 cc0Var, byte[] bArr, Map map, ds0 ds0Var) {
        super(i, str, cc0Var);
        this.t = bArr;
        this.u = map;
        this.v = ds0Var;
        this.r = new Object();
        this.s = mwVar;
    }

    @Override // defpackage.j40
    public final Map<String, String> getHeaders() throws eh3 {
        Map<String, String> map = this.u;
        return map == null ? super.getHeaders() : map;
    }

    @Override // defpackage.j40
    public final c90 i(pu3 pu3Var) {
        String str;
        String str2;
        try {
            byte[] bArr = pu3Var.b;
            Map<String, String> map = pu3Var.c;
            String str3 = CharEncoding.ISO_8859_1;
            if (map != null && (str2 = map.get(HttpConnection.CONTENT_TYPE)) != null) {
                String[] strArrSplit = str2.split(";", 0);
                int i = 1;
                while (true) {
                    if (i >= strArrSplit.length) {
                        break;
                    }
                    String[] strArrSplit2 = strArrSplit[i].trim().split("=", 0);
                    if (strArrSplit2.length == 2 && strArrSplit2[0].equals("charset")) {
                        str3 = strArrSplit2[1];
                        break;
                    }
                    i++;
                }
            }
            str = new String(bArr, str3);
        } catch (UnsupportedEncodingException unused) {
            str = new String(pu3Var.b);
        }
        return new c90(str, c50.U2(pu3Var));
    }

    @Override // defpackage.j40
    public final void l(Object obj) throws IOException {
        mw<String> mwVar;
        String str = (String) obj;
        this.v.f(str);
        synchronized (this.r) {
            mwVar = this.s;
        }
        if (mwVar != null) {
            mwVar.a(str);
        }
    }

    @Override // defpackage.j40
    public final byte[] zzg() throws eh3 {
        byte[] bArr = this.t;
        return bArr == null ? super.zzg() : bArr;
    }
}
