package defpackage;

/* loaded from: classes.dex */
public abstract class p4 {

    public static class a extends p4 {
        public double a;
        public double[] b;

        public a(double d, double[] dArr) {
            this.a = d;
            this.b = dArr;
        }

        @Override // defpackage.p4
        public double b(double d, int i) {
            return this.b[i];
        }

        @Override // defpackage.p4
        public void c(double d, double[] dArr) {
            double[] dArr2 = this.b;
            System.arraycopy(dArr2, 0, dArr, 0, dArr2.length);
        }

        @Override // defpackage.p4
        public void d(double d, float[] fArr) {
            int i = 0;
            while (true) {
                double[] dArr = this.b;
                if (i >= dArr.length) {
                    return;
                }
                fArr[i] = (float) dArr[i];
                i++;
            }
        }

        @Override // defpackage.p4
        public double e(double d, int i) {
            return 0.0d;
        }

        @Override // defpackage.p4
        public void f(double d, double[] dArr) {
            for (int i = 0; i < this.b.length; i++) {
                dArr[i] = 0.0d;
            }
        }

        @Override // defpackage.p4
        public double[] g() {
            return new double[]{this.a};
        }
    }

    public static p4 a(int i, double[] dArr, double[][] dArr2) {
        if (dArr.length == 1) {
            i = 2;
        }
        return i != 0 ? i != 2 ? new r4(dArr, dArr2) : new a(dArr[0], dArr2[0]) : new s4(dArr, dArr2);
    }

    public abstract double b(double d, int i);

    public abstract void c(double d, double[] dArr);

    public abstract void d(double d, float[] fArr);

    public abstract double e(double d, int i);

    public abstract void f(double d, double[] dArr);

    public abstract double[] g();
}
