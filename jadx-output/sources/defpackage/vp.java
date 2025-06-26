package defpackage;

import defpackage.wo;
import java.util.Arrays;
import java.util.BitSet;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class vp {
    public final vp a;
    public final AtomicReference<b> b;
    public final int c;
    public final int d;
    public boolean e;
    public String[] f;
    public a[] g;
    public int h;
    public int i;
    public int j;
    public int k;
    public boolean l;
    public BitSet m;

    public static final class a {
        public final String a;
        public final a b;
        public final int c;

        public a(String str, a aVar) {
            this.a = str;
            this.b = aVar;
            this.c = aVar != null ? 1 + aVar.c : 1;
        }

        public String a(char[] cArr, int i, int i2) {
            if (this.a.length() != i2) {
                return null;
            }
            int i3 = 0;
            while (this.a.charAt(i3) == cArr[i + i3]) {
                i3++;
                if (i3 >= i2) {
                    return this.a;
                }
            }
            return null;
        }
    }

    public vp(int i) {
        this.a = null;
        this.c = i;
        this.e = true;
        this.d = -1;
        this.l = false;
        this.k = 0;
        this.b = new AtomicReference<>(new b(0, 0, new String[64], new a[32]));
    }

    public int a(int i) {
        int i2 = i + (i >>> 15);
        int i3 = i2 ^ (i2 << 7);
        return (i3 + (i3 >>> 3)) & this.j;
    }

    public int b(String str) {
        int length = str.length();
        int iCharAt = this.c;
        for (int i = 0; i < length; i++) {
            iCharAt = (iCharAt * 33) + str.charAt(i);
        }
        if (iCharAt == 0) {
            return 1;
        }
        return iCharAt;
    }

    public String c(char[] cArr, int i, int i2, int i3) {
        String strA;
        if (i2 < 1) {
            return "";
        }
        if (!this.e) {
            return new String(cArr, i, i2);
        }
        int iA = a(i3);
        String str = this.f[iA];
        if (str != null) {
            if (str.length() == i2) {
                int i4 = 0;
                while (str.charAt(i4) == cArr[i + i4]) {
                    i4++;
                    if (i4 == i2) {
                        return str;
                    }
                }
            }
            a aVar = this.g[iA >> 1];
            if (aVar != null) {
                String strA2 = aVar.a(cArr, i, i2);
                if (strA2 != null) {
                    return strA2;
                }
                a aVar2 = aVar.b;
                while (true) {
                    if (aVar2 == null) {
                        strA = null;
                        break;
                    }
                    strA = aVar2.a(cArr, i, i2);
                    if (strA != null) {
                        break;
                    }
                    aVar2 = aVar2.b;
                }
                if (strA != null) {
                    return strA;
                }
            }
        }
        if (this.l) {
            String[] strArr = this.f;
            this.f = (String[]) Arrays.copyOf(strArr, strArr.length);
            a[] aVarArr = this.g;
            this.g = (a[]) Arrays.copyOf(aVarArr, aVarArr.length);
            this.l = false;
        } else if (this.h >= this.i) {
            String[] strArr2 = this.f;
            int length = strArr2.length;
            int i5 = length + length;
            if (i5 > 65536) {
                this.h = 0;
                this.e = false;
                this.f = new String[64];
                this.g = new a[32];
                this.j = 63;
                this.l = false;
            } else {
                a[] aVarArr2 = this.g;
                this.f = new String[i5];
                this.g = new a[i5 >> 1];
                this.j = i5 - 1;
                this.i = i5 - (i5 >> 2);
                int i6 = 0;
                int iMax = 0;
                for (String str2 : strArr2) {
                    if (str2 != null) {
                        i6++;
                        int iA2 = a(b(str2));
                        String[] strArr3 = this.f;
                        if (strArr3[iA2] == null) {
                            strArr3[iA2] = str2;
                        } else {
                            int i7 = iA2 >> 1;
                            a[] aVarArr3 = this.g;
                            a aVar3 = new a(str2, aVarArr3[i7]);
                            aVarArr3[i7] = aVar3;
                            iMax = Math.max(iMax, aVar3.c);
                        }
                    }
                }
                int i8 = length >> 1;
                for (int i9 = 0; i9 < i8; i9++) {
                    for (a aVar4 = aVarArr2[i9]; aVar4 != null; aVar4 = aVar4.b) {
                        i6++;
                        String str3 = aVar4.a;
                        int iA3 = a(b(str3));
                        String[] strArr4 = this.f;
                        if (strArr4[iA3] == null) {
                            strArr4[iA3] = str3;
                        } else {
                            int i10 = iA3 >> 1;
                            a[] aVarArr4 = this.g;
                            a aVar5 = new a(str3, aVarArr4[i10]);
                            aVarArr4[i10] = aVar5;
                            iMax = Math.max(iMax, aVar5.c);
                        }
                    }
                }
                this.k = iMax;
                this.m = null;
                if (i6 != this.h) {
                    throw new IllegalStateException(String.format("Internal error on SymbolTable.rehash(): had %d entries; now have %d", Integer.valueOf(this.h), Integer.valueOf(i6)));
                }
            }
            int i11 = this.c;
            int i12 = i2 + i;
            for (int i13 = i; i13 < i12; i13++) {
                i11 = (i11 * 33) + cArr[i13];
            }
            if (i11 == 0) {
                i11 = 1;
            }
            iA = a(i11);
        }
        String str4 = new String(cArr, i, i2);
        if (wo.a.INTERN_FIELD_NAMES.i(this.d)) {
            zp zpVar = zp.f;
            String strIntern = zpVar.get(str4);
            if (strIntern == null) {
                if (zpVar.size() >= 180) {
                    synchronized (zpVar.e) {
                        if (zpVar.size() >= 180) {
                            zpVar.clear();
                        }
                    }
                }
                strIntern = str4.intern();
                zpVar.put(strIntern, strIntern);
            }
            str4 = strIntern;
        }
        this.h++;
        String[] strArr5 = this.f;
        if (strArr5[iA] == null) {
            strArr5[iA] = str4;
        } else {
            int i14 = iA >> 1;
            a[] aVarArr5 = this.g;
            a aVar6 = new a(str4, aVarArr5[i14]);
            int i15 = aVar6.c;
            if (i15 > 100) {
                BitSet bitSet = this.m;
                if (bitSet == null) {
                    BitSet bitSet2 = new BitSet();
                    this.m = bitSet2;
                    bitSet2.set(i14);
                } else if (!bitSet.get(i14)) {
                    this.m.set(i14);
                } else {
                    if (wo.a.FAIL_ON_SYMBOL_HASH_OVERFLOW.i(this.d)) {
                        StringBuilder sbZ = jo.z("Longest collision chain in symbol table (of size ");
                        sbZ.append(this.h);
                        sbZ.append(") now exceeds maximum, ");
                        sbZ.append(100);
                        sbZ.append(" -- suspect a DoS attack based on hash collisions");
                        throw new IllegalStateException(sbZ.toString());
                    }
                    this.e = false;
                }
                this.f[iA] = aVar6.a;
                this.g[i14] = null;
                this.h -= aVar6.c;
                this.k = -1;
            } else {
                aVarArr5[i14] = aVar6;
                this.k = Math.max(i15, this.k);
            }
        }
        return str4;
    }

    public static final class b {
        public final int a;
        public final int b;
        public final String[] c;
        public final a[] d;

        public b(int i, int i2, String[] strArr, a[] aVarArr) {
            this.a = i;
            this.b = i2;
            this.c = strArr;
            this.d = aVarArr;
        }

        public b(vp vpVar) {
            this.a = vpVar.h;
            this.b = vpVar.k;
            this.c = vpVar.f;
            this.d = vpVar.g;
        }
    }

    public vp(vp vpVar, int i, int i2, b bVar) {
        this.a = vpVar;
        this.c = i2;
        this.b = null;
        this.d = i;
        this.e = wo.a.CANONICALIZE_FIELD_NAMES.i(i);
        String[] strArr = bVar.c;
        this.f = strArr;
        this.g = bVar.d;
        this.h = bVar.a;
        this.k = bVar.b;
        int length = strArr.length;
        this.i = length - (length >> 2);
        this.j = length - 1;
        this.l = true;
    }
}
