package defpackage;

/* loaded from: classes.dex */
public final class df {
    public static final df d;
    public static final df e;
    public static final df f;
    public static final df g;
    public static final df h;
    public static final df i;
    public final float[] a = {0.0f, 0.5f, 1.0f};
    public final float[] b = {0.0f, 0.5f, 1.0f};
    public final float[] c = {0.24f, 0.52f, 0.24f};

    static {
        df dfVar = new df();
        d = dfVar;
        float[] fArr = dfVar.b;
        fArr[0] = 0.55f;
        fArr[1] = 0.74f;
        c(dfVar);
        df dfVar2 = new df();
        e = dfVar2;
        b(dfVar2);
        c(dfVar2);
        df dfVar3 = new df();
        f = dfVar3;
        float[] fArr2 = dfVar3.b;
        fArr2[1] = 0.26f;
        fArr2[2] = 0.45f;
        c(dfVar3);
        df dfVar4 = new df();
        g = dfVar4;
        float[] fArr3 = dfVar4.b;
        fArr3[0] = 0.55f;
        fArr3[1] = 0.74f;
        a(dfVar4);
        df dfVar5 = new df();
        h = dfVar5;
        b(dfVar5);
        a(dfVar5);
        df dfVar6 = new df();
        i = dfVar6;
        float[] fArr4 = dfVar6.b;
        fArr4[1] = 0.26f;
        fArr4[2] = 0.45f;
        a(dfVar6);
    }

    public static void a(df dfVar) {
        float[] fArr = dfVar.a;
        fArr[1] = 0.3f;
        fArr[2] = 0.4f;
    }

    public static void b(df dfVar) {
        float[] fArr = dfVar.b;
        fArr[0] = 0.3f;
        fArr[1] = 0.5f;
        fArr[2] = 0.7f;
    }

    public static void c(df dfVar) {
        float[] fArr = dfVar.a;
        fArr[0] = 0.35f;
        fArr[1] = 1.0f;
    }
}
