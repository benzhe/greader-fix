package defpackage;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.StreamCorruptedException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* loaded from: classes2.dex */
public final class h78 extends n78 {
    public List<String> c;
    public final ConcurrentNavigableMap<String, a> d = new ConcurrentSkipListMap();

    public static class a {
        public final String a;
        public final String[] b;
        public final short[] c;
        public final AtomicReferenceArray<Object> d;

        public a(String str, String[] strArr, short[] sArr, AtomicReferenceArray<Object> atomicReferenceArray) {
            this.d = atomicReferenceArray;
            this.a = str;
            this.b = strArr;
            this.c = sArr;
        }

        public String toString() {
            return this.a;
        }
    }

    public h78(InputStream inputStream) {
        new CopyOnWriteArraySet();
        try {
            e(inputStream);
        } catch (Exception e) {
            throw new l78("Unable to load TZDB time-zone rules", e);
        }
    }

    @Override // defpackage.n78
    public k78 b(String str, boolean z) {
        k78 k78Var;
        kt7.o(str, "zoneId");
        a value = this.d.lastEntry().getValue();
        int iBinarySearch = Arrays.binarySearch(value.b, str);
        if (iBinarySearch < 0) {
            k78Var = null;
        } else {
            try {
                short s = value.c[iBinarySearch];
                Object objB = value.d.get(s);
                if (objB instanceof byte[]) {
                    DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream((byte[]) objB));
                    objB = f78.b(dataInputStream.readByte(), dataInputStream);
                    value.d.set(s, objB);
                }
                k78Var = (k78) objB;
            } catch (Exception e) {
                StringBuilder sbC = jo.C("Invalid binary time-zone data: TZDB:", str, ", version: ");
                sbC.append(value.a);
                throw new l78(sbC.toString(), e);
            }
        }
        if (k78Var != null) {
            return k78Var;
        }
        throw new l78(jo.n("Unknown time-zone ID: ", str));
    }

    @Override // defpackage.n78
    public Set<String> c() {
        return new HashSet(this.c);
    }

    public final boolean e(InputStream inputStream) throws IOException {
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        if (dataInputStream.readByte() != 1) {
            throw new StreamCorruptedException("File format not recognised");
        }
        if (!"TZDB".equals(dataInputStream.readUTF())) {
            throw new StreamCorruptedException("File format not recognised");
        }
        int i = dataInputStream.readShort();
        String[] strArr = new String[i];
        boolean z = false;
        for (int i2 = 0; i2 < i; i2++) {
            strArr[i2] = dataInputStream.readUTF();
        }
        int i3 = dataInputStream.readShort();
        String[] strArr2 = new String[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            strArr2[i4] = dataInputStream.readUTF();
        }
        this.c = Arrays.asList(strArr2);
        int i5 = dataInputStream.readShort();
        Object[] objArr = new Object[i5];
        for (int i6 = 0; i6 < i5; i6++) {
            byte[] bArr = new byte[dataInputStream.readShort()];
            dataInputStream.readFully(bArr);
            objArr[i6] = bArr;
        }
        AtomicReferenceArray atomicReferenceArray = new AtomicReferenceArray(objArr);
        HashSet hashSet = new HashSet(i);
        for (int i7 = 0; i7 < i; i7++) {
            int i8 = dataInputStream.readShort();
            String[] strArr3 = new String[i8];
            short[] sArr = new short[i8];
            for (int i9 = 0; i9 < i8; i9++) {
                strArr3[i9] = strArr2[dataInputStream.readShort()];
                sArr[i9] = dataInputStream.readShort();
            }
            hashSet.add(new a(strArr[i7], strArr3, sArr, atomicReferenceArray));
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            a aVarPutIfAbsent = this.d.putIfAbsent(aVar.a, aVar);
            if (aVarPutIfAbsent != null && !aVarPutIfAbsent.a.equals(aVar.a)) {
                StringBuilder sbZ = jo.z("Data already loaded for TZDB time-zone rules version: ");
                sbZ.append(aVar.a);
                throw new l78(sbZ.toString());
            }
            z = true;
        }
        return z;
    }

    public String toString() {
        return "TZDB";
    }
}
