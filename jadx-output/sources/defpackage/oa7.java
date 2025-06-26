package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import defpackage.qa7;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.text.lookup.StringLookupFactory;

/* loaded from: classes2.dex */
public final class oa7 {
    public static final bt7 a = bt7.l(":");
    public static final na7[] b;
    public static final Map<bt7, Integer> c;

    public static final class a {
        public final at7 b;
        public int c;
        public int d;
        public final List<na7> a = new ArrayList();
        public na7[] e = new na7[8];
        public int f = 7;
        public int g = 0;
        public int h = 0;

        public a(int i, vt7 vt7Var) {
            this.c = i;
            this.d = i;
            this.b = n56.p(vt7Var);
        }

        public final void a() {
            Arrays.fill(this.e, (Object) null);
            this.f = this.e.length - 1;
            this.g = 0;
            this.h = 0;
        }

        public final int b(int i) {
            return this.f + 1 + i;
        }

        public final int c(int i) {
            int i2;
            int i3 = 0;
            if (i > 0) {
                int length = this.e.length;
                while (true) {
                    length--;
                    i2 = this.f;
                    if (length < i2 || i <= 0) {
                        break;
                    }
                    na7[] na7VarArr = this.e;
                    i -= na7VarArr[length].c;
                    this.h -= na7VarArr[length].c;
                    this.g--;
                    i3++;
                }
                na7[] na7VarArr2 = this.e;
                System.arraycopy(na7VarArr2, i2 + 1, na7VarArr2, i2 + 1 + i3, this.g);
                this.f += i3;
            }
            return i3;
        }

        public final bt7 d(int i) throws IOException {
            if (i >= 0 && i <= oa7.b.length + (-1)) {
                return oa7.b[i].a;
            }
            int iB = b(i - oa7.b.length);
            if (iB >= 0) {
                na7[] na7VarArr = this.e;
                if (iB < na7VarArr.length) {
                    return na7VarArr[iB].a;
                }
            }
            StringBuilder sbZ = jo.z("Header index too large ");
            sbZ.append(i + 1);
            throw new IOException(sbZ.toString());
        }

        public final void e(int i, na7 na7Var) {
            this.a.add(na7Var);
            int i2 = na7Var.c;
            if (i != -1) {
                i2 -= this.e[(this.f + 1) + i].c;
            }
            int i3 = this.d;
            if (i2 > i3) {
                a();
                return;
            }
            int iC = c((this.h + i2) - i3);
            if (i == -1) {
                int i4 = this.g + 1;
                na7[] na7VarArr = this.e;
                if (i4 > na7VarArr.length) {
                    na7[] na7VarArr2 = new na7[na7VarArr.length * 2];
                    System.arraycopy(na7VarArr, 0, na7VarArr2, na7VarArr.length, na7VarArr.length);
                    this.f = this.e.length - 1;
                    this.e = na7VarArr2;
                }
                int i5 = this.f;
                this.f = i5 - 1;
                this.e[i5] = na7Var;
                this.g++;
            } else {
                this.e[this.f + 1 + i + iC + i] = na7Var;
            }
            this.h += i2;
        }

        public bt7 f() throws IOException {
            int i = this.b.readByte() & 255;
            boolean z = (i & 128) == 128;
            int iG = g(i, 127);
            if (!z) {
                return this.b.s(iG);
            }
            qa7 qa7Var = qa7.d;
            byte[] bArrL0 = this.b.l0(iG);
            Objects.requireNonNull(qa7Var);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            qa7.a aVar = qa7Var.a;
            int i2 = 0;
            int i3 = 0;
            for (byte b : bArrL0) {
                i2 = (i2 << 8) | (b & 255);
                i3 += 8;
                while (i3 >= 8) {
                    int i4 = i3 - 8;
                    aVar = aVar.a[(i2 >>> i4) & Base64.BASELENGTH];
                    if (aVar.a == null) {
                        byteArrayOutputStream.write(aVar.b);
                        i3 -= aVar.c;
                        aVar = qa7Var.a;
                    } else {
                        i3 = i4;
                    }
                }
            }
            while (i3 > 0) {
                qa7.a aVar2 = aVar.a[(i2 << (8 - i3)) & Base64.BASELENGTH];
                if (aVar2.a != null || aVar2.c > i3) {
                    break;
                }
                byteArrayOutputStream.write(aVar2.b);
                i3 -= aVar2.c;
                aVar = qa7Var.a;
            }
            return bt7.C(byteArrayOutputStream.toByteArray());
        }

        public int g(int i, int i2) throws IOException {
            int i3 = i & i2;
            if (i3 < i2) {
                return i3;
            }
            int i4 = 0;
            while (true) {
                int i5 = this.b.readByte() & 255;
                if ((i5 & 128) == 0) {
                    return i2 + (i5 << i4);
                }
                i2 += (i5 & 127) << i4;
                i4 += 7;
            }
        }
    }

    public static final class b {
        public final xs7 a;
        public int d;
        public int f;
        public int b = Integer.MAX_VALUE;
        public na7[] c = new na7[8];
        public int e = 7;

        public b(xs7 xs7Var) {
            this.a = xs7Var;
        }

