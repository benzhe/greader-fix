.class public abstract Lgw4;
.super Lc34;
.source "SourceFile"

# interfaces
.implements Lhw4;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    .line 1
    invoke-direct {p0, v0}, Lc34;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final Z(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p4, "null reference"

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v0

    .line 1
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lz34;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzp;

    .line 2
    move-object p2, p0

    check-cast p2, Lky4;

    invoke-virtual {p2, p1}, Lky4;->E0(Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :pswitch_2
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4
    invoke-static {p2, p1}, Lz34;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 5
    sget-object p4, Lcom/google/android/gms/measurement/internal/zzp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lz34;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/measurement/internal/zzp;

    .line 6
    move-object p4, p0

    check-cast p4, Lky4;

    invoke-virtual {p4, p1, p2}, Lky4;->z3(Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 8
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lz34;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzp;

    .line 9
    move-object p2, p0

    check-cast p2, Lky4;

    .line 10
    iget-object p4, p1, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-virtual {p2, p4, v0}, Lky4;->b2(Ljava/lang/String;Z)V

    new-instance p4, Lay4;

    .line 11
    invoke-direct {p4, p2, p1}, Lay4;-><init>(Lky4;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-virtual {p2, p4}, Lky4;->g0(Ljava/lang/Runnable;)V

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 13
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 16
    move-object v0, p0

    check-cast v0, Lky4;

    invoke-virtual {v0, p1, p4, p2}, Lky4;->V2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 18
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_2

    .line 19
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 21
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lz34;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/measurement/internal/zzp;

    .line 22
    move-object v0, p0

    check-cast v0, Lky4;

    invoke-virtual {v0, p1, p4, p2}, Lky4;->q0(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzp;)Ljava/util/List;

    move-result-object p1

    .line 23
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 24
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_2

    .line 25
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 27
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 28
    sget-object v3, Lz34;->a:Ljava/lang/ClassLoader;

    .line 29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 30
    :cond_0
    move-object p2, p0

    check-cast p2, Lky4;

    invoke-virtual {p2, p1, p4, v2, v0}, Lky4;->M6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    .line 31
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 32
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_2

    .line 33
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 34
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 35
    sget-object v2, Lz34;->a:Ljava/lang/ClassLoader;

    .line 36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 37
    :cond_1
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lz34;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/measurement/internal/zzp;

    .line 38
    move-object v2, p0

    check-cast v2, Lky4;

    invoke-virtual {v2, p1, p4, v0, p2}, Lky4;->Q2(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzp;)Ljava/util/List;

    move-result-object p1

    .line 39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 40
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_2

    .line 41
    :pswitch_8
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzaa;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lz34;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzaa;

    .line 42
    move-object p2, p0

    check-cast p2, Lky4;

    .line 43
    invoke-static {p1, p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    .line 45
    invoke-static {v0, p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    iget-object p4, p1, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    invoke-virtual {p2, p4, v1}, Lky4;->b2(Ljava/lang/String;Z)V

    new-instance p4, Lcom/google/android/gms/measurement/internal/zzaa;

    .line 47
    invoke-direct {p4, p1}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Lcom/google/android/gms/measurement/internal/zzaa;)V

    new-instance p1, Lux4;

    .line 48
    invoke-direct {p1, p2, p4}, Lux4;-><init>(Lky4;Lcom/google/android/gms/measurement/internal/zzaa;)V

    invoke-virtual {p2, p1}, Lky4;->g0(Ljava/lang/Runnable;)V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 50
    :pswitch_9
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzaa;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lz34;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzaa;

    .line 51
    sget-object p4, Lcom/google/android/gms/measurement/internal/zzp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lz34;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/measurement/internal/zzp;

    .line 52
    move-object p4, p0

    check-cast p4, Lky4;

    invoke-virtual {p4, p1, p2}, Lky4;->x2(Lcom/google/android/gms/measurement/internal/zzaa;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 54
    :pswitch_a
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lz34;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzp;

    .line 55
    move-object p2, p0

    check-cast p2, Lky4;

    invoke-virtual {p2, p1}, Lky4;->Z0(Lcom/google/android/gms/measurement/internal/zzp;)Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 58
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 62
    move-object v2, p0

    check-cast v2, Lky4;

    invoke-virtual/range {v2 .. v7}, Lky4;->y2(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 64
    :pswitch_c
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzas;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lz34;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzas;

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 66
    move-object p4, p0

    check-cast p4, Lky4;

    invoke-virtual {p4, p1, p2}, Lky4;->I3(Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)[B

    move-result-object p1

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_2

    .line 69
    :pswitch_d
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lz34;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzp;

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    .line 71
    :cond_2
    move-object p2, p0

    check-cast p2, Lky4;

    .line 72
    invoke-virtual {p2, p1}, Lky4;->l0(Lcom/google/android/gms/measurement/internal/zzp;)V

    iget-object p4, p2, Lky4;->e:Lj25;

    .line 73
    invoke-virtual {p4}, Lj25;->m()Lox4;

    move-result-object p4

    new-instance v2, Lhy4;

    invoke-direct {v2, p2, p1}, Lhy4;-><init>(Lky4;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 74
    invoke-virtual {p4, v2}, Lox4;->p(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p4

    .line 75
    :try_start_0
    check-cast p4, Ljava/util/concurrent/FutureTask;

    invoke-virtual {p4}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    .line 76
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_3
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln25;

    if-nez v0, :cond_4

    .line 78
    iget-object v4, v3, Ln25;->c:Ljava/lang/String;

    invoke-static {v4}, Lp25;->F(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 79
    :cond_4
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-direct {v4, v3}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Ln25;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    goto :goto_1

    :catch_1
    move-exception p4

    :goto_1
    iget-object p2, p2, Lky4;->e:Lj25;

    .line 80
    invoke-virtual {p2}, Lj25;->a()Lqw4;

    move-result-object p2

    .line 81
    iget-object p2, p2, Lqw4;->f:Low4;

    .line 82
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-static {p1}, Lqw4;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Failed to get user properties. appId"

    .line 83
    invoke-virtual {p2, v0, p1, p4}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 84
    :cond_5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_2

    .line 86
    :pswitch_e
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lz34;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzp;

    .line 87
    move-object p2, p0

    check-cast p2, Lky4;

    .line 88
    invoke-virtual {p2, p1}, Lky4;->l0(Lcom/google/android/gms/measurement/internal/zzp;)V

    new-instance p4, Lby4;

    .line 89
    invoke-direct {p4, p2, p1}, Lby4;-><init>(Lky4;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-virtual {p2, p4}, Lky4;->g0(Ljava/lang/Runnable;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    .line 91
    :pswitch_f
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzas;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lz34;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzas;

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 94
    move-object p2, p0

    check-cast p2, Lky4;

    .line 95
    invoke-static {p1, p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    invoke-static {v0}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    invoke-virtual {p2, v0, v1}, Lky4;->b2(Ljava/lang/String;Z)V

    new-instance p4, Ley4;

    .line 98
    invoke-direct {p4, p2, p1, v0}, Ley4;-><init>(Lky4;Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Lky4;->g0(Ljava/lang/Runnable;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 100
    :pswitch_10
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lz34;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzp;

    .line 101
    move-object p2, p0

    check-cast p2, Lky4;

    .line 102
    invoke-virtual {p2, p1}, Lky4;->l0(Lcom/google/android/gms/measurement/internal/zzp;)V

    new-instance p4, Liy4;

    .line 103
    invoke-direct {p4, p2, p1}, Liy4;-><init>(Lky4;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-virtual {p2, p4}, Lky4;->g0(Ljava/lang/Runnable;)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 105
    :pswitch_11
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzkr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lz34;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzkr;

    .line 106
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lz34;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/measurement/internal/zzp;

    .line 107
    move-object v0, p0

    check-cast v0, Lky4;

    .line 108
    invoke-static {p1, p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    invoke-virtual {v0, p2}, Lky4;->l0(Lcom/google/android/gms/measurement/internal/zzp;)V

    new-instance p4, Lgy4;

    .line 110
    invoke-direct {p4, v0, p1, p2}, Lgy4;-><init>(Lky4;Lcom/google/android/gms/measurement/internal/zzkr;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-virtual {v0, p4}, Lky4;->g0(Ljava/lang/Runnable;)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_2

    .line 112
    :pswitch_12
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzas;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lz34;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzas;

    .line 113
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lz34;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/measurement/internal/zzp;

    .line 114
    move-object v0, p0

    check-cast v0, Lky4;

    .line 115
    invoke-static {p1, p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    invoke-virtual {v0, p2}, Lky4;->l0(Lcom/google/android/gms/measurement/internal/zzp;)V

    new-instance p4, Ldy4;

    .line 117
    invoke-direct {p4, v0, p1, p2}, Ldy4;-><init>(Lky4;Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-virtual {v0, p4}, Lky4;->g0(Ljava/lang/Runnable;)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
