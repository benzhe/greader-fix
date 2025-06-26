package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import defpackage.bi;
import defpackage.is0;
import defpackage.ms0;
import defpackage.nm0;
import defpackage.or0;
import defpackage.xl0;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes.dex */
public final class zzaue extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaue> CREATOR = new nm0();
    public ParcelFileDescriptor e;
    public Parcelable f = null;
    public boolean g = true;

    public zzaue(ParcelFileDescriptor parcelFileDescriptor) {
        this.e = parcelFileDescriptor;
    }

    public final <T extends SafeParcelable> T n(Parcelable.Creator<T> creator) throws IOException {
        if (this.g) {
            if (this.e == null) {
                is0.zzex("File descriptor is empty, returning null.");
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(new ParcelFileDescriptor.AutoCloseInputStream(this.e));
            try {
                try {
                    int i = dataInputStream.readInt();
                    byte[] bArr = new byte[i];
                    dataInputStream.readFully(bArr, 0, i);
                    Parcel parcelObtain = Parcel.obtain();
                    try {
                        parcelObtain.unmarshall(bArr, 0, i);
                        parcelObtain.setDataPosition(0);
                        this.f = creator.createFromParcel(parcelObtain);
                        parcelObtain.recycle();
                        this.g = false;
                    } catch (Throwable th) {
                        parcelObtain.recycle();
                        throw th;
                    }
                } catch (IOException e) {
                    is0.zzc("Could not read from parcel file descriptor", e);
                    try {
                        dataInputStream.close();
                    } catch (IOException unused) {
                    }
                    return null;
                }
            } finally {
                try {
                    dataInputStream.close();
                } catch (IOException unused2) {
                }
            }
        }
        return (T) this.f;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) throws IOException {
        final ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream;
        ParcelFileDescriptor[] parcelFileDescriptorArrCreatePipe;
        if (this.e == null) {
            Parcel parcelObtain = Parcel.obtain();
            try {
                this.f.writeToParcel(parcelObtain, 0);
                final byte[] bArrMarshall = parcelObtain.marshall();
                parcelObtain.recycle();
                ParcelFileDescriptor parcelFileDescriptor = null;
                try {
                    parcelFileDescriptorArrCreatePipe = ParcelFileDescriptor.createPipe();
                    autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(parcelFileDescriptorArrCreatePipe[1]);
                } catch (IOException e) {
                    e = e;
                    autoCloseOutputStream = null;
                }
                try {
                    ms0.a.execute(new Runnable(autoCloseOutputStream, bArrMarshall) { // from class: om0
                        public final OutputStream e;
                        public final byte[] f;

                        {
                            this.e = autoCloseOutputStream;
                            this.f = bArrMarshall;
                        }

                        @Override // java.lang.Runnable
                        public final void run() throws Throwable {
                            DataOutputStream dataOutputStream;
                            OutputStream outputStream = this.e;
                            byte[] bArr = this.f;
                            DataOutputStream dataOutputStream2 = null;
                            DataOutputStream dataOutputStream3 = null;
                            try {
                                try {
                                    try {
                                        dataOutputStream = new DataOutputStream(outputStream);
                                    } catch (Throwable th) {
                                        th = th;
                                        dataOutputStream = dataOutputStream2;
                                    }
                                } catch (IOException e2) {
                                    e = e2;
                                }
                                try {
                                    int length = bArr.length;
                                    dataOutputStream.writeInt(length);
                                    dataOutputStream.write(bArr);
                                    dataOutputStream.close();
                                    dataOutputStream2 = length;
                                } catch (IOException e3) {
                                    e = e3;
                                    dataOutputStream3 = dataOutputStream;
                                    is0.zzc("Error transporting the ad response", e);
                                    or0 or0VarZzkz = zzr.zzkz();
                                    xl0.d(or0VarZzkz.e, or0VarZzkz.f).a(e, "LargeParcelTeleporter.pipeData.1");
                                    dataOutputStream2 = dataOutputStream3;
                                    if (dataOutputStream3 != null) {
                                        dataOutputStream3.close();
                                        dataOutputStream2 = dataOutputStream3;
                                    } else if (outputStream != null) {
                                        outputStream.close();
                                        dataOutputStream2 = dataOutputStream3;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    if (dataOutputStream == null) {
                                        if (outputStream != null) {
                                            outputStream.close();
                                        }
                                        throw th;
                                    }
                                    dataOutputStream.close();
                                    throw th;
                                }
                            } catch (IOException unused) {
                            }
                        }
                    });
                    parcelFileDescriptor = parcelFileDescriptorArrCreatePipe[0];
                } catch (IOException e2) {
                    e = e2;
                    is0.zzc("Error transporting the ad response", e);
                    or0 or0VarZzkz = zzr.zzkz();
                    xl0.d(or0VarZzkz.e, or0VarZzkz.f).a(e, "LargeParcelTeleporter.pipeData.2");
                    if (autoCloseOutputStream != null) {
                        try {
                            autoCloseOutputStream.close();
                        } catch (IOException unused) {
                        }
                    }
                    this.e = parcelFileDescriptor;
                    int iM0 = bi.m0(parcel, 20293);
                    bi.h0(parcel, 2, this.e, i, false);
                    bi.t0(parcel, iM0);
                }
                this.e = parcelFileDescriptor;
            } catch (Throwable th) {
                parcelObtain.recycle();
                throw th;
            }
        }
        int iM02 = bi.m0(parcel, 20293);
        bi.h0(parcel, 2, this.e, i, false);
        bi.t0(parcel, iM02);
    }
}
