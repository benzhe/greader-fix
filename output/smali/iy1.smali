.class public final synthetic Liy1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljo2;


# instance fields
.field public final a:Ljy1;

.field public final b:Z

.field public final c:Ljava/util/ArrayList;

.field public final d:Lcq3;

.field public final e:Leq3$b;


# direct methods
.method public constructor <init>(Ljy1;ZLjava/util/ArrayList;Lcq3;Leq3$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liy1;->a:Ljy1;

    iput-boolean p2, p0, Liy1;->b:Z

    iput-object p3, p0, Liy1;->c:Ljava/util/ArrayList;

    iput-object p4, p0, Liy1;->d:Lcq3;

    iput-object p5, p0, Liy1;->e:Leq3$b;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Liy1;->a:Ljy1;

    iget-boolean v1, p0, Liy1;->b:Z

    iget-object v2, p0, Liy1;->c:Ljava/util/ArrayList;

    iget-object v3, p0, Liy1;->d:Lcq3;

    iget-object v4, p0, Liy1;->e:Leq3$b;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    iget-object v5, v0, Ljy1;->b:Lgy1;

    .line 3
    iget-object v5, v5, Lgy1;->f:Lcom/google/android/gms/ads/internal/util/zzf;

    .line 4
    invoke-interface {v5}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzn()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_e

    .line 5
    iget-object v0, v0, Ljy1;->b:Lgy1;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Leq3$a;->X()Leq3$a$a;

    move-result-object v5

    .line 8
    iget-boolean v7, v5, Ls63$b;->g:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    .line 9
    invoke-virtual {v5}, Ls63$b;->o()V

    .line 10
    iput-boolean v8, v5, Ls63$b;->g:Z

    .line 11
    :cond_0
    iget-object v7, v5, Ls63$b;->f:Ls63;

    check-cast v7, Leq3$a;

    invoke-static {v7, v2}, Leq3$a;->E(Leq3$a;Ljava/lang/Iterable;)V

    .line 12
    iget-object v2, v0, Lgy1;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/google/android/gms/ads/internal/util/zzr;->zzb(Landroid/content/ContentResolver;)I

    move-result v2

    const/4 v7, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 14
    :goto_0
    invoke-static {v2}, Lgy1;->a(Z)Lvq3;

    move-result-object v2

    .line 15
    iget-boolean v9, v5, Ls63$b;->g:Z

    if-eqz v9, :cond_2

    .line 16
    invoke-virtual {v5}, Ls63$b;->o()V

    .line 17
    iput-boolean v8, v5, Ls63$b;->g:Z

    .line 18
    :cond_2
    iget-object v9, v5, Ls63$b;->f:Ls63;

    check-cast v9, Leq3$a;

    invoke-static {v9, v2}, Leq3$a;->I(Leq3$a;Lvq3;)V

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object v2

    iget-object v9, v0, Lgy1;->a:Landroid/content/Context;

    iget-object v10, v0, Lgy1;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v9, v10}, Lcom/google/android/gms/ads/internal/util/zzr;->zza(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Lvq3;

    move-result-object v2

    .line 20
    iget-boolean v9, v5, Ls63$b;->g:Z

    if-eqz v9, :cond_3

    .line 21
    invoke-virtual {v5}, Ls63$b;->o()V

    .line 22
    iput-boolean v8, v5, Ls63$b;->g:Z

    .line 23
    :cond_3
    iget-object v9, v5, Ls63$b;->f:Ls63;

    check-cast v9, Leq3$a;

    invoke-static {v9, v2}, Leq3$a;->J(Leq3$a;Lvq3;)V

    .line 24
    iget-object v2, v0, Lgy1;->d:Ldy1;

    .line 25
    iget-object v9, v2, Ldy1;->f:Ljava/lang/Object;

    monitor-enter v9

    .line 26
    :try_start_0
    iget-wide v10, v2, Ldy1;->b:J

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 27
    iget-boolean v2, v5, Ls63$b;->g:Z

    if-eqz v2, :cond_4

    .line 28
    invoke-virtual {v5}, Ls63$b;->o()V

    .line 29
    iput-boolean v8, v5, Ls63$b;->g:Z

    .line 30
    :cond_4
    iget-object v2, v5, Ls63$b;->f:Ls63;

    check-cast v2, Leq3$a;

    invoke-static {v2, v10, v11}, Leq3$a;->F(Leq3$a;J)V

    .line 31
    iget-object v2, v0, Lgy1;->d:Ldy1;

    .line 32
    monitor-enter v2

    .line 33
    :try_start_1
    iget-object v9, v2, Ldy1;->h:Ljava/lang/Object;

    monitor-enter v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 34
    :try_start_2
    iget-wide v10, v2, Ldy1;->d:J

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    .line 35
    iget-boolean v2, v5, Ls63$b;->g:Z

    if-eqz v2, :cond_5

    .line 36
    invoke-virtual {v5}, Ls63$b;->o()V

    .line 37
    iput-boolean v8, v5, Ls63$b;->g:Z

    .line 38
    :cond_5
    iget-object v2, v5, Ls63$b;->f:Ls63;

    check-cast v2, Leq3$a;

    invoke-static {v2, v10, v11}, Leq3$a;->H(Leq3$a;J)V

    .line 39
    iget-object v2, v0, Lgy1;->d:Ldy1;

    .line 40
    iget-object v10, v2, Ldy1;->e:Ljava/lang/Object;

    monitor-enter v10

    .line 41
    :try_start_3
    iget v2, v2, Ldy1;->a:I

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 42
    iget-boolean v9, v5, Ls63$b;->g:Z

    if-eqz v9, :cond_6

    .line 43
    invoke-virtual {v5}, Ls63$b;->o()V

    .line 44
    iput-boolean v8, v5, Ls63$b;->g:Z

    .line 45
    :cond_6
    iget-object v9, v5, Ls63$b;->f:Ls63;

    check-cast v9, Leq3$a;

    invoke-static {v9, v2}, Leq3$a;->y(Leq3$a;I)V

    .line 46
    iget-boolean v2, v5, Ls63$b;->g:Z

    if-eqz v2, :cond_7

    .line 47
    invoke-virtual {v5}, Ls63$b;->o()V

    .line 48
    iput-boolean v8, v5, Ls63$b;->g:Z

    .line 49
    :cond_7
    iget-object v2, v5, Ls63$b;->f:Ls63;

    check-cast v2, Leq3$a;

    invoke-static {v2, v4}, Leq3$a;->B(Leq3$a;Leq3$b;)V

    .line 50
    iget-boolean v2, v5, Ls63$b;->g:Z

    if-eqz v2, :cond_8

    .line 51
    invoke-virtual {v5}, Ls63$b;->o()V

    .line 52
    iput-boolean v8, v5, Ls63$b;->g:Z

    .line 53
    :cond_8
    iget-object v2, v5, Ls63$b;->f:Ls63;

    check-cast v2, Leq3$a;

    invoke-static {v2, v3}, Leq3$a;->A(Leq3$a;Lcq3;)V

    .line 54
    iget-object v2, v0, Lgy1;->g:Lvq3;

    .line 55
    iget-boolean v3, v5, Ls63$b;->g:Z

    if-eqz v3, :cond_9

    .line 56
    invoke-virtual {v5}, Ls63$b;->o()V

    .line 57
    iput-boolean v8, v5, Ls63$b;->g:Z

    .line 58
    :cond_9
    iget-object v3, v5, Ls63$b;->f:Ls63;

    check-cast v3, Leq3$a;

    invoke-static {v3, v2}, Leq3$a;->K(Leq3$a;Lvq3;)V

    .line 59
    invoke-static {v1}, Lgy1;->a(Z)Lvq3;

    move-result-object v2

    .line 60
    iget-boolean v3, v5, Ls63$b;->g:Z

    if-eqz v3, :cond_a

    .line 61
    invoke-virtual {v5}, Ls63$b;->o()V

    .line 62
    iput-boolean v8, v5, Ls63$b;->g:Z

    .line 63
    :cond_a
    iget-object v3, v5, Ls63$b;->f:Ls63;

    check-cast v3, Leq3$a;

    invoke-static {v3, v2}, Leq3$a;->D(Leq3$a;Lvq3;)V

    .line 64
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v2

    invoke-interface {v2}, Lb20;->a()J

    move-result-wide v2

    .line 65
    iget-boolean v4, v5, Ls63$b;->g:Z

    if-eqz v4, :cond_b

    .line 66
    invoke-virtual {v5}, Ls63$b;->o()V

    .line 67
    iput-boolean v8, v5, Ls63$b;->g:Z

    .line 68
    :cond_b
    iget-object v4, v5, Ls63$b;->f:Ls63;

    check-cast v4, Leq3$a;

    invoke-static {v4, v2, v3}, Leq3$a;->z(Leq3$a;J)V

    .line 69
    iget-object v0, v0, Lgy1;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 70
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/internal/util/zzr;->zza(Landroid/content/ContentResolver;)I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_1

    :cond_c
    const/4 v0, 0x0

    .line 71
    :goto_1
    invoke-static {v0}, Lgy1;->a(Z)Lvq3;

    move-result-object v0

    .line 72
    iget-boolean v2, v5, Ls63$b;->g:Z

    if-eqz v2, :cond_d

    .line 73
    invoke-virtual {v5}, Ls63$b;->o()V

    .line 74
    iput-boolean v8, v5, Ls63$b;->g:Z

    .line 75
    :cond_d
    iget-object v2, v5, Ls63$b;->f:Ls63;

    check-cast v2, Leq3$a;

    invoke-static {v2, v0}, Leq3$a;->G(Leq3$a;Lvq3;)V

    .line 76
    invoke-virtual {v5}, Ls63$b;->j()Le83;

    move-result-object v0

    check-cast v0, Ls63;

    check-cast v0, Leq3$a;

    .line 77
    invoke-virtual {v0}, Lb53;->b()[B

    move-result-object v0

    .line 78
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "timestamp"

    .line 79
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v4

    invoke-interface {v4}, Lb20;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "serialized_proto_data"

    .line 80
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v0, "offline_signal_contents"

    .line 81
    invoke-virtual {p1, v0, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const-string v0, "UPDATE offline_signal_statistics SET value = value+1 WHERE statistic_name = \'%s\'"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "total_requests"

    aput-object v3, v2, v8

    .line 82
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    if-nez v1, :cond_e

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "failed_requests"

    aput-object v2, v1, v8

    .line 83
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 84
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 85
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit v2

    throw p1

    :catchall_3
    move-exception p1

    .line 86
    :try_start_7
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p1

    :cond_e
    :goto_2
    return-object v6
.end method
