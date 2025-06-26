package defpackage;

/* loaded from: classes.dex */
public final class zt2<K, V> extends rt2<K, V> {
    public static final rt2<Object, Object> k = new zt2(null, new Object[0], 0);
    public final transient Object h;
    public final transient Object[] i;
    public final transient int j;

    public zt2(Object obj, Object[] objArr, int i) {
        this.h = obj;
        this.i = objArr;
        this.j = i;
    }

    public static IllegalArgumentException c(Object obj, Object obj2, Object[] objArr, int i) {
        String strValueOf = String.valueOf(obj);
        String strValueOf2 = String.valueOf(obj2);
        String strValueOf3 = String.valueOf(objArr[i]);
        String strValueOf4 = String.valueOf(objArr[i ^ 1]);
        StringBuilder sbY = jo.y(strValueOf4.length() + strValueOf3.length() + strValueOf2.length() + strValueOf.length() + 39, "Multiple entries with same key: ", strValueOf, "=", strValueOf2);
        sbY.append(" and ");
        sbY.append(strValueOf3);
        sbY.append("=");
        sbY.append(strValueOf4);
        return new IllegalArgumentException(sbY.toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0056, code lost:
    
        r2[r6] = (byte) r3;
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0097, code lost:
    
        r2[r6] = (short) r3;
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00cc, code lost:
    
        r2[r7] = r3;
        r1 = r1 + 1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [int[]] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r8v0, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <K, V> defpackage.zt2<K, V> d(int r10, java.lang.Object[] r11) {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.zt2.d(int, java.lang.Object[]):zt2");
    }

    @Override // defpackage.rt2, java.util.Map
    public final V get(Object obj) {
        Object obj2 = this.h;
        Object[] objArr = this.i;
        int i = this.j;
        if (obj == null) {
            return null;
        }
        if (i == 1) {
            if (objArr[0].equals(obj)) {
                return (V) objArr[1];
            }
            return null;
        }
        if (obj2 == null) {
            return null;
        }
        if (obj2 instanceof byte[]) {
            byte[] bArr = (byte[]) obj2;
            int length = bArr.length - 1;
            int iU3 = c50.U3(obj.hashCode());
            while (true) {
                int i2 = iU3 & length;
                int i3 = bArr[i2] & 255;
                if (i3 == 255) {
                    return null;
                }
                if (objArr[i3].equals(obj)) {
                    return (V) objArr[i3 ^ 1];
                }
                iU3 = i2 + 1;
            }
        } else if (obj2 instanceof short[]) {
            short[] sArr = (short[]) obj2;
            int length2 = sArr.length - 1;
            int iU32 = c50.U3(obj.hashCode());
            while (true) {
                int i4 = iU32 & length2;
                int i5 = sArr[i4] & 65535;
                if (i5 == 65535) {
                    return null;
                }
                if (objArr[i5].equals(obj)) {
                    return (V) objArr[i5 ^ 1];
                }
                iU32 = i4 + 1;
            }
        } else {
            int[] iArr = (int[]) obj2;
            int length3 = iArr.length - 1;
            int iU33 = c50.U3(obj.hashCode());
            while (true) {
                int i6 = iU33 & length3;
                int i7 = iArr[i6];
                if (i7 == -1) {
                    return null;
                }
                if (objArr[i7].equals(obj)) {
                    return (V) objArr[i7 ^ 1];
                }
                iU33 = i6 + 1;
            }
        }
    }

    @Override // java.util.Map
    public final int size() {
        return this.j;
    }
}
