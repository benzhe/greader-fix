.class public final synthetic Lyo3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lvo3;

.field public final f:Loo3;

.field public final g:Lcom/google/android/gms/internal/ads/zzti;

.field public final h:Lxs0;


# direct methods
.method public constructor <init>(Lvo3;Loo3;Lcom/google/android/gms/internal/ads/zzti;Lxs0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyo3;->e:Lvo3;

    iput-object p2, p0, Lyo3;->f:Loo3;

    iput-object p3, p0, Lyo3;->g:Lcom/google/android/gms/internal/ads/zzti;

    iput-object p4, p0, Lyo3;->h:Lxs0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lyo3;->e:Lvo3;

    iget-object v1, p0, Lyo3;->f:Loo3;

    iget-object v2, p0, Lyo3;->g:Lcom/google/android/gms/internal/ads/zzti;

    iget-object v3, p0, Lyo3;->h:Lxs0;

    .line 2
    :try_start_0
    invoke-virtual {v1}, Loo3;->p()Lso3;

    move-result-object v4

    .line 3
    invoke-virtual {v1}, Loo3;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v4, v2}, Lso3;->D1(Lcom/google/android/gms/internal/ads/zzti;)Lcom/google/android/gms/internal/ads/zzth;

    move-result-object v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v4, v2}, Lso3;->B5(Lcom/google/android/gms/internal/ads/zzti;)Lcom/google/android/gms/internal/ads/zzth;

    move-result-object v1

    .line 6
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzth;->n()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No entry contents."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lxs0;->b(Ljava/lang/Throwable;)Z

    .line 8
    iget-object v1, v0, Lvo3;->c:Lto3;

    invoke-static {v1}, Lto3;->a(Lto3;)V

    return-void

    .line 9
    :cond_1
    new-instance v5, Lap3;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzth;->C()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v5, v0, v2}, Lap3;-><init>(Lvo3;Ljava/io/InputStream;)V

    .line 11
    invoke-virtual {v5}, Ljava/io/PushbackInputStream;->read()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 12
    invoke-virtual {v5, v2}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzth;->K0()Z

    move-result v6

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzth;->N0()Z

    move-result v7

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzth;->M0()J

    move-result-wide v8

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzth;->L0()Z

    move-result v10

    .line 17
    new-instance v1, Lbp3;

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lbp3;-><init>(Ljava/io/InputStream;ZZJZ)V

    .line 18
    invoke-virtual {v3, v1}, Lxs0;->a(Ljava/lang/Object;)Z

    return-void

    .line 19
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to read from cache."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    const-string v2, "Unable to obtain a cache service instance."

    .line 20
    invoke-static {v2, v1}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    invoke-virtual {v3, v1}, Lxs0;->b(Ljava/lang/Throwable;)Z

    .line 22
    iget-object v0, v0, Lvo3;->c:Lto3;

    invoke-static {v0}, Lto3;->a(Lto3;)V

    return-void
.end method
