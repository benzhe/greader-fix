package defpackage;

/* loaded from: classes.dex */
public class an5 implements dn5 {
    public final dn5[] a;
    public final bn5 b;

    public an5(int i, dn5... dn5VarArr) {
        this.a = dn5VarArr;
        this.b = new bn5(i);
    }

    @Override // defpackage.dn5
    public StackTraceElement[] a(StackTraceElement[] stackTraceElementArr) {
        if (stackTraceElementArr.length <= 1024) {
            return stackTraceElementArr;
        }
        StackTraceElement[] stackTraceElementArrA = stackTraceElementArr;
        for (dn5 dn5Var : this.a) {
            if (stackTraceElementArrA.length <= 1024) {
                break;
            }
            stackTraceElementArrA = dn5Var.a(stackTraceElementArr);
        }
        return stackTraceElementArrA.length > 1024 ? this.b.a(stackTraceElementArrA) : stackTraceElementArrA;
    }
}
