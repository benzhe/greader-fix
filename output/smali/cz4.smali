.class public final Lcz4;
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

    iput-object p1, p0, Lcz4;->f:Lsz4;

    iput-object p2, p0, Lcz4;->e:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    move-object/from16 v0, p0

    const-string v1, "app_id"

    iget-object v2, v0, Lcz4;->f:Lsz4;

    iget-object v3, v0, Lcz4;->e:Landroid/os/Bundle;

    .line 1
    invoke-virtual {v2}, Lyv4;->d()V

    .line 2
    invoke-virtual {v2}, Lww4;->f()V

    const-string v4, "null reference"

    .line 3
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v5, "name"

    .line 4
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "origin"

    .line 5
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-static {v7}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    invoke-static {v5}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    const-string v6, "value"

    .line 8
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 9
    invoke-static {v8, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iget-object v4, v2, Lly4;->a:Lrx4;

    .line 11
    invoke-virtual {v4}, Lrx4;->g()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v1, v2, Lly4;->a:Lrx4;

    .line 12
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 13
    iget-object v1, v1, Lqw4;->n:Low4;

    const-string v2, "Conditional property not set since app measurement is disabled"

    .line 14
    invoke-virtual {v1, v2}, Low4;->a(Ljava/lang/String;)V

    return-void

    .line 15
    :cond_0
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzkr;

    const-string v8, "triggered_timestamp"

    .line 16
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 17
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    move-object v6, v4

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/zzkr;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v6, v2, Lly4;->a:Lrx4;

    .line 18
    invoke-virtual {v6}, Lrx4;->t()Lp25;

    move-result-object v8

    .line 19
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v6, "triggered_event_name"

    .line 20
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v6, "triggered_event_params"

    .line 21
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 22
    invoke-static {}, Ltb4;->b()Z

    iget-object v6, v2, Lly4;->a:Lrx4;

    .line 23
    iget-object v6, v6, Lrx4;->g:Lcs4;

    .line 24
    sget-object v7, Lew4;->I0:Ldw4;

    const/4 v15, 0x0

    invoke-virtual {v6, v15, v7}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v17

    const-wide/16 v13, 0x0

    const/4 v6, 0x1

    const/16 v16, 0x0

    move-object v12, v5

    move v15, v6

    .line 25
    invoke-virtual/range {v8 .. v17}, Lp25;->J(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZZ)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v19

    iget-object v6, v2, Lly4;->a:Lrx4;

    .line 26
    invoke-virtual {v6}, Lrx4;->t()Lp25;

    move-result-object v8

    .line 27
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v6, "timed_out_event_name"

    .line 28
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v6, "timed_out_event_params"

    .line 29
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 30
    invoke-static {}, Ltb4;->b()Z

    iget-object v6, v2, Lly4;->a:Lrx4;

    .line 31
    iget-object v6, v6, Lrx4;->g:Lcs4;

    const/4 v15, 0x0

    .line 32
    invoke-virtual {v6, v15, v7}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v17

    const-wide/16 v13, 0x0

    const/4 v6, 0x1

    const/16 v16, 0x0

    move-object v12, v5

    move v15, v6

    .line 33
    invoke-virtual/range {v8 .. v17}, Lp25;->J(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZZ)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v6

    iget-object v8, v2, Lly4;->a:Lrx4;

    .line 34
    invoke-virtual {v8}, Lrx4;->t()Lp25;

    move-result-object v8

    .line 35
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "expired_event_name"

    .line 36
    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "expired_event_params"

    .line 37
    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 38
    invoke-static {}, Ltb4;->b()Z

    iget-object v12, v2, Lly4;->a:Lrx4;

    .line 39
    iget-object v12, v12, Lrx4;->g:Lcs4;

    const/4 v13, 0x0

    .line 40
    invoke-virtual {v12, v13, v7}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v17

    const-wide/16 v13, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object v12, v5

    .line 41
    invoke-virtual/range {v8 .. v17}, Lp25;->J(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZZ)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v22
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzaa;

    .line 43
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "creation_timestamp"

    .line 44
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    const/4 v14, 0x0

    const-string v1, "trigger_event_name"

    .line 45
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v1, "trigger_timeout"

    .line 46
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v17

    const-string v1, "time_to_live"

    .line 47
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    move-object v8, v7

    move-object v10, v5

    move-object v11, v4

    move-object/from16 v16, v6

    invoke-direct/range {v8 .. v22}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzkr;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzas;JLcom/google/android/gms/measurement/internal/zzas;JLcom/google/android/gms/measurement/internal/zzas;)V

    iget-object v1, v2, Lly4;->a:Lrx4;

    .line 48
    invoke-virtual {v1}, Lrx4;->z()Lh15;

    move-result-object v1

    .line 49
    invoke-virtual {v1, v7}, Lh15;->y(Lcom/google/android/gms/measurement/internal/zzaa;)V

    :catch_0
    return-void
.end method
