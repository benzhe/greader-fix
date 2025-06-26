package defpackage;

import android.util.SparseArray;

/* loaded from: classes.dex */
public enum ur {
    DEFAULT(0),
    UNMETERED_ONLY(1),
    UNMETERED_OR_DAILY(2),
    FAST_IF_RADIO_AWAKE(3),
    NEVER(4),
    UNRECOGNIZED(-1);

    public static final SparseArray<ur> k;

    static {
        ur urVar = DEFAULT;
        ur urVar2 = UNMETERED_ONLY;
        ur urVar3 = UNMETERED_OR_DAILY;
        ur urVar4 = FAST_IF_RADIO_AWAKE;
        ur urVar5 = NEVER;
        ur urVar6 = UNRECOGNIZED;
        SparseArray<ur> sparseArray = new SparseArray<>();
        k = sparseArray;
        sparseArray.put(0, urVar);
        sparseArray.put(1, urVar2);
        sparseArray.put(2, urVar3);
        sparseArray.put(3, urVar4);
        sparseArray.put(4, urVar5);
        sparseArray.put(-1, urVar6);
    }

    ur(int i) {
    }
}
