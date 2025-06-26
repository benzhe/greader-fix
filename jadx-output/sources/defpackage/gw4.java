package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.measurement.internal.zzaa;
import com.google.android.gms.measurement.internal.zzas;
import com.google.android.gms.measurement.internal.zzkr;
import com.google.android.gms.measurement.internal.zzp;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

/* loaded from: classes.dex */
public abstract class gw4 extends c34 implements hw4 {
    public gw4() {
        super("com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // defpackage.c34
    public final boolean Z(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        ArrayList arrayList;
        switch (i) {
            case 1:
                zzas zzasVar = (zzas) z34.a(parcel, zzas.CREATOR);
                zzp zzpVar = (zzp) z34.a(parcel, zzp.CREATOR);
                ky4 ky4Var = (ky4) this;
                Objects.requireNonNull(zzasVar, "null reference");
                ky4Var.l0(zzpVar);
                ky4Var.g0(new dy4(ky4Var, zzasVar, zzpVar));
                parcel2.writeNoException();
                return true;
            case 2:
                zzkr zzkrVar = (zzkr) z34.a(parcel, zzkr.CREATOR);
                zzp zzpVar2 = (zzp) z34.a(parcel, zzp.CREATOR);
                ky4 ky4Var2 = (ky4) this;
                Objects.requireNonNull(zzkrVar, "null reference");
                ky4Var2.l0(zzpVar2);
                ky4Var2.g0(new gy4(ky4Var2, zzkrVar, zzpVar2));
                parcel2.writeNoException();
                return true;
            case 3:
            case 8:
            default:
                return false;
            case 4:
                zzp zzpVar3 = (zzp) z34.a(parcel, zzp.CREATOR);
                ky4 ky4Var3 = (ky4) this;
                ky4Var3.l0(zzpVar3);
                ky4Var3.g0(new iy4(ky4Var3, zzpVar3));
                parcel2.writeNoException();
                return true;
            case 5:
                zzas zzasVar2 = (zzas) z34.a(parcel, zzas.CREATOR);
                String string = parcel.readString();
                parcel.readString();
                ky4 ky4Var4 = (ky4) this;
                Objects.requireNonNull(zzasVar2, "null reference");
                bi.g(string);
                ky4Var4.b2(string, true);
                ky4Var4.g0(new ey4(ky4Var4, zzasVar2, string));
                parcel2.writeNoException();
                return true;
            case 6:
                zzp zzpVar4 = (zzp) z34.a(parcel, zzp.CREATOR);
                ky4 ky4Var5 = (ky4) this;
                ky4Var5.l0(zzpVar4);
                ky4Var5.g0(new by4(ky4Var5, zzpVar4));
                parcel2.writeNoException();
                return true;
            case 7:
                zzp zzpVar5 = (zzp) z34.a(parcel, zzp.CREATOR);
                boolean z = parcel.readInt() != 0;
                ky4 ky4Var6 = (ky4) this;
                ky4Var6.l0(zzpVar5);
                try {
                    List<n25> list = (List) ((FutureTask) ky4Var6.e.m().p(new hy4(ky4Var6, zzpVar5))).get();
                    arrayList = new ArrayList(list.size());
                    for (n25 n25Var : list) {
                        if (z || !p25.F(n25Var.c)) {
                            arrayList.add(new zzkr(n25Var));
                        }
                    }
                } catch (InterruptedException | ExecutionException e) {
                    ky4Var6.e.a().f.c("Failed to get user properties. appId", qw4.t(zzpVar5.e), e);
                    arrayList = null;
                }
                parcel2.writeNoException();
                parcel2.writeTypedList(arrayList);
                return true;
            case 9:
                byte[] bArrI3 = ((ky4) this).I3((zzas) z34.a(parcel, zzas.CREATOR), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeByteArray(bArrI3);
                return true;
            case 10:
                ((ky4) this).y2(parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                String strZ0 = ((ky4) this).Z0((zzp) z34.a(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                parcel2.writeString(strZ0);
                return true;
            case 12:
                ((ky4) this).x2((zzaa) z34.a(parcel, zzaa.CREATOR), (zzp) z34.a(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
            case 13:
                zzaa zzaaVar = (zzaa) z34.a(parcel, zzaa.CREATOR);
                ky4 ky4Var7 = (ky4) this;
                Objects.requireNonNull(zzaaVar, "null reference");
                Objects.requireNonNull(zzaaVar.g, "null reference");
                ky4Var7.b2(zzaaVar.e, true);
                ky4Var7.g0(new ux4(ky4Var7, new zzaa(zzaaVar)));
                parcel2.writeNoException();
                return true;
            case 14:
                String string2 = parcel.readString();
                String string3 = parcel.readString();
                ClassLoader classLoader = z34.a;
                List<zzkr> listQ2 = ((ky4) this).Q2(string2, string3, parcel.readInt() != 0, (zzp) z34.a(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(listQ2);
                return true;
            case 15:
                String string4 = parcel.readString();
                String string5 = parcel.readString();
                String string6 = parcel.readString();
                ClassLoader classLoader2 = z34.a;
                List<zzkr> listM6 = ((ky4) this).M6(string4, string5, string6, parcel.readInt() != 0);
                parcel2.writeNoException();
                parcel2.writeTypedList(listM6);
                return true;
            case 16:
                List<zzaa> listQ0 = ((ky4) this).q0(parcel.readString(), parcel.readString(), (zzp) z34.a(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(listQ0);
                return true;
            case 17:
                List<zzaa> listV2 = ((ky4) this).V2(parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeTypedList(listV2);
                return true;
            case 18:
                zzp zzpVar6 = (zzp) z34.a(parcel, zzp.CREATOR);
                ky4 ky4Var8 = (ky4) this;
                ky4Var8.b2(zzpVar6.e, false);
                ky4Var8.g0(new ay4(ky4Var8, zzpVar6));
                parcel2.writeNoException();
                return true;
            case 19:
                ((ky4) this).z3((Bundle) z34.a(parcel, Bundle.CREATOR), (zzp) z34.a(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
            case 20:
                ((ky4) this).E0((zzp) z34.a(parcel, zzp.CREATOR));
                parcel2.writeNoException();
                return true;
        }
    }
}
