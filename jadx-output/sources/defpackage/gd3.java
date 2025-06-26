package defpackage;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes.dex */
public class gd3 {
    public final xb3 a;
    public final String b;
    public final String c;
    public final Class<?>[] e;
    public volatile Method d = null;
    public CountDownLatch f = new CountDownLatch(1);

    public gd3(xb3 xb3Var, String str, String str2, Class<?>... clsArr) {
        this.a = xb3Var;
        this.b = str;
        this.c = str2;
        this.e = clsArr;
        xb3Var.b.submit(new jd3(this));
    }

    public final String a(byte[] bArr, String str) throws b33, UnsupportedEncodingException {
        return new String(this.a.d.b(bArr, str), "UTF-8");
    }
}
