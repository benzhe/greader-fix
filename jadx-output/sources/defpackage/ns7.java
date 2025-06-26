package defpackage;

import android.util.SparseArray;

/* loaded from: classes2.dex */
public enum ns7 {
    LEFT(0),
    TOP(1),
    RIGHT(2),
    BOTTOM(3),
    START(4),
    END(5);

    public static final SparseArray<ns7> l = new SparseArray<>();
    public final int e;

    static {
        ns7[] ns7VarArrValues = values();
        for (int i = 0; i < 6; i++) {
            ns7 ns7Var = ns7VarArrValues[i];
            l.put(ns7Var.e, ns7Var);
        }
    }

    ns7(int i) {
        this.e = i;
    }
}
