package defpackage;

/* loaded from: classes.dex */
public class er5 {
    public int a;
    public int b;

    public er5(int i, int i2) {
        bx5.c((i & 1) == i, "Generator ID %d contains more than %d reserved bits", Integer.valueOf(i), 1);
        this.b = i;
        bx5.c((i2 & 1) == i, "Cannot supply target ID from different generator ID", new Object[0]);
        this.a = i2;
    }

    public int a() {
        int i = this.a;
        this.a = i + 2;
        return i;
    }
}
