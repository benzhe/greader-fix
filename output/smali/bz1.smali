.class public final synthetic Lbz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final e:Lns1;

.field public final f:Landroid/app/Activity;

.field public final g:Lpp2;

.field public final h:Lsy1;

.field public final i:Ljava/lang/String;

.field public final j:Lcom/google/android/gms/ads/internal/util/zzbg;

.field public final k:Ljava/lang/String;

.field public final l:Landroid/content/res/Resources;

.field public final m:Lcom/google/android/gms/ads/internal/overlay/zze;


# direct methods
.method public constructor <init>(Lns1;Landroid/app/Activity;Lpp2;Lsy1;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzbg;Ljava/lang/String;Landroid/content/res/Resources;Lcom/google/android/gms/ads/internal/overlay/zze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbz1;->e:Lns1;

    iput-object p2, p0, Lbz1;->f:Landroid/app/Activity;

    iput-object p3, p0, Lbz1;->g:Lpp2;

    iput-object p4, p0, Lbz1;->h:Lsy1;

    iput-object p5, p0, Lbz1;->i:Ljava/lang/String;

    iput-object p6, p0, Lbz1;->j:Lcom/google/android/gms/ads/internal/util/zzbg;

    iput-object p7, p0, Lbz1;->k:Ljava/lang/String;

    iput-object p8, p0, Lbz1;->l:Landroid/content/res/Resources;

    iput-object p9, p0, Lbz1;->m:Lcom/google/android/gms/ads/internal/overlay/zze;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 18

    move-object/from16 v1, p0

    .line 1
    iget-object v9, v1, Lbz1;->e:Lns1;

    iget-object v10, v1, Lbz1;->f:Landroid/app/Activity;

    iget-object v11, v1, Lbz1;->g:Lpp2;

    iget-object v12, v1, Lbz1;->h:Lsy1;

    iget-object v13, v1, Lbz1;->i:Ljava/lang/String;

    iget-object v0, v1, Lbz1;->j:Lcom/google/android/gms/ads/internal/util/zzbg;

    iget-object v14, v1, Lbz1;->k:Ljava/lang/String;

    iget-object v15, v1, Lbz1;->l:Landroid/content/res/Resources;

    iget-object v8, v1, Lbz1;->m:Lcom/google/android/gms/ads/internal/overlay/zze;

    if-eqz v9, :cond_0

    .line 2
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v2, "dialog_action"

    const-string v3, "confirm"

    .line 3
    invoke-virtual {v7, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v16, "dialog_click"

    move-object v2, v10

    move-object v3, v9

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move-object/from16 v17, v7

    move-object/from16 v7, v16

    move-object v1, v8

    move-object/from16 v8, v17

    .line 4
    invoke-static/range {v2 .. v8}, Lcz1;->Y6(Landroid/content/Context;Lns1;Lpp2;Lsy1;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    move-object v1, v8

    :goto_0
    const/4 v2, 0x0

    .line 5
    :try_start_0
    new-instance v3, Ly20;

    invoke-direct {v3, v10}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 6
    invoke-interface {v0, v3, v14, v13}, Lcom/google/android/gms/ads/internal/util/zzbg;->zzd(Lx20;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "Failed to schedule offline notification poster."

    .line 7
    invoke-static {v3, v0}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    if-nez v2, :cond_1

    .line 8
    invoke-virtual {v12, v13}, Lsy1;->e(Ljava/lang/String;)V

    if-eqz v9, :cond_1

    const-string v7, "offline_notification_worker_not_scheduled"

    move-object v2, v10

    move-object v3, v9

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    .line 9
    invoke-static/range {v2 .. v7}, Lcz1;->X6(Landroid/content/Context;Lns1;Lpp2;Lsy1;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzr;->zzzy()I

    move-result v0

    .line 12
    invoke-static {v10, v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzc(Landroid/content/Context;I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    if-nez v15, :cond_2

    const-string v2, "You\'ll get a notification with the link when you\'re back online"

    goto :goto_2

    .line 13
    :cond_2
    sget v2, Lcom/google/android/gms/ads/impl/R$string;->offline_opt_in_confirmation:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 14
    :goto_2
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lgz1;

    invoke-direct {v3, v1}, Lgz1;-><init>(Lcom/google/android/gms/ads/internal/overlay/zze;)V

    .line 15
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 16
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 18
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 19
    new-instance v3, Lfz1;

    invoke-direct {v3, v0, v2, v1}, Lfz1;-><init>(Landroid/app/AlertDialog;Ljava/util/Timer;Lcom/google/android/gms/ads/internal/overlay/zze;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
