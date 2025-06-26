package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes.dex */
public final class ml0 {
    public static final Comparator<byte[]> e = new ao0();
    public final List<byte[]> a = new ArrayList();
    public final List<byte[]> b = new ArrayList(64);
    public int c = 0;
    public final int d = RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT;

    public final synchronized void a(byte[] bArr) {
        if (bArr != null) {
            if (bArr.length <= this.d) {
                this.a.add(bArr);
                int iBinarySearch = Collections.binarySearch(this.b, bArr, e);
                if (iBinarySearch < 0) {
                    iBinarySearch = (-iBinarySearch) - 1;
                }
                this.b.add(iBinarySearch, bArr);
                this.c += bArr.length;
                synchronized (this) {
                    while (this.c > this.d) {
                        byte[] bArrRemove = this.a.remove(0);
                        this.b.remove(bArrRemove);
                        this.c -= bArrRemove.length;
                    }
                }
            }
        }
    }

    public final synchronized byte[] b(int i) {
        for (int i2 = 0; i2 < this.b.size(); i2++) {
            byte[] bArr = this.b.get(i2);
            if (bArr.length >= i) {
                this.c -= bArr.length;
                this.b.remove(i2);
                this.a.remove(bArr);
                return bArr;
            }
        }
        return new byte[i];
    }
}
