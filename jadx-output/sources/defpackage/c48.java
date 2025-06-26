package defpackage;

import java.util.Queue;

/* loaded from: classes2.dex */
public class c48 implements a48 {
    public String e;
    public i48 f;
    public Queue<e48> g;

    public c48(i48 i48Var, Queue<e48> queue) {
        this.f = i48Var;
        this.e = i48Var.e;
        this.g = queue;
    }

    @Override // defpackage.a48
    public void a(String str, Object obj, Object obj2) {
        Object[] objArr = {obj, obj2};
        e48 e48Var = new e48();
        System.currentTimeMillis();
        e48Var.a = this.f;
        e48Var.b = objArr;
        Thread.currentThread().getName();
        this.g.add(e48Var);
    }

    @Override // defpackage.a48
    public void b(String str, Throwable th) {
        e48 e48Var = new e48();
        System.currentTimeMillis();
        e48Var.a = this.f;
        Thread.currentThread().getName();
        this.g.add(e48Var);
    }

    @Override // defpackage.a48
    public String c() {
        return this.e;
    }

    @Override // defpackage.a48
    public void d(String str) {
        e48 e48Var = new e48();
        System.currentTimeMillis();
        e48Var.a = this.f;
        Thread.currentThread().getName();
        this.g.add(e48Var);
    }

    @Override // defpackage.a48
    public void e(String str, Object obj) {
        Object[] objArr = {obj};
        e48 e48Var = new e48();
        System.currentTimeMillis();
        e48Var.a = this.f;
        e48Var.b = objArr;
        Thread.currentThread().getName();
        this.g.add(e48Var);
    }
}
