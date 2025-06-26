package defpackage;

import defpackage.k78;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes2.dex */
public final class a58 extends z48 implements u68, v68, Comparable<a58>, Serializable {
    public static final ConcurrentMap<Integer, a58> h = new ConcurrentHashMap(16, 0.75f, 4);
    public static final ConcurrentMap<String, a58> i = new ConcurrentHashMap(16, 0.75f, 4);
    public static final a58 j = Q(0);
    public static final a58 k = Q(-64800);
    public static final a58 l = Q(64800);
    public final int f;
    public final transient String g;

    public a58(int i2) {
        String string;
        this.f = i2;
        if (i2 == 0) {
            string = "Z";
        } else {
            int iAbs = Math.abs(i2);
            StringBuilder sb = new StringBuilder();
            int i3 = iAbs / 3600;
            int i4 = (iAbs / 60) % 60;
            sb.append(i2 < 0 ? "-" : "+");
            sb.append(i3 < 10 ? "0" : "");
            sb.append(i3);
            sb.append(i4 < 10 ? ":0" : ":");
            sb.append(i4);
            int i5 = iAbs % 60;
            if (i5 != 0) {
                sb.append(i5 >= 10 ? ":" : ":0");
                sb.append(i5);
            }
            string = sb.toString();
        }
        this.g = string;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x008e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.a58 O(java.lang.String r7) {
        /*
            java.lang.String r0 = "offsetId"
            defpackage.kt7.o(r7, r0)
            java.util.concurrent.ConcurrentMap<java.lang.String, a58> r0 = defpackage.a58.i
            java.lang.Object r0 = r0.get(r7)
            a58 r0 = (defpackage.a58) r0
            if (r0 == 0) goto L10
            return r0
        L10:
            int r0 = r7.length()
            r1 = 2
            r2 = 1
            r3 = 0
            if (r0 == r1) goto L62
            r1 = 3
            if (r0 == r1) goto L7e
            r4 = 5
            if (r0 == r4) goto L59
            r5 = 6
            r6 = 4
            if (r0 == r5) goto L50
            r5 = 7
            if (r0 == r5) goto L43
            r1 = 9
            if (r0 != r1) goto L37
            int r0 = R(r7, r2, r3)
            int r1 = R(r7, r6, r2)
            int r2 = R(r7, r5, r2)
            goto L84
        L37:
            l48 r0 = new l48
            java.lang.String r1 = "Invalid ID for ZoneOffset, invalid format: "
            java.lang.String r7 = defpackage.jo.n(r1, r7)
            r0.<init>(r7)
            throw r0
        L43:
            int r0 = R(r7, r2, r3)
            int r1 = R(r7, r1, r3)
            int r2 = R(r7, r4, r3)
            goto L84
        L50:
            int r0 = R(r7, r2, r3)
            int r1 = R(r7, r6, r2)
            goto L83
        L59:
            int r0 = R(r7, r2, r3)
            int r1 = R(r7, r1, r3)
            goto L83
        L62:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            char r1 = r7.charAt(r3)
            r0.append(r1)
            java.lang.String r1 = "0"
            r0.append(r1)
            char r7 = r7.charAt(r2)
            r0.append(r7)
            java.lang.String r7 = r0.toString()
        L7e:
            int r0 = R(r7, r2, r3)
            r1 = 0
        L83:
            r2 = 0
        L84:
            char r3 = r7.charAt(r3)
            r4 = 43
            r5 = 45
            if (r3 == r4) goto L9d
            if (r3 != r5) goto L91
            goto L9d
        L91:
            l48 r0 = new l48
            java.lang.String r1 = "Invalid ID for ZoneOffset, plus/minus not found when expected: "
            java.lang.String r7 = defpackage.jo.n(r1, r7)
            r0.<init>(r7)
            throw r0
        L9d:
            if (r3 != r5) goto La7
            int r7 = -r0
            int r0 = -r1
            int r1 = -r2
            a58 r7 = P(r7, r0, r1)
            return r7
        La7:
            a58 r7 = P(r0, r1, r2)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.a58.O(java.lang.String):a58");
    }

    public static a58 P(int i2, int i3, int i4) {
        if (i2 < -18 || i2 > 18) {
            throw new l48(jo.h("Zone offset hours not in valid range: value ", i2, " is not in the range -18 to 18"));
        }
        if (i2 > 0) {
            if (i3 < 0 || i4 < 0) {
                throw new l48("Zone offset minutes and seconds must be positive because hours is positive");
            }
        } else if (i2 < 0) {
            if (i3 > 0 || i4 > 0) {
                throw new l48("Zone offset minutes and seconds must be negative because hours is negative");
            }
        } else if ((i3 > 0 && i4 < 0) || (i3 < 0 && i4 > 0)) {
            throw new l48("Zone offset minutes and seconds must have the same sign");
        }
        if (Math.abs(i3) > 59) {
            StringBuilder sbZ = jo.z("Zone offset minutes not in valid range: abs(value) ");
            sbZ.append(Math.abs(i3));
            sbZ.append(" is not in the range 0 to 59");
            throw new l48(sbZ.toString());
        }
        if (Math.abs(i4) > 59) {
            StringBuilder sbZ2 = jo.z("Zone offset seconds not in valid range: abs(value) ");
            sbZ2.append(Math.abs(i4));
            sbZ2.append(" is not in the range 0 to 59");
            throw new l48(sbZ2.toString());
        }
        if (Math.abs(i2) == 18 && (Math.abs(i3) > 0 || Math.abs(i4) > 0)) {
            throw new l48("Zone offset not in valid range: -18:00 to +18:00");
        }
        return Q((i3 * 60) + (i2 * 3600) + i4);
    }

    public static a58 Q(int i2) {
        if (Math.abs(i2) > 64800) {
            throw new l48("Zone offset not in valid range: -18:00 to +18:00");
        }
        if (i2 % 900 != 0) {
            return new a58(i2);
        }
        Integer numValueOf = Integer.valueOf(i2);
        ConcurrentMap<Integer, a58> concurrentMap = h;
        a58 a58Var = concurrentMap.get(numValueOf);
        if (a58Var != null) {
            return a58Var;
        }
        concurrentMap.putIfAbsent(numValueOf, new a58(i2));
        a58 a58Var2 = concurrentMap.get(numValueOf);
        i.putIfAbsent(a58Var2.g, a58Var2);
        return a58Var2;
    }

    public static int R(CharSequence charSequence, int i2, boolean z) {
        if (z && charSequence.charAt(i2 - 1) != ':') {
            throw new l48("Invalid ID for ZoneOffset, colon not found when expected: " + ((Object) charSequence));
        }
        char cCharAt = charSequence.charAt(i2);
        char cCharAt2 = charSequence.charAt(i2 + 1);
        if (cCharAt >= '0' && cCharAt <= '9' && cCharAt2 >= '0' && cCharAt2 <= '9') {
            return (cCharAt2 - '0') + ((cCharAt - '0') * 10);
        }
        throw new l48("Invalid ID for ZoneOffset, non numeric characters found: " + ((Object) charSequence));
    }

    public static a58 S(DataInput dataInput) throws IOException {
        byte b = dataInput.readByte();
        return b == Byte.MAX_VALUE ? Q(dataInput.readInt()) : Q(b * 900);
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new w48((byte) 8, this);
    }

    @Override // defpackage.u68
    public long D(y68 y68Var) {
        if (y68Var == q68.L) {
            return this.f;
        }
        if (y68Var instanceof q68) {
            throw new l48(jo.p("Unsupported field: ", y68Var));
        }
        return y68Var.x(this);
    }

    @Override // defpackage.z48
    public String K() {
        return this.g;
    }

    @Override // defpackage.z48
    public k78 L() {
        kt7.o(this, "offset");
        return new k78.a(this);
    }

    @Override // defpackage.z48
    public void N(DataOutput dataOutput) throws IOException {
        dataOutput.writeByte(8);
        T(dataOutput);
    }

    public void T(DataOutput dataOutput) throws IOException {
        int i2 = this.f;
        int i3 = i2 % 900 == 0 ? i2 / 900 : 127;
        dataOutput.writeByte(i3);
        if (i3 == 127) {
            dataOutput.writeInt(i2);
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(a58 a58Var) {
        return a58Var.f - this.f;
    }

    @Override // defpackage.z48
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a58) && this.f == ((a58) obj).f;
    }

    @Override // defpackage.z48
    public int hashCode() {
        return this.f;
    }

    @Override // defpackage.u68
    public int k(y68 y68Var) {
        if (y68Var == q68.L) {
            return this.f;
        }
        if (y68Var instanceof q68) {
            throw new c78(jo.p("Unsupported field: ", y68Var));
        }
        return t(y68Var).a(D(y68Var), y68Var);
    }

    @Override // defpackage.v68
    public t68 l(t68 t68Var) {
        return t68Var.i(q68.L, this.f);
    }

    @Override // defpackage.u68
    public d78 t(y68 y68Var) {
        if (y68Var == q68.L) {
            return y68Var.w();
        }
        if (y68Var instanceof q68) {
            throw new c78(jo.p("Unsupported field: ", y68Var));
        }
        return y68Var.t(this);
    }

    @Override // defpackage.z48
    public String toString() {
        return this.g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.u68
    public <R> R w(a78<R> a78Var) {
        if (a78Var == z68.e || a78Var == z68.d) {
            return this;
        }
        if (a78Var == z68.f || a78Var == z68.g || a78Var == z68.c || a78Var == z68.b || a78Var == z68.a) {
            return null;
        }
        return a78Var.a(this);
    }

    @Override // defpackage.u68
    public boolean y(y68 y68Var) {
        return y68Var instanceof q68 ? y68Var == q68.L : y68Var != null && y68Var.k(this);
    }
}
