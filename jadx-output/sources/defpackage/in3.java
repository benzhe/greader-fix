package defpackage;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;

/* loaded from: classes.dex */
public final class in3 {
    public final int b;
    public final fn3 c = new mn3();
    public final int a = 6;

    public in3(int i) {
        this.b = i;
    }

    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v8 */
    public final String a(ArrayList<String> arrayList) throws UnsupportedEncodingException {
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        ?? r3 = 0;
        int i = 0;
        while (i < size) {
            String str = arrayList.get(i);
            i++;
            sb.append(str.toLowerCase(Locale.US));
            sb.append('\n');
        }
        String[] strArrSplit = sb.toString().split("\n");
        if (strArrSplit.length == 0) {
            return "";
        }
        kn3 kn3Var = new kn3();
        PriorityQueue priorityQueue = new PriorityQueue(this.b, new hn3());
        int i2 = 0;
        while (i2 < strArrSplit.length) {
            String[] strArrT3 = c50.T3(strArrSplit[i2], r3);
            if (strArrT3.length != 0) {
                int i3 = this.b;
                int i4 = this.a;
                if (strArrT3.length < i4) {
                    vt2.h(i3, vt2.k(strArrT3, strArrT3.length), vt2.f(strArrT3, r3, strArrT3.length), strArrT3.length, priorityQueue);
                } else {
                    long jK = vt2.k(strArrT3, i4);
                    vt2.h(i3, jK, vt2.f(strArrT3, r3, i4), i4, priorityQueue);
                    long j = 16785407;
                    long jB = vt2.b(16785407L, i4 - 1);
                    int i5 = 1;
                    while (i5 < (strArrT3.length - i4) + 1) {
                        jK = (((c50.p3(strArrT3[(i5 + i4) - 1]) + 2147483647L) % 1073807359) + (((((jK + 1073807359) - ((((c50.p3(strArrT3[i5 - 1]) + 2147483647L) % 1073807359) * jB) % 1073807359)) % 1073807359) * j) % 1073807359)) % 1073807359;
                        vt2.h(i3, jK, vt2.f(strArrT3, i5, i4), strArrT3.length, priorityQueue);
                        i5++;
                        j = j;
                    }
                }
            }
            i2++;
            r3 = 0;
        }
        Iterator it = priorityQueue.iterator();
        while (it.hasNext()) {
            try {
                kn3Var.b.write(this.c.a(((nn3) it.next()).b));
            } catch (IOException e) {
                is0.zzc("Error while writing hash to byteStream", e);
            }
        }
        return kn3Var.toString();
    }
}
