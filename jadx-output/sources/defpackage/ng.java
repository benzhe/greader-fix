package defpackage;

import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes.dex */
public class ng implements zg, yg {
    public static final TreeMap<Integer, ng> m = new TreeMap<>();
    public volatile String e;
    public final long[] f;
    public final double[] g;
    public final String[] h;
    public final byte[][] i;
    public final int[] j;
    public final int k;
    public int l;

    public ng(int i) {
        this.k = i;
        int i2 = i + 1;
        this.j = new int[i2];
        this.f = new long[i2];
        this.g = new double[i2];
        this.h = new String[i2];
        this.i = new byte[i2][];
    }

    public static ng c(String str, int i) {
        TreeMap<Integer, ng> treeMap = m;
        synchronized (treeMap) {
            Map.Entry<Integer, ng> entryCeilingEntry = treeMap.ceilingEntry(Integer.valueOf(i));
            if (entryCeilingEntry == null) {
                ng ngVar = new ng(i);
                ngVar.e = str;
                ngVar.l = i;
                return ngVar;
            }
            treeMap.remove(entryCeilingEntry.getKey());
            ng value = entryCeilingEntry.getValue();
            value.e = str;
            value.l = i;
            return value;
        }
    }

    @Override // defpackage.zg
    public String a() {
        return this.e;
    }

    @Override // defpackage.zg
    public void b(yg ygVar) {
        for (int i = 1; i <= this.l; i++) {
            int i2 = this.j[i];
            if (i2 == 1) {
                ((dh) ygVar).e.bindNull(i);
            } else if (i2 == 2) {
                ((dh) ygVar).e.bindLong(i, this.f[i]);
            } else if (i2 == 3) {
                ((dh) ygVar).e.bindDouble(i, this.g[i]);
            } else if (i2 == 4) {
                ((dh) ygVar).e.bindString(i, this.h[i]);
            } else if (i2 == 5) {
                ((dh) ygVar).e.bindBlob(i, this.i[i]);
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public void e(int i, long j) {
        this.j[i] = 2;
        this.f[i] = j;
    }

    public void f(int i) {
        this.j[i] = 1;
    }

    public void g(int i, String str) {
        this.j[i] = 4;
        this.h[i] = str;
    }

    public void i() {
        TreeMap<Integer, ng> treeMap = m;
        synchronized (treeMap) {
            treeMap.put(Integer.valueOf(this.k), this);
            if (treeMap.size() > 15) {
                int size = treeMap.size() - 10;
                Iterator<Integer> it = treeMap.descendingKeySet().iterator();
                while (true) {
                    int i = size - 1;
                    if (size <= 0) {
                        break;
                    }
                    it.next();
                    it.remove();
                    size = i;
                }
            }
        }
    }
}
