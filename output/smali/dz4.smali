.class public final Ldz4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroid/os/Bundle;

.field public final synthetic f:Lsz4;


# direct methods
.method public constructor <init>(Lsz4;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Ldz4;->f:Lsz4;

    iput-object p2, p0, Ldz4;->e:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    move-object/from16 v0, p0

    const-string v1, "creation_timestamp"

    const-string v2, "origin"

    const-string v3, "app_id"

    iget-object v4, v0, Ldz4;->f:Lsz4;

    iget-object v5, v0, Ldz4;->e:Landroid/os/Bundle;

    .line 1
    invoke-virtual {v4}, Lyv4;->d()V

    .line 2
    invoke-virtual {v4}, Lww4;->f()V

    const-string v6, "null reference"

    .line 3
    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v6, "name"

    .line 4
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    iget-object v7, v4, Lly4;->a:Lrx4;

    .line 5
    invoke-virtual {v7}, Lrx4;->g()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v1, v4, Lly4;->a:Lrx4;

    .line 6
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 7
    iget-object v1, v1, Lqw4;->n:Low4;

    const-string v2, "Conditional property not cleared since app measurement is disabled"

    .line 8
    invoke-virtual {v1, v2}, Low4;->a(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_0
    new-instance v12, Lcom/google/android/gms/measurement/internal/zzkr;

    .line 10
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v6, v4, Lly4;->a:Lrx4;

    .line 11
    invoke-virtual {v6}, Lrx4;->t()Lp25;

    move-result-object v13

    .line 12
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v6, "expired_event_name"

    .line 13
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v6, "expired_event_params"

    .line 14
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v16

    .line 15
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 16
    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 17
    invoke-static {}, Ltb4;->b()Z

    iget-object v6, v4, Lly4;->a:Lrx4;

    .line 18
    iget-object v6, v6, Lrx4;->g:Lcs4;

    .line 19
    sget-object v7, Lew4;->I0:Ldw4;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v22

    const/16 v20, 0x1

    const/16 v21, 0x0

    .line 20
    invoke-virtual/range {v13 .. v22}, Lp25;->J(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZZ)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v19
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    new-instance v14, Lcom/google/android/gms/measurement/internal/zzaa;

    .line 22
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 23
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 24
    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    const-string v1, "active"

    .line 25
    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    const-string v1, "trigger_event_name"

    .line 26
    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v13, 0x0

    const-string v2, "trigger_timeout"

    .line 27
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const/16 v16, 0x0

    const-string v8, "time_to_live"

    .line 28
    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v17

    move-object v5, v14

    move-object v8, v12

    move-object v12, v1

    move-object v1, v14

    move-wide v14, v2

    invoke-direct/range {v5 .. v19}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzkr;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzas;JLcom/google/android/gms/measurement/internal/zzas;JLcom/google/android/gms/measurement/internal/zzas;)V

    iget-object v2, v4, Lly4;->a:Lrx4;

    .line 29
    invoke-virtual {v2}, Lrx4;->z()Lh15;

    move-result-object v2

    .line 30
    invoke-virtual {v2, v1}, Lh15;->y(Lcom/google/android/gms/measurement/internal/zzaa;)V

    :catch_0
    return-void
.end method
