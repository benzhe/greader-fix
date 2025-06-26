package pl.droidsonroids.gif;

import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.view.Surface;
import defpackage.kt7;
import java.io.FileDescriptor;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class GifInfoHandle {
    public static final GifInfoHandle b = new GifInfoHandle();
    public volatile long a;

    static {
        kt7.l(null, "pl_droidsonroids_gif");
    }

    public GifInfoHandle() {
    }

    public static native void bindSurface(long j, Surface surface, long[] jArr, boolean z);

    public static native void free(long j);

    public static native int getCurrentFrameIndex(long j);

    public static native int getCurrentLoop(long j);

    public static native int getCurrentPosition(long j);

    public static native int getDuration(long j);

    public static native int getHeight(long j);

    public static native int getLoopCount(long j);

    public static native int getNativeErrorCode(long j);

    public static native int getNumberOfFrames(long j);

    public static native long[] getSavedState(long j);

    public static native int getWidth(long j);

    public static native long openFd(FileDescriptor fileDescriptor, long j, boolean z) throws GifIOException;

    public static native long openFile(String str, boolean z) throws GifIOException;

    public static native void postUnbindSurface(long j);

    public static native long renderFrame(long j, Bitmap bitmap);

    public static native boolean reset(long j);

    public static native long restoreRemainder(long j);

    public static native int restoreSavedState(long j, long[] jArr, Bitmap bitmap);

    public static native void saveRemainder(long j);

    public static native void seekToTime(long j, int i, Bitmap bitmap);

    public static native void setSpeedFactor(long j, float f);

    public synchronized int a() {
        return getHeight(this.a);
    }

    public synchronized int b() {
        return getNumberOfFrames(this.a);
    }

    public synchronized int c() {
        return getWidth(this.a);
    }

    public synchronized boolean d() {
        return this.a == 0;
    }

    public synchronized void e() {
        free(this.a);
        this.a = 0L;
    }

    public void f(float f) {
        if (f <= 0.0f || Float.isNaN(f)) {
            throw new IllegalArgumentException("Speed factor is not positive");
        }
        if (f < 4.656613E-10f) {
            f = 4.656613E-10f;
        }
        synchronized (this) {
            setSpeedFactor(this.a, f);
        }
    }

    public void finalize() throws Throwable {
        try {
            e();
        } finally {
            super.finalize();
        }
    }

    public GifInfoHandle(String str, boolean z) throws GifIOException {
        this.a = openFile(str, z);
    }

    public GifInfoHandle(AssetFileDescriptor assetFileDescriptor, boolean z) throws IOException {
        try {
            this.a = openFd(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), z);
        } finally {
            assetFileDescriptor.close();
        }
    }
}