        public final void a(na7 na7Var) {
            int i;
            int i2 = na7Var.c;
            if (i2 > 4096) {
                Arrays.fill(this.c, (Object) null);
                this.e = this.c.length - 1;
                this.d = 0;
                this.f = 0;
                return;
            }
            int i3 = (this.f + i2) - RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT;
            if (i3 > 0) {
                int length = this.c.length - 1;
                int i4 = 0;
                while (true) {
                    i = this.e;
                    if (length < i || i3 <= 0) {
                        break;
                    }
                    na7[] na7VarArr = this.c;
                    i3 -= na7VarArr[length].c;
                    this.f -= na7VarArr[length].c;
                    this.d--;
                    i4++;
                    length--;
                }
                na7[] na7VarArr2 = this.c;
                int i5 = i + 1;
                System.arraycopy(na7VarArr2, i5, na7VarArr2, i5 + i4, this.d);
                this.e += i4;
            }
            int i6 = this.d + 1;
            na7[] na7VarArr3 = this.c;
            if (i6 > na7VarArr3.length) {
                na7[] na7VarArr4 = new na7[na7VarArr3.length * 2];
                System.arraycopy(na7VarArr3, 0, na7VarArr4, na7VarArr3.length, na7VarArr3.length);
                this.e = this.c.length - 1;
                this.c = na7VarArr4;
            }
            int i7 = this.e;
            this.e = i7 - 1;
            this.c[i7] = na7Var;
            this.d++;
            this.f += i2;
        }

        public void b(bt7 bt7Var) throws IOException {
            c(bt7Var.t(), 127, 0);
            this.a.F(bt7Var);
        }

        public void c(int i, int i2, int i3) throws IOException {
            if (i < i2) {
                this.a.Q(i | i3);
                return;
            }
            this.a.Q(i3 | i2);
            int i4 = i - i2;
            while (i4 >= 128) {
                this.a.Q(128 | (i4 & 127));
                i4 >>>= 7;
            }
            this.a.Q(i4);
        }
    }

    static {
        na7 na7Var = new na7(na7.h, "");
        int i = 0;
        bt7 bt7Var = na7.e;
        bt7 bt7Var2 = na7.f;
        bt7 bt7Var3 = na7.g;
        bt7 bt7Var4 = na7.d;
        na7[] na7VarArr = {na7Var, new na7(bt7Var, "GET"), new na7(bt7Var, "POST"), new na7(bt7Var2, "/"), new na7(bt7Var2, "/index.html"), new na7(bt7Var3, "http"), new na7(bt7Var3, "https"), new na7(bt7Var4, "200"), new na7(bt7Var4, "204"), new na7(bt7Var4, "206"), new na7(bt7Var4, "304"), new na7(bt7Var4, "400"), new na7(bt7Var4, "404"), new na7(bt7Var4, "500"), new na7("accept-charset", ""), new na7("accept-encoding", "gzip, deflate"), new na7("accept-language", ""), new na7("accept-ranges", ""), new na7("accept", ""), new na7("access-control-allow-origin", ""), new na7("age", ""), new na7("allow", ""), new na7("authorization", ""), new na7("cache-control", ""), new na7("content-disposition", ""), new na7("content-encoding", ""), new na7("content-language", ""), new na7("content-length", ""), new na7("content-location", ""), new na7("content-range", ""), new na7("content-type", ""), new na7("cookie", ""), new na7(StringLookupFactory.KEY_DATE, ""), new na7("etag", ""), new na7("expect", ""), new na7("expires", ""), new na7("from", ""), new na7("host", ""), new na7("if-match", ""), new na7("if-modified-since", ""), new na7("if-none-match", ""), new na7("if-range", ""), new na7("if-unmodified-since", ""), new na7("last-modified", ""), new na7(NSRSS20.LINK, ""), new na7("location", ""), new na7("max-forwards", ""), new na7("proxy-authenticate", ""), new na7("proxy-authorization", ""), new na7("range", ""), new na7("referer", ""), new na7("refresh", ""), new na7("retry-after", ""), new na7("server", ""), new na7("set-cookie", ""), new na7("strict-transport-security", ""), new na7("transfer-encoding", ""), new na7("user-agent", ""), new na7("vary", ""), new na7("via", ""), new na7("www-authenticate", "")};
        b = na7VarArr;
        LinkedHashMap linkedHashMap = new LinkedHashMap(na7VarArr.length);
        while (true) {
            na7[] na7VarArr2 = b;
            if (i >= na7VarArr2.length) {
                c = Collections.unmodifiableMap(linkedHashMap);
                return;
            } else {
                if (!linkedHashMap.containsKey(na7VarArr2[i].a)) {
                    linkedHashMap.put(na7VarArr2[i].a, Integer.valueOf(i));
                }
                i++;
            }
        }
    }

    public static bt7 a(bt7 bt7Var) throws IOException {
        int iT = bt7Var.t();
        for (int i = 0; i < iT; i++) {
            byte bY = bt7Var.y(i);
            if (bY >= 65 && bY <= 90) {
                StringBuilder sbZ = jo.z("PROTOCOL_ERROR response malformed: mixed case name: ");
                sbZ.append(bt7Var.O());
                throw new IOException(sbZ.toString());
            }
        }
        return bt7Var;
    }
}
