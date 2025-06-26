package defpackage;

/* loaded from: classes.dex */
public class an6 {
    public volatile rm6<String, bn6> a = new rm6<>();

    public void a(String str, bn6 bn6Var) {
        if (bn6Var == null) {
            throw new IllegalArgumentException("Parameter handler must not be null.");
        }
        this.a.b(str, bn6Var);
    }

    public int b(String str, Object obj) {
        bn6[] bn6VarArr = (bn6[]) this.a.c(str).toArray(new bn6[0]);
        for (bn6 bn6Var : bn6VarArr) {
            bn6Var.a(obj);
        }
        return bn6VarArr.length;
    }
}
