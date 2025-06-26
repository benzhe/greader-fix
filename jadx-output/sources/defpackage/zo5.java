package defpackage;

import android.util.SparseArray;

/* loaded from: classes.dex */
public class zo5 extends ue5 {

    public enum a {
        OK(0),
        CANCELLED(1),
        UNKNOWN(2),
        INVALID_ARGUMENT(3),
        DEADLINE_EXCEEDED(4),
        NOT_FOUND(5),
        ALREADY_EXISTS(6),
        PERMISSION_DENIED(7),
        RESOURCE_EXHAUSTED(8),
        FAILED_PRECONDITION(9),
        ABORTED(10),
        OUT_OF_RANGE(11),
        UNIMPLEMENTED(12),
        INTERNAL(13),
        UNAVAILABLE(14),
        DATA_LOSS(15),
        UNAUTHENTICATED(16);

        public static final SparseArray<a> w;
        public final int e;

        static {
            SparseArray<a> sparseArray = new SparseArray<>();
            a[] aVarArrValues = values();
            for (int i = 0; i < 17; i++) {
                a aVar = aVarArrValues[i];
                a aVar2 = sparseArray.get(aVar.e);
                if (aVar2 != null) {
                    throw new IllegalStateException("Code value duplication between " + aVar2 + "&" + aVar.name());
                }
                sparseArray.put(aVar.e, aVar);
            }
            w = sparseArray;
        }

        a(int i) {
            this.e = i;
        }
    }

    public zo5(String str, a aVar) {
        super(str);
        c50.B(str, "Provided message must not be null.");
        bx5.c(aVar != a.OK, "A FirebaseFirestoreException should never be thrown for OK", new Object[0]);
        c50.B(aVar, "Provided code must not be null.");
    }

    public zo5(String str, a aVar, Throwable th) {
        super(str, th);
        c50.B(str, "Provided message must not be null.");
        bx5.c(aVar != a.OK, "A FirebaseFirestoreException should never be thrown for OK", new Object[0]);
        c50.B(aVar, "Provided code must not be null.");
    }
}
