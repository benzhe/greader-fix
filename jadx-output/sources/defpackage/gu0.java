package defpackage;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.concurrent.CountDownLatch;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

/* loaded from: classes.dex */
public final class gu0 extends Thread implements SurfaceTexture.OnFrameAvailableListener, du0 {
    public static final float[] F = {-1.0f, -1.0f, -1.0f, 1.0f, -1.0f, -1.0f, -1.0f, 1.0f, -1.0f, 1.0f, 1.0f, -1.0f};
    public EGLDisplay A;
    public EGLContext B;
    public EGLSurface C;
    public volatile boolean D;
    public volatile boolean E;
    public final bu0 e;
    public final float[] f;
    public final float[] g;
    public final float[] h;
    public final float[] i;
    public final float[] j;
    public final float[] k;
    public final float[] l;
    public float m;
    public float n;
    public float o;
    public int p;
    public int q;
    public SurfaceTexture r;
    public SurfaceTexture s;
    public int t;
    public int u;
    public int v;
    public FloatBuffer w;
    public final CountDownLatch x;
    public final Object y;
    public EGL10 z;

    public gu0(Context context) {
        super("SphericalVideoProcessor");
        float[] fArr = F;
        FloatBuffer floatBufferAsFloatBuffer = ByteBuffer.allocateDirect(fArr.length << 2).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.w = floatBufferAsFloatBuffer;
        floatBufferAsFloatBuffer.put(fArr).position(0);
        this.f = new float[9];
        this.g = new float[9];
        this.h = new float[9];
        this.i = new float[9];
        this.j = new float[9];
        this.k = new float[9];
        this.l = new float[9];
        this.m = Float.NaN;
        bu0 bu0Var = new bu0(context);
        this.e = bu0Var;
        bu0Var.h = this;
        this.x = new CountDownLatch(1);
        this.y = new Object();
    }

    public static void a(float[] fArr, float f) {
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        double d = f;
        fArr[4] = (float) Math.cos(d);
        fArr[5] = (float) (-Math.sin(d));
        fArr[6] = 0.0f;
        fArr[7] = (float) Math.sin(d);
        fArr[8] = (float) Math.cos(d);
    }

    public static void b(float[] fArr, float[] fArr2, float[] fArr3) {
        fArr[0] = (fArr2[2] * fArr3[6]) + (fArr2[1] * fArr3[3]) + (fArr2[0] * fArr3[0]);
        fArr[1] = (fArr2[2] * fArr3[7]) + (fArr2[1] * fArr3[4]) + (fArr2[0] * fArr3[1]);
        fArr[2] = (fArr2[2] * fArr3[8]) + (fArr2[1] * fArr3[5]) + (fArr2[0] * fArr3[2]);
        fArr[3] = (fArr2[5] * fArr3[6]) + (fArr2[4] * fArr3[3]) + (fArr2[3] * fArr3[0]);
        fArr[4] = (fArr2[5] * fArr3[7]) + (fArr2[4] * fArr3[4]) + (fArr2[3] * fArr3[1]);
        fArr[5] = (fArr2[5] * fArr3[8]) + (fArr2[4] * fArr3[5]) + (fArr2[3] * fArr3[2]);
        fArr[6] = (fArr2[8] * fArr3[6]) + (fArr2[7] * fArr3[3]) + (fArr2[6] * fArr3[0]);
        fArr[7] = (fArr2[8] * fArr3[7]) + (fArr2[7] * fArr3[4]) + (fArr2[6] * fArr3[1]);
        fArr[8] = (fArr2[8] * fArr3[8]) + (fArr2[7] * fArr3[5]) + (fArr2[6] * fArr3[2]);
    }

    public static void f(float[] fArr, float f) {
        double d = f;
        fArr[0] = (float) Math.cos(d);
        fArr[1] = (float) (-Math.sin(d));
        fArr[2] = 0.0f;
        fArr[3] = (float) Math.sin(d);
        fArr[4] = (float) Math.cos(d);
        fArr[5] = 0.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
    }

    public static int g(int i, String str) {
        int iGlCreateShader = GLES20.glCreateShader(i);
        h("createShader");
        if (iGlCreateShader == 0) {
            return iGlCreateShader;
        }
        GLES20.glShaderSource(iGlCreateShader, str);
        h("shaderSource");
        GLES20.glCompileShader(iGlCreateShader);
        h("compileShader");
        int[] iArr = new int[1];
        GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
        h("getShaderiv");
        if (iArr[0] != 0) {
            return iGlCreateShader;
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append("Could not compile shader ");
        sb.append(i);
        sb.append(":");
        Log.e("SphericalVideoRenderer", sb.toString());
        Log.e("SphericalVideoRenderer", GLES20.glGetShaderInfoLog(iGlCreateShader));
        GLES20.glDeleteShader(iGlCreateShader);
        h("deleteShader");
        return 0;
    }

    public static void h(String str) {
        int iGlGetError = GLES20.glGetError();
        if (iGlGetError != 0) {
            StringBuilder sb = new StringBuilder(str.length() + 21);
            sb.append(str);
            sb.append(": glError ");
            sb.append(iGlGetError);
            Log.e("SphericalVideoRenderer", sb.toString());
        }
    }

    public final void c() {
        synchronized (this.y) {
            this.E = true;
            this.s = null;
            this.y.notifyAll();
        }
    }

    public final boolean d() {
        EGLSurface eGLSurface;
        EGLSurface eGLSurface2 = this.C;
        boolean zEglDestroyContext = false;
        if (eGLSurface2 != null && eGLSurface2 != (eGLSurface = EGL10.EGL_NO_SURFACE)) {
            zEglDestroyContext = this.z.eglDestroySurface(this.A, this.C) | this.z.eglMakeCurrent(this.A, eGLSurface, eGLSurface, EGL10.EGL_NO_CONTEXT) | false;
            this.C = null;
        }
        EGLContext eGLContext = this.B;
        if (eGLContext != null) {
            zEglDestroyContext |= this.z.eglDestroyContext(this.A, eGLContext);
            this.B = null;
        }
        EGLDisplay eGLDisplay = this.A;
        if (eGLDisplay == null) {
            return zEglDestroyContext;
        }
        boolean zEglTerminate = zEglDestroyContext | this.z.eglTerminate(eGLDisplay);
        this.A = null;
        return zEglTerminate;
    }

    public final void e(float f, float f2) {
        float f3;
        float f4;
        float f5;
        int i = this.q;
        int i2 = this.p;
        if (i > i2) {
            f3 = (f * 1.7453293f) / i;
            f4 = f2 * 1.7453293f;
            f5 = i;
        } else {
            f3 = (f * 1.7453293f) / i2;
            f4 = f2 * 1.7453293f;
            f5 = i2;
        }
        this.n -= f3;
        float f6 = this.o - (f4 / f5);
        this.o = f6;
        if (f6 < -1.5707964f) {
            this.o = -1.5707964f;
        }
        if (this.o > 1.5707964f) {
            this.o = 1.5707964f;
        }
    }

    public final void i(int i, int i2) {
        synchronized (this.y) {
            this.q = i;
            this.p = i2;
            this.D = true;
            this.y.notifyAll();
        }
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.v++;
        synchronized (this.y) {
            this.y.notifyAll();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 1086
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.gu0.run():void");
    }
}
