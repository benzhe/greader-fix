.class public final Lqx4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lsy4;

.field public final synthetic f:Lrx4;


# direct methods
.method public constructor <init>(Lrx4;Lsy4;)V
    .locals 0

    iput-object p1, p0, Lqx4;->f:Lrx4;

    iput-object p2, p0, Lqx4;->e:Lsy4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lqx4;->f:Lrx4;

    iget-object v1, p0, Lqx4;->e:Lsy4;

    .line 1
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v2

    invoke-virtual {v2}, Lox4;->d()V

    iget-object v2, v0, Lrx4;->g:Lcs4;

    .line 2
    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 3
    iget-object v2, v2, Lrx4;->f:Lc35;

    .line 4
    new-instance v2, Ljs4;

    invoke-direct {v2, v0}, Ljs4;-><init>(Lrx4;)V

    invoke-virtual {v2}, Lmy4;->k()V

    iput-object v2, v0, Lrx4;->v:Ljs4;

    new-instance v2, Liw4;

    iget-wide v3, v1, Lsy4;->f:J

    invoke-direct {v2, v0, v3, v4}, Liw4;-><init>(Lrx4;J)V

    invoke-virtual {v2}, Lww4;->g()V

    iput-object v2, v0, Lrx4;->w:Liw4;

    new-instance v1, Lkw4;

    invoke-direct {v1, v0}, Lkw4;-><init>(Lrx4;)V

    invoke-virtual {v1}, Lww4;->g()V

    iput-object v1, v0, Lrx4;->t:Lkw4;

    new-instance v1, Lh15;

    invoke-direct {v1, v0}, Lh15;-><init>(Lrx4;)V

    invoke-virtual {v1}, Lww4;->g()V

    iput-object v1, v0, Lrx4;->u:Lh15;

    iget-object v1, v0, Lrx4;->l:Lp25;

    invoke-virtual {v1}, Lmy4;->l()V

    iget-object v1, v0, Lrx4;->h:Lex4;

    invoke-virtual {v1}, Lmy4;->l()V

    new-instance v1, Lhx4;

    invoke-direct {v1, v0}, Lhx4;-><init>(Lrx4;)V

    iput-object v1, v0, Lrx4;->x:Lhx4;

    iget-object v1, v0, Lrx4;->w:Liw4;

    .line 5
    iget-boolean v3, v1, Lww4;->b:Z

    if-nez v3, :cond_21

    .line 6
    invoke-virtual {v1}, Liw4;->i()V

    iget-object v3, v1, Lly4;->a:Lrx4;

    .line 7
    iget-object v3, v3, Lrx4;->G:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v3, 0x1

    .line 9
    iput-boolean v3, v1, Lww4;->b:Z

    .line 10
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 11
    iget-object v1, v1, Lqw4;->l:Low4;

    .line 12
    iget-object v4, v0, Lrx4;->g:Lcs4;

    invoke-virtual {v4}, Lcs4;->l()J

    const-wide/32 v4, 0x9088

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "App measurement initialized, version"

    invoke-virtual {v1, v5, v4}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 13
    iget-object v1, v1, Lqw4;->l:Low4;

    const-string v4, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    .line 14
    invoke-virtual {v1, v4}, Low4;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Liw4;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lrx4;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lrx4;->t()Lp25;

    move-result-object v2

    invoke-virtual {v2, v1}, Lp25;->H(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 15
    iget-object v1, v1, Lqw4;->l:Low4;

    const-string v2, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    .line 16
    invoke-virtual {v1, v2}, Low4;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 17
    iget-object v2, v2, Lqw4;->l:Low4;

    .line 18
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v2, v1}, Low4;->a(Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 19
    iget-object v1, v1, Lqw4;->m:Low4;

    const-string v2, "Debug-level message logging enabled"

    .line 20
    invoke-virtual {v1, v2}, Low4;->a(Ljava/lang/String;)V

    iget v1, v0, Lrx4;->F:I

    iget-object v2, v0, Lrx4;->G:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eq v1, v2, :cond_3

    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 21
    iget-object v1, v1, Lqw4;->f:Low4;

    .line 22
    iget v2, v0, Lrx4;->F:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, v0, Lrx4;->G:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Not all components initialized"

    invoke-virtual {v1, v5, v2, v4}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    iput-boolean v3, v0, Lrx4;->y:Z

    .line 23
    iget-object v0, p0, Lqx4;->f:Lrx4;

    iget-object v1, p0, Lqx4;->e:Lsy4;

    iget-object v1, v1, Lsy4;->g:Lcom/google/android/gms/internal/measurement/zzy;

    .line 24
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v2

    invoke-virtual {v2}, Lox4;->d()V

    .line 25
    invoke-static {}, Lpc4;->b()Z

    iget-object v2, v0, Lrx4;->g:Lcs4;

    .line 26
    sget-object v3, Lew4;->E0:Ldw4;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 27
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v2

    invoke-virtual {v2}, Lex4;->s()Lds4;

    move-result-object v2

    .line 28
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v5

    iget-object v6, v5, Lly4;->a:Lrx4;

    invoke-virtual {v5}, Lly4;->d()V

    invoke-virtual {v5}, Lex4;->n()Landroid/content/SharedPreferences;

    move-result-object v5

    const/16 v6, 0x64

    const-string v7, "consent_source"

    .line 29
    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v7, v0, Lrx4;->g:Lcs4;

    sget-object v8, Lew4;->F0:Ldw4;

    .line 30
    invoke-virtual {v7, v4, v8}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v7

    const/16 v9, 0x28

    if-eqz v7, :cond_b

    iget-object v7, v0, Lrx4;->g:Lcs4;

    iget-object v10, v7, Lly4;->a:Lrx4;

    .line 31
    invoke-static {}, Lpc4;->b()Z

    .line 32
    invoke-virtual {v7, v4, v8}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v10

    if-nez v10, :cond_4

    move-object v7, v4

    goto :goto_2

    :cond_4
    const-string v10, "google_analytics_default_allow_ad_storage"

    invoke-virtual {v7, v10}, Lcs4;->u(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    :goto_2
    iget-object v10, v0, Lrx4;->g:Lcs4;

    iget-object v11, v10, Lly4;->a:Lrx4;

    .line 33
    invoke-static {}, Lpc4;->b()Z

    .line 34
    invoke-virtual {v10, v4, v8}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v8

    if-nez v8, :cond_5

    move-object v8, v4

    goto :goto_3

    :cond_5
    const-string v8, "google_analytics_default_allow_analytics_storage"

    invoke-virtual {v10, v8}, Lcs4;->u(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    :goto_3
    const/16 v10, 0x14

    if-nez v7, :cond_6

    if-eqz v8, :cond_7

    .line 35
    :cond_6
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v11

    .line 36
    invoke-virtual {v11, v10}, Lex4;->r(I)Z

    move-result v11

    if-eqz v11, :cond_7

    new-instance v1, Lds4;

    .line 37
    invoke-direct {v1, v7, v8}, Lds4;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    const/16 v6, 0x14

    goto :goto_5

    .line 38
    :cond_7
    invoke-virtual {v0}, Lrx4;->b()Liw4;

    move-result-object v7

    invoke-virtual {v7}, Liw4;->l()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    const/16 v7, 0x1e

    if-eq v5, v7, :cond_8

    if-ne v5, v9, :cond_9

    .line 39
    :cond_8
    invoke-virtual {v0}, Lrx4;->s()Lsz4;

    move-result-object v1

    sget-object v5, Lds4;->c:Lds4;

    iget-wide v7, v0, Lrx4;->H:J

    .line 40
    invoke-virtual {v1, v5, v10, v7, v8}, Lsz4;->y(Lds4;IJ)V

    goto :goto_4

    :cond_9
    if-eqz v1, :cond_a

    iget-object v5, v1, Lcom/google/android/gms/internal/measurement/zzy;->k:Landroid/os/Bundle;

    if-eqz v5, :cond_a

    .line 41
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v5

    .line 42
    invoke-virtual {v5, v9}, Lex4;->r(I)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzy;->k:Landroid/os/Bundle;

    .line 43
    invoke-static {v1}, Lds4;->a(Landroid/os/Bundle;)Lds4;

    move-result-object v1

    sget-object v5, Lds4;->c:Lds4;

    .line 44
    invoke-virtual {v1, v5}, Lds4;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const/16 v6, 0x28

    goto :goto_5

    :cond_a
    :goto_4
    move-object v1, v4

    :goto_5
    if-eqz v1, :cond_c

    .line 45
    invoke-virtual {v0}, Lrx4;->s()Lsz4;

    move-result-object v2

    iget-wide v7, v0, Lrx4;->H:J

    invoke-virtual {v2, v1, v6, v7, v8}, Lsz4;->y(Lds4;IJ)V

    goto :goto_6

    :cond_b
    if-eqz v1, :cond_c

    .line 46
    iget-object v5, v1, Lcom/google/android/gms/internal/measurement/zzy;->k:Landroid/os/Bundle;

    if-eqz v5, :cond_c

    .line 47
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v5

    .line 48
    invoke-virtual {v5, v9}, Lex4;->r(I)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzy;->k:Landroid/os/Bundle;

    .line 49
    invoke-static {v1}, Lds4;->a(Landroid/os/Bundle;)Lds4;

    move-result-object v1

    sget-object v5, Lds4;->c:Lds4;

    .line 50
    invoke-virtual {v1, v5}, Lds4;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 51
    invoke-virtual {v0}, Lrx4;->s()Lsz4;

    move-result-object v2

    iget-wide v5, v0, Lrx4;->H:J

    .line 52
    invoke-virtual {v2, v1, v9, v5, v6}, Lsz4;->y(Lds4;IJ)V

    :goto_6
    move-object v2, v1

    .line 53
    :cond_c
    invoke-virtual {v0}, Lrx4;->s()Lsz4;

    move-result-object v1

    invoke-virtual {v1, v2}, Lsz4;->z(Lds4;)V

    .line 54
    :cond_d
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v1

    iget-object v1, v1, Lex4;->e:Lbx4;

    invoke-virtual {v1}, Lbx4;->a()J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-nez v7, :cond_e

    .line 55
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v1

    iget-object v1, v1, Lex4;->e:Lbx4;

    iget-object v2, v0, Lrx4;->n:Lb20;

    invoke-interface {v2}, Lb20;->a()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lbx4;->b(J)V

    .line 56
    :cond_e
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v1

    iget-object v1, v1, Lex4;->j:Lbx4;

    invoke-virtual {v1}, Lbx4;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v7, v1, v5

    if-nez v7, :cond_f

    .line 58
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 59
    iget-object v1, v1, Lqw4;->n:Low4;

    .line 60
    iget-wide v5, v0, Lrx4;->H:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v5, "Persisting first open"

    invoke-virtual {v1, v5, v2}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v1

    iget-object v1, v1, Lex4;->j:Lbx4;

    iget-wide v5, v0, Lrx4;->H:J

    invoke-virtual {v1, v5, v6}, Lbx4;->b(J)V

    :cond_f
    iget-object v1, v0, Lrx4;->g:Lcs4;

    sget-object v2, Lew4;->B0:Ldw4;

    .line 62
    invoke-virtual {v1, v4, v2}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 63
    invoke-virtual {v0}, Lrx4;->s()Lsz4;

    move-result-object v1

    iget-object v1, v1, Lsz4;->n:Lv25;

    .line 64
    invoke-virtual {v1}, Lv25;->c()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v1}, Lv25;->b()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v1, v1, Lv25;->a:Lrx4;

    .line 65
    invoke-virtual {v1}, Lrx4;->q()Lex4;

    move-result-object v1

    iget-object v1, v1, Lex4;->z:Ldx4;

    invoke-virtual {v1, v4}, Ldx4;->b(Ljava/lang/String;)V

    .line 66
    :cond_10
    invoke-virtual {v0}, Lrx4;->i()Z

    move-result v1

    if-nez v1, :cond_15

    .line 67
    invoke-virtual {v0}, Lrx4;->g()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 68
    invoke-virtual {v0}, Lrx4;->t()Lp25;

    move-result-object v1

    const-string v2, "android.permission.INTERNET"

    invoke-virtual {v1, v2}, Lp25;->E(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 69
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 70
    iget-object v1, v1, Lqw4;->f:Low4;

    const-string v2, "App is missing INTERNET permission"

    .line 71
    invoke-virtual {v1, v2}, Low4;->a(Ljava/lang/String;)V

    .line 72
    :cond_11
    invoke-virtual {v0}, Lrx4;->t()Lp25;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v1, v2}, Lp25;->E(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 73
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 74
    iget-object v1, v1, Lqw4;->f:Low4;

    const-string v2, "App is missing ACCESS_NETWORK_STATE permission"

    .line 75
    invoke-virtual {v1, v2}, Low4;->a(Ljava/lang/String;)V

    :cond_12
    iget-object v1, v0, Lrx4;->a:Landroid/content/Context;

    .line 76
    invoke-static {v1}, Li20;->a(Landroid/content/Context;)Lh20;

    move-result-object v1

    invoke-virtual {v1}, Lh20;->c()Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, v0, Lrx4;->g:Lcs4;

    .line 77
    invoke-virtual {v1}, Lcs4;->A()Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, v0, Lrx4;->a:Landroid/content/Context;

    .line 78
    invoke-static {v1}, Ljx4;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 79
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 80
    iget-object v1, v1, Lqw4;->f:Low4;

    const-string v2, "AppMeasurementReceiver not registered/enabled"

    .line 81
    invoke-virtual {v1, v2}, Low4;->a(Ljava/lang/String;)V

    :cond_13
    iget-object v1, v0, Lrx4;->a:Landroid/content/Context;

    .line 82
    invoke-static {v1}, Lp25;->D(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 83
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 84
    iget-object v1, v1, Lqw4;->f:Low4;

    const-string v2, "AppMeasurementService not registered/enabled"

    .line 85
    invoke-virtual {v1, v2}, Low4;->a(Ljava/lang/String;)V

    .line 86
    :cond_14
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 87
    iget-object v1, v1, Lqw4;->f:Low4;

    const-string v2, "Uploading is not possible. App measurement disabled"

    .line 88
    invoke-virtual {v1, v2}, Low4;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 89
    :cond_15
    invoke-virtual {v0}, Lrx4;->b()Liw4;

    move-result-object v1

    invoke-virtual {v1}, Liw4;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 90
    invoke-virtual {v0}, Lrx4;->b()Liw4;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lww4;->f()V

    iget-object v1, v1, Liw4;->l:Ljava/lang/String;

    .line 92
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 93
    :cond_16
    invoke-virtual {v0}, Lrx4;->t()Lp25;

    move-result-object v1

    .line 94
    invoke-virtual {v0}, Lrx4;->b()Liw4;

    move-result-object v2

    invoke-virtual {v2}, Liw4;->l()Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v5

    invoke-virtual {v5}, Lly4;->d()V

    invoke-virtual {v5}, Lex4;->n()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "gmp_app_id"

    .line 96
    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 97
    invoke-virtual {v0}, Lrx4;->b()Liw4;

    move-result-object v7

    .line 98
    invoke-virtual {v7}, Lww4;->f()V

    iget-object v7, v7, Liw4;->l:Ljava/lang/String;

    .line 99
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v8

    invoke-virtual {v8}, Lly4;->d()V

    invoke-virtual {v8}, Lex4;->n()Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "admob_app_id"

    .line 100
    invoke-interface {v8, v9, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 101
    invoke-virtual {v1, v2, v5, v7, v8}, Lp25;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 102
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 103
    iget-object v1, v1, Lqw4;->l:Low4;

    const-string v2, "Rechecking which service to use due to a GMP App Id change"

    .line 104
    invoke-virtual {v1, v2}, Low4;->a(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v1

    invoke-virtual {v1}, Lly4;->d()V

    invoke-virtual {v1}, Lex4;->q()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Lex4;->n()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 106
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 107
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 108
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v2, :cond_17

    .line 109
    invoke-virtual {v1, v2}, Lex4;->p(Ljava/lang/Boolean;)V

    .line 110
    :cond_17
    invoke-virtual {v0}, Lrx4;->v()Lkw4;

    move-result-object v1

    invoke-virtual {v1}, Lkw4;->i()V

    iget-object v1, v0, Lrx4;->u:Lh15;

    .line 111
    invoke-virtual {v1}, Lh15;->n()V

    iget-object v1, v0, Lrx4;->u:Lh15;

    .line 112
    invoke-virtual {v1}, Lh15;->i()V

    .line 113
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v1

    iget-object v1, v1, Lex4;->j:Lbx4;

    iget-wide v7, v0, Lrx4;->H:J

    invoke-virtual {v1, v7, v8}, Lbx4;->b(J)V

    .line 114
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v1

    iget-object v1, v1, Lex4;->l:Ldx4;

    invoke-virtual {v1, v4}, Ldx4;->b(Ljava/lang/String;)V

    .line 115
    :cond_18
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v1

    invoke-virtual {v0}, Lrx4;->b()Liw4;

    move-result-object v2

    invoke-virtual {v2}, Liw4;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lly4;->d()V

    invoke-virtual {v1}, Lex4;->n()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 116
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 117
    invoke-interface {v1, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 118
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 119
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v1

    invoke-virtual {v0}, Lrx4;->b()Liw4;

    move-result-object v2

    .line 120
    invoke-virtual {v2}, Lww4;->f()V

    iget-object v2, v2, Liw4;->l:Ljava/lang/String;

    .line 121
    invoke-virtual {v1}, Lly4;->d()V

    invoke-virtual {v1}, Lex4;->n()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 122
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 123
    invoke-interface {v1, v9, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 125
    :cond_19
    invoke-static {}, Lpc4;->b()Z

    iget-object v1, v0, Lrx4;->g:Lcs4;

    .line 126
    invoke-virtual {v1, v4, v3}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 127
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v1

    invoke-virtual {v1}, Lex4;->s()Lds4;

    move-result-object v1

    invoke-virtual {v1}, Lds4;->e()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 128
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v1

    iget-object v1, v1, Lex4;->l:Ldx4;

    invoke-virtual {v1, v4}, Ldx4;->b(Ljava/lang/String;)V

    .line 129
    :cond_1a
    invoke-virtual {v0}, Lrx4;->s()Lsz4;

    move-result-object v1

    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v2

    iget-object v2, v2, Lex4;->l:Ldx4;

    invoke-virtual {v2}, Ldx4;->a()Ljava/lang/String;

    move-result-object v2

    .line 130
    iget-object v1, v1, Lsz4;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 131
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 132
    invoke-static {}, Lyc4;->b()Z

    iget-object v1, v0, Lrx4;->g:Lcs4;

    sget-object v2, Lew4;->o0:Ldw4;

    .line 133
    invoke-virtual {v1, v4, v2}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 134
    invoke-virtual {v0}, Lrx4;->t()Lp25;

    move-result-object v1

    :try_start_0
    iget-object v1, v1, Lly4;->a:Lrx4;

    iget-object v1, v1, Lrx4;->a:Landroid/content/Context;

    .line 135
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.google.firebase.remoteconfig.FirebaseRemoteConfig"

    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    nop

    .line 137
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v1

    iget-object v1, v1, Lex4;->y:Ldx4;

    invoke-virtual {v1}, Ldx4;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 138
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 139
    iget-object v1, v1, Lqw4;->i:Low4;

    const-string v2, "Remote config removed with active feature rollouts"

    .line 140
    invoke-virtual {v1, v2}, Low4;->a(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v1

    iget-object v1, v1, Lex4;->y:Ldx4;

    invoke-virtual {v1, v4}, Ldx4;->b(Ljava/lang/String;)V

    .line 142
    :cond_1b
    :goto_7
    invoke-virtual {v0}, Lrx4;->b()Liw4;

    move-result-object v1

    invoke-virtual {v1}, Liw4;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 143
    invoke-virtual {v0}, Lrx4;->b()Liw4;

    move-result-object v1

    .line 144
    invoke-virtual {v1}, Lww4;->f()V

    iget-object v1, v1, Liw4;->l:Ljava/lang/String;

    .line 145
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 146
    :cond_1c
    invoke-virtual {v0}, Lrx4;->g()Z

    move-result v1

    .line 147
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v2

    .line 148
    iget-object v2, v2, Lex4;->c:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    if-nez v2, :cond_1d

    const/4 v2, 0x0

    goto :goto_8

    :cond_1d
    const-string v5, "deferred_analytics_collection"

    .line 149
    invoke-interface {v2, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    :goto_8
    if-nez v2, :cond_1e

    .line 150
    iget-object v2, v0, Lrx4;->g:Lcs4;

    .line 151
    invoke-virtual {v2}, Lcs4;->v()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 152
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v2

    xor-int/lit8 v5, v1, 0x1

    invoke-virtual {v2, v5}, Lex4;->t(Z)V

    :cond_1e
    if-eqz v1, :cond_1f

    .line 153
    invoke-virtual {v0}, Lrx4;->s()Lsz4;

    move-result-object v1

    invoke-virtual {v1}, Lsz4;->n()V

    .line 154
    :cond_1f
    invoke-virtual {v0}, Lrx4;->r()Lx15;

    move-result-object v1

    iget-object v1, v1, Lx15;->d:Lw15;

    invoke-virtual {v1}, Lw15;->a()V

    .line 155
    invoke-virtual {v0}, Lrx4;->z()Lh15;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v1, v2}, Lh15;->z(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 156
    invoke-static {}, Lde4;->b()Z

    iget-object v1, v0, Lrx4;->g:Lcs4;

    sget-object v2, Lew4;->y0:Ldw4;

    invoke-virtual {v1, v4, v2}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 157
    invoke-virtual {v0}, Lrx4;->z()Lh15;

    move-result-object v1

    .line 158
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v2

    iget-object v2, v2, Lex4;->B:Lax4;

    invoke-virtual {v2}, Lax4;->a()Landroid/os/Bundle;

    move-result-object v2

    .line 159
    invoke-virtual {v1}, Lyv4;->d()V

    .line 160
    invoke-virtual {v1}, Lww4;->f()V

    .line 161
    invoke-virtual {v1, v3}, Lh15;->v(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v3

    new-instance v5, Lp05;

    .line 162
    invoke-direct {v5, v1, v3, v2}, Lp05;-><init>(Lh15;Lcom/google/android/gms/measurement/internal/zzp;Landroid/os/Bundle;)V

    invoke-virtual {v1, v5}, Lh15;->t(Ljava/lang/Runnable;)V

    .line 163
    :cond_20
    :goto_9
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v1

    iget-object v1, v1, Lex4;->s:Lzw4;

    iget-object v0, v0, Lrx4;->g:Lcs4;

    sget-object v2, Lew4;->X:Ldw4;

    invoke-virtual {v0, v4, v2}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lzw4;->b(Z)V

    return-void

    .line 164
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    .line 165
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
