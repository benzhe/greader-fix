package defpackage;

import android.graphics.Color;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class cf {
    public static final b a = new a();

    public static class a implements b {
        @Override // cf.b
        public boolean a(int i, float[] fArr) {
            if (fArr[2] >= 0.95f) {
                return false;
            }
            if (fArr[2] <= 0.05f) {
                return false;
            }
            return !((fArr[0] > 10.0f ? 1 : (fArr[0] == 10.0f ? 0 : -1)) >= 0 && (fArr[0] > 37.0f ? 1 : (fArr[0] == 37.0f ? 0 : -1)) <= 0 && (fArr[1] > 0.82f ? 1 : (fArr[1] == 0.82f ? 0 : -1)) <= 0);
        }
    }

    public interface b {
        boolean a(int i, float[] fArr);
    }

    public static final class c {
        public final int a;
        public final int b;
        public final int c;
        public final int d;
        public final int e;
        public boolean f;
        public int g;
        public int h;
        public float[] i;

        public c(int i, int i2) {
            this.a = Color.red(i);
            this.b = Color.green(i);
            this.c = Color.blue(i);
            this.d = i;
            this.e = i2;
        }

        public final void a() {
            if (this.f) {
                return;
            }
            int iD = d8.d(-1, this.d, 4.5f);
            int iD2 = d8.d(-1, this.d, 3.0f);
            if (iD != -1 && iD2 != -1) {
                this.h = d8.h(-1, iD);
                this.g = d8.h(-1, iD2);
                this.f = true;
                return;
            }
            int iD3 = d8.d(-16777216, this.d, 4.5f);
            int iD4 = d8.d(-16777216, this.d, 3.0f);
            if (iD3 == -1 || iD4 == -1) {
                this.h = iD != -1 ? d8.h(-1, iD) : d8.h(-16777216, iD3);
                this.g = iD2 != -1 ? d8.h(-1, iD2) : d8.h(-16777216, iD4);
                this.f = true;
            } else {
                this.h = d8.h(-16777216, iD3);
                this.g = d8.h(-16777216, iD4);
                this.f = true;
            }
        }

        public float[] b() {
            if (this.i == null) {
                this.i = new float[3];
            }
            d8.a(this.a, this.b, this.c, this.i);
            return this.i;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || c.class != obj.getClass()) {
                return false;
            }
            c cVar = (c) obj;
            return this.e == cVar.e && this.d == cVar.d;
        }

        public int hashCode() {
            return (this.d * 31) + this.e;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(c.class.getSimpleName());
            sb.append(" [RGB: #");
            sb.append(Integer.toHexString(this.d));
            sb.append(']');
            sb.append(" [HSL: ");
            sb.append(Arrays.toString(b()));
            sb.append(']');
            sb.append(" [Population: ");
            sb.append(this.e);
            sb.append(']');
            sb.append(" [Title Text: #");
            a();
            sb.append(Integer.toHexString(this.g));
            sb.append(']');
            sb.append(" [Body Text: #");
            a();
            sb.append(Integer.toHexString(this.h));
            sb.append(']');
            return sb.toString();
        }
    }
}
