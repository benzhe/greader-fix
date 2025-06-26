package defpackage;

import java.util.ArrayDeque;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class v83 {
    public final ArrayDeque<k53> a = new ArrayDeque<>();

    public v83(s83 s83Var) {
    }

    public final void a(k53 k53Var) {
        while (!k53Var.z()) {
            if (!(k53Var instanceof t83)) {
                String strValueOf = String.valueOf(k53Var.getClass());
                throw new IllegalArgumentException(jo.O(strValueOf.length() + 49, "Has a new type of ByteString been created? Found ", strValueOf));
            }
            t83 t83Var = (t83) k53Var;
            a(t83Var.i);
            k53Var = t83Var.j;
        }
        int iBinarySearch = Arrays.binarySearch(t83.m, k53Var.size());
        if (iBinarySearch < 0) {
            iBinarySearch = (-(iBinarySearch + 1)) - 1;
        }
        int iR = t83.R(iBinarySearch + 1);
        if (this.a.isEmpty() || this.a.peek().size() >= iR) {
            this.a.push(k53Var);
            return;
        }
        int iR2 = t83.R(iBinarySearch);
        k53 k53VarPop = this.a.pop();
        while (!this.a.isEmpty() && this.a.peek().size() < iR2) {
            k53VarPop = new t83(this.a.pop(), k53VarPop);
        }
        t83 t83Var2 = new t83(k53VarPop, k53Var);
        while (!this.a.isEmpty()) {
            int iBinarySearch2 = Arrays.binarySearch(t83.m, t83Var2.h);
            if (iBinarySearch2 < 0) {
                iBinarySearch2 = (-(iBinarySearch2 + 1)) - 1;
            }
            if (this.a.peek().size() >= t83.R(iBinarySearch2 + 1)) {
                break;
            } else {
                t83Var2 = new t83(this.a.pop(), t83Var2);
            }
        }
        this.a.push(t83Var2);
    }
}
