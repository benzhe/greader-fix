package defpackage;

import java.io.PrintWriter;

/* loaded from: classes2.dex */
public class m27 {
    public final int a;
    public final int b;
    public final long c;
    public final long d;
    public final long e;
    public final long f;
    public final long g;
    public final long h;
    public final long i;
    public final long j;
    public final int k;
    public final int l;
    public final int m;
    public final long n;

    public m27(int i, int i2, long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, int i3, int i4, int i5, long j9) {
        this.a = i;
        this.b = i2;
        this.c = j;
        this.d = j2;
        this.e = j3;
        this.f = j4;
        this.g = j5;
        this.h = j6;
        this.i = j7;
        this.j = j8;
        this.k = i3;
        this.l = i4;
        this.m = i5;
        this.n = j9;
    }

    public void a(PrintWriter printWriter) {
        printWriter.println("===============BEGIN PICASSO STATS ===============");
        printWriter.println("Memory Cache Stats");
        printWriter.print("  Max Cache Size: ");
        printWriter.println(this.a);
        printWriter.print("  Cache Size: ");
        printWriter.println(this.b);
        printWriter.print("  Cache % Full: ");
        printWriter.println((int) Math.ceil((this.b / this.a) * 100.0f));
        printWriter.print("  Cache Hits: ");
        printWriter.println(this.c);
        printWriter.print("  Cache Misses: ");
        printWriter.println(this.d);
        printWriter.println("Network Stats");
        printWriter.print("  Download Count: ");
        printWriter.println(this.k);
        printWriter.print("  Total Download Size: ");
        printWriter.println(this.e);
        printWriter.print("  Average Download Size: ");
        printWriter.println(this.h);
        printWriter.println("Bitmap Stats");
        printWriter.print("  Total Bitmaps Decoded: ");
        printWriter.println(this.l);
        printWriter.print("  Total Bitmap Size: ");
        printWriter.println(this.f);
        printWriter.print("  Total Transformed Bitmaps: ");
        printWriter.println(this.m);
        printWriter.print("  Total Transformed Bitmap Size: ");
        printWriter.println(this.g);
        printWriter.print("  Average Bitmap Size: ");
        printWriter.println(this.i);
        printWriter.print("  Average Transformed Bitmap Size: ");
        printWriter.println(this.j);
        printWriter.println("===============END PICASSO STATS ===============");
        printWriter.flush();
    }

    public String toString() {
        StringBuilder sbZ = jo.z("StatsSnapshot{maxSize=");
        sbZ.append(this.a);
        sbZ.append(", size=");
        sbZ.append(this.b);
        sbZ.append(", cacheHits=");
        sbZ.append(this.c);
        sbZ.append(", cacheMisses=");
        sbZ.append(this.d);
        sbZ.append(", downloadCount=");
        sbZ.append(this.k);
        sbZ.append(", totalDownloadSize=");
        sbZ.append(this.e);
        sbZ.append(", averageDownloadSize=");
        sbZ.append(this.h);
        sbZ.append(", totalOriginalBitmapSize=");
        sbZ.append(this.f);
        sbZ.append(", totalTransformedBitmapSize=");
        sbZ.append(this.g);
        sbZ.append(", averageOriginalBitmapSize=");
        sbZ.append(this.i);
        sbZ.append(", averageTransformedBitmapSize=");
        sbZ.append(this.j);
        sbZ.append(", originalBitmapCount=");
        sbZ.append(this.l);
        sbZ.append(", transformedBitmapCount=");
        sbZ.append(this.m);
        sbZ.append(", timeStamp=");
        sbZ.append(this.n);
        sbZ.append('}');
        return sbZ.toString();
    }
}
