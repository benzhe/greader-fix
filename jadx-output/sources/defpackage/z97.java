package defpackage;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class z97 {
    public static final y97[] e;
    public static final z97 f;
    public final boolean a;
    public final String[] b;
    public final String[] c;
    public final boolean d;

    static {
        y97[] y97VarArr = {y97.TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256, y97.TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256, y97.TLS_DHE_RSA_WITH_AES_128_GCM_SHA256, y97.TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA, y97.TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA, y97.TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA, y97.TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA, y97.TLS_DHE_RSA_WITH_AES_128_CBC_SHA, y97.TLS_DHE_DSS_WITH_AES_128_CBC_SHA, y97.TLS_DHE_RSA_WITH_AES_256_CBC_SHA, y97.TLS_RSA_WITH_AES_128_GCM_SHA256, y97.TLS_RSA_WITH_AES_128_CBC_SHA, y97.TLS_RSA_WITH_AES_256_CBC_SHA, y97.TLS_RSA_WITH_3DES_EDE_CBC_SHA};
        e = y97VarArr;
        b bVar = new b(true);
        bVar.b(y97VarArr);
        ia7 ia7Var = ia7.TLS_1_0;
        bVar.d(ia7.TLS_1_2, ia7.TLS_1_1, ia7Var);
        bVar.c(true);
        z97 z97VarA = bVar.a();
        f = z97VarA;
        b bVar2 = new b(z97VarA);
        bVar2.d(ia7Var);
        bVar2.c(true);
        bVar2.a();
        new b(false).a();
    }

    public z97(b bVar, a aVar) {
        this.a = bVar.a;
        this.b = bVar.b;
        this.c = bVar.c;
        this.d = bVar.d;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof z97)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        z97 z97Var = (z97) obj;
        boolean z = this.a;
        if (z != z97Var.a) {
            return false;
        }
        return !z || (Arrays.equals(this.b, z97Var.b) && Arrays.equals(this.c, z97Var.c) && this.d == z97Var.d);
    }

    public int hashCode() {
        if (this.a) {
            return ((((527 + Arrays.hashCode(this.b)) * 31) + Arrays.hashCode(this.c)) * 31) + (!this.d ? 1 : 0);
        }
        return 17;
    }

    public String toString() {
        List listUnmodifiableList;
        y97 y97VarValueOf;
        ia7 ia7Var;
        if (!this.a) {
            return "ConnectionSpec()";
        }
        String[] strArr = this.b;
        int i = 0;
        if (strArr == null) {
            listUnmodifiableList = null;
        } else {
            y97[] y97VarArr = new y97[strArr.length];
            int i2 = 0;
            while (true) {
                String[] strArr2 = this.b;
                if (i2 >= strArr2.length) {
                    break;
                }
                String str = strArr2[i2];
                y97 y97Var = y97.TLS_RSA_WITH_NULL_MD5;
                if (str.startsWith("SSL_")) {
                    StringBuilder sbZ = jo.z("TLS_");
                    sbZ.append(str.substring(4));
                    y97VarValueOf = y97.valueOf(sbZ.toString());
                } else {
                    y97VarValueOf = y97.valueOf(str);
                }
                y97VarArr[i2] = y97VarValueOf;
                i2++;
            }
            String[] strArr3 = ja7.a;
            listUnmodifiableList = Collections.unmodifiableList(Arrays.asList((Object[]) y97VarArr.clone()));
        }
        StringBuilder sbC = jo.C("ConnectionSpec(cipherSuites=", listUnmodifiableList == null ? "[use default]" : listUnmodifiableList.toString(), ", tlsVersions=");
        ia7[] ia7VarArr = new ia7[this.c.length];
        while (true) {
            String[] strArr4 = this.c;
            if (i >= strArr4.length) {
                String[] strArr5 = ja7.a;
                sbC.append(Collections.unmodifiableList(Arrays.asList((Object[]) ia7VarArr.clone())));
                sbC.append(", supportsTlsExtensions=");
                sbC.append(this.d);
                sbC.append(")");
                return sbC.toString();
            }
            String str2 = strArr4[i];
            if ("TLSv1.2".equals(str2)) {
                ia7Var = ia7.TLS_1_2;
            } else if ("TLSv1.1".equals(str2)) {
                ia7Var = ia7.TLS_1_1;
            } else if ("TLSv1".equals(str2)) {
                ia7Var = ia7.TLS_1_0;
            } else {
                if (!"SSLv3".equals(str2)) {
                    throw new IllegalArgumentException(jo.n("Unexpected TLS version: ", str2));
                }
                ia7Var = ia7.SSL_3_0;
            }
            ia7VarArr[i] = ia7Var;
            i++;
        }
    }

    public static final class b {
        public boolean a;
        public String[] b;
        public String[] c;
        public boolean d;

        public b(boolean z) {
            this.a = z;
        }

        public z97 a() {
            return new z97(this, null);
        }

        public b b(y97... y97VarArr) {
            if (!this.a) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            String[] strArr = new String[y97VarArr.length];
            for (int i = 0; i < y97VarArr.length; i++) {
                strArr[i] = y97VarArr[i].e;
            }
            this.b = strArr;
            return this;
        }

        public b c(boolean z) {
            if (!this.a) {
                throw new IllegalStateException("no TLS extensions for cleartext connections");
            }
            this.d = z;
            return this;
        }

        public b d(ia7... ia7VarArr) {
            if (!this.a) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            if (ia7VarArr.length == 0) {
                throw new IllegalArgumentException("At least one TlsVersion is required");
            }
            String[] strArr = new String[ia7VarArr.length];
            for (int i = 0; i < ia7VarArr.length; i++) {
                strArr[i] = ia7VarArr[i].e;
            }
            this.c = strArr;
            return this;
        }

        public b(z97 z97Var) {
            this.a = z97Var.a;
            this.b = z97Var.b;
            this.c = z97Var.c;
            this.d = z97Var.d;
        }
    }
}
