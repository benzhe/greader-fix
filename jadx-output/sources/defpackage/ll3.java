package defpackage;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.internal.ads.zzqa;

/* loaded from: classes.dex */
public final class ll3 extends HandlerThread implements SurfaceTexture.OnFrameAvailableListener, Handler.Callback {
    public final int[] e;
    public Handler f;
    public SurfaceTexture g;
    public Error h;
    public RuntimeException i;
    public zzqa j;

    public ll3() {
        super("dummySurface");
        this.e = new int[1];
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        try {
            if (i != 1) {
                if (i == 2) {
                    this.g.updateTexImage();
                    return true;
                }
                if (i != 3) {
                    return true;
                }
                try {
                    try {
                        this.g.release();
                    } finally {
                        this.j = null;
                        this.g = null;
                        GLES20.glDeleteTextures(1, this.e, 0);
                    }
                } catch (Throwable th) {
                    try {
                        Log.e("DummySurface", "Failed to release dummy surface", th);
                    } finally {
                        quit();
                    }
                }
                return true;
            }
            try {
                try {
                    boolean z = message.arg1 != 0;
                    EGLDisplay eGLDisplayEglGetDisplay = EGL14.eglGetDisplay(0);
                    c50.E(eGLDisplayEglGetDisplay != null, "eglGetDisplay failed");
                    int[] iArr = new int[2];
                    c50.E(EGL14.eglInitialize(eGLDisplayEglGetDisplay, iArr, 0, iArr, 1), "eglInitialize failed");
                    EGLConfig[] eGLConfigArr = new EGLConfig[1];
                    int[] iArr2 = new int[1];
                    c50.E(EGL14.eglChooseConfig(eGLDisplayEglGetDisplay, new int[]{12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344}, 0, eGLConfigArr, 0, 1, iArr2, 0) && iArr2[0] > 0 && eGLConfigArr[0] != null, "eglChooseConfig failed");
                    EGLConfig eGLConfig = eGLConfigArr[0];
                    EGLContext eGLContextEglCreateContext = EGL14.eglCreateContext(eGLDisplayEglGetDisplay, eGLConfig, EGL14.EGL_NO_CONTEXT, z ? new int[]{12440, 2, 12992, 1, 12344} : new int[]{12440, 2, 12344}, 0);
                    c50.E(eGLContextEglCreateContext != null, "eglCreateContext failed");
                    EGLSurface eGLSurfaceEglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(eGLDisplayEglGetDisplay, eGLConfig, z ? new int[]{12375, 1, 12374, 1, 12992, 1, 12344} : new int[]{12375, 1, 12374, 1, 12344}, 0);
                    c50.E(eGLSurfaceEglCreatePbufferSurface != null, "eglCreatePbufferSurface failed");
                    c50.E(EGL14.eglMakeCurrent(eGLDisplayEglGetDisplay, eGLSurfaceEglCreatePbufferSurface, eGLSurfaceEglCreatePbufferSurface, eGLContextEglCreateContext), "eglMakeCurrent failed");
                    GLES20.glGenTextures(1, this.e, 0);
                    SurfaceTexture surfaceTexture = new SurfaceTexture(this.e[0]);
                    this.g = surfaceTexture;
                    surfaceTexture.setOnFrameAvailableListener(this);
                    this.j = new zzqa(this, this.g, z, null);
                    synchronized (this) {
                        notify();
                    }
                } catch (Error e) {
                    Log.e("DummySurface", "Failed to initialize dummy surface", e);
                    this.h = e;
                    synchronized (this) {
                        notify();
                    }
                }
            } catch (RuntimeException e2) {
                Log.e("DummySurface", "Failed to initialize dummy surface", e2);
                this.i = e2;
                synchronized (this) {
                    notify();
                }
            }
            return true;
        } catch (Throwable th2) {
            synchronized (this) {
                notify();
                throw th2;
            }
        }
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f.sendEmptyMessage(2);
    }
}
