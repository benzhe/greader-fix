.class public final Lcz1;
.super Lmk0;
.source "SourceFile"


# instance fields
.field public final f:Landroid/content/Context;

.field public final g:Lns1;

.field public final h:Lls0;

.field public final i:Lsy1;

.field public final j:Lpp2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lsy1;Lls0;Lns1;Lpp2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmk0;-><init>()V

    .line 2
    iput-object p1, p0, Lcz1;->f:Landroid/content/Context;

    .line 3
    iput-object p4, p0, Lcz1;->g:Lns1;

    .line 4
    iput-object p3, p0, Lcz1;->h:Lls0;

    .line 5
    iput-object p2, p0, Lcz1;->i:Lsy1;

    .line 6
    iput-object p5, p0, Lcz1;->j:Lpp2;

    return-void
.end method

.method public static W6(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/zze;Lcom/google/android/gms/ads/internal/util/zzbg;Lsy1;Lns1;Lpp2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzr;->zzzy()I

    move-result v0

    move-object/from16 v11, p0

    invoke-static {v11, v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzc(Landroid/content/Context;I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v1

    invoke-virtual {v1}, Lor0;->a()Landroid/content/res/Resources;

    move-result-object v12

    if-nez v12, :cond_0

    const-string v1, "Open ad when you\'re back online."

    goto :goto_0

    .line 4
    :cond_0
    sget v1, Lcom/google/android/gms/ads/impl/R$string;->offline_opt_in_title:I

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    if-nez v12, :cond_1

    const-string v2, "We\'ll send you a notification with a link to the advertiser site."

    goto :goto_1

    .line 6
    :cond_1
    sget v2, Lcom/google/android/gms/ads/impl/R$string;->offline_opt_in_message:I

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 7
    :goto_1
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    if-nez v12, :cond_2

    const-string v1, "OK"

    goto :goto_2

    .line 8
    :cond_2
    sget v1, Lcom/google/android/gms/ads/impl/R$string;->offline_opt_in_confirm:I

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    move-object v14, v1

    new-instance v15, Lbz1;

    move-object v1, v15

    move-object/from16 v2, p4

    move-object/from16 v3, p0

    move-object/from16 v4, p5

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    move-object/from16 v7, p2

    move-object/from16 v8, p7

    move-object v9, v12

    move-object/from16 v10, p1

    invoke-direct/range {v1 .. v10}, Lbz1;-><init>(Lns1;Landroid/app/Activity;Lpp2;Lsy1;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzbg;Ljava/lang/String;Landroid/content/res/Resources;Lcom/google/android/gms/ads/internal/overlay/zze;)V

    .line 9
    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    if-nez v12, :cond_3

    const-string v1, "No thanks"

    goto :goto_3

    .line 10
    :cond_3
    sget v1, Lcom/google/android/gms/ads/impl/R$string;->offline_opt_in_decline:I

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    move-object v9, v1

    new-instance v10, Lez1;

    move-object v1, v10

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p4

    move-object/from16 v5, p0

    move-object/from16 v6, p5

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lez1;-><init>(Lsy1;Ljava/lang/String;Lns1;Landroid/app/Activity;Lpp2;Lcom/google/android/gms/ads/internal/overlay/zze;)V

    .line 11
    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Ldz1;

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Ldz1;-><init>(Lsy1;Ljava/lang/String;Lns1;Landroid/app/Activity;Lpp2;Lcom/google/android/gms/ads/internal/overlay/zze;)V

    .line 12
    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 13
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static X6(Landroid/content/Context;Lns1;Lpp2;Lsy1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcz1;->Y6(Landroid/content/Context;Lns1;Lpp2;Lsy1;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static Y6(Landroid/content/Context;Lns1;Lpp2;Lsy1;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lns1;",
            "Lpp2;",
            "Lsy1;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Ly40;->e5:Lo40;

    .line 2
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 3
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "event_timestamp"

    const-string v2, "online"

    const-string v3, "offline"

    const-string v4, "device_connectivity"

    const-string v5, "gqi"

    if-eqz v0, :cond_2

    .line 5
    invoke-static {p5}, Lqp2;->c(Ljava/lang/String;)Lqp2;

    move-result-object p1

    .line 6
    iget-object p5, p1, Lqp2;->a:Ljava/util/HashMap;

    invoke-virtual {p5, v5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzbd(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 8
    :goto_0
    iget-object p0, p1, Lqp2;->a:Ljava/util/HashMap;

    invoke-virtual {p0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object p0

    invoke-interface {p0}, Lb20;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    .line 10
    iget-object p5, p1, Lqp2;->a:Ljava/util/HashMap;

    invoke-virtual {p5, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-interface {p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 13
    iget-object v0, p1, Lqp2;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p6, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 14
    :cond_1
    invoke-interface {p2, p1}, Lpp2;->a(Lqp2;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 15
    :cond_2
    invoke-virtual {p1}, Lns1;->a()Lms1;

    move-result-object p1

    .line 16
    iget-object p2, p1, Lms1;->a:Ljava/util/Map;

    invoke-interface {p2, v5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object p2, p1, Lms1;->a:Ljava/util/Map;

    const-string v0, "action"

    invoke-interface {p2, v0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzbd(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v3

    .line 19
    :goto_2
    iget-object p0, p1, Lms1;->a:Ljava/util/Map;

    invoke-interface {p0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object p0

    invoke-interface {p0}, Lb20;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    .line 21
    iget-object p2, p1, Lms1;->a:Ljava/util/Map;

    invoke-interface {p2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-interface {p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 23
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 24
    iget-object p6, p1, Lms1;->a:Ljava/util/Map;

    invoke-interface {p6, p5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 25
    :cond_4
    iget-object p0, p1, Lms1;->b:Lns1;

    .line 26
    iget-object p0, p0, Lns1;->a:Lss1;

    .line 27
    iget-object p1, p1, Lms1;->a:Ljava/util/Map;

    .line 28
    iget-object p0, p0, Lvs1;->e:Laq2;

    invoke-virtual {p0, p1}, Laq2;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    :goto_4
    move-object v4, p0

    .line 29
    new-instance p0, Lzy1;

    .line 30
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object p1

    invoke-interface {p1}, Lb20;->a()J

    move-result-wide v1

    const/4 v5, 0x2

    move-object v0, p0

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lzy1;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    .line 31
    new-instance p1, Lyy1;

    invoke-direct {p1, p3, p0}, Lyy1;-><init>(Lsy1;Lzy1;)V

    invoke-virtual {p3, p1}, Lsy1;->c(Ljo2;)V

    return-void
.end method


# virtual methods
.method public final d3()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcz1;->i:Lsy1;

    iget-object v1, p0, Lcz1;->h:Lls0;

    .line 2
    new-instance v2, Luy1;

    invoke-direct {v2, v1}, Luy1;-><init>(Lls0;)V

    invoke-virtual {v0, v2}, Lsy1;->c(Ljo2;)V

    return-void
.end method

.method public final f0(Landroid/content/Intent;)V
    .locals 14

    const-string v0, "olaa"

    const-string v1, "offline_notification_action"

    .line 1
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "offline_notification_clicked"

    .line 2
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "offline_notification_dismissed"

    if-nez v4, :cond_0

    .line 3
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    const-string v4, "gws_query_id"

    .line 4
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "uri"

    .line 5
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v6, p0, Lcz1;->f:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/zzj;->zzbd(Landroid/content/Context;)Z

    move-result v6

    .line 7
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v13, 0x1

    const/4 v7, 0x2

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {v12, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_1

    const/4 v7, 0x1

    .line 10
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "obvs"

    invoke-virtual {v12, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "http"

    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "olaih"

    .line 12
    invoke-virtual {v12, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :try_start_0
    iget-object v1, p0, Lcz1;->f:Landroid/content/Context;

    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_2

    .line 15
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_2
    const/high16 p1, 0x10000000

    .line 17
    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 18
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "olas"

    .line 19
    invoke-virtual {v12, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "olaf"

    .line 20
    invoke-virtual {v12, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    move p1, v7

    goto :goto_1

    .line 21
    :cond_3
    invoke-virtual {v12, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x2

    .line 22
    :goto_1
    iget-object v6, p0, Lcz1;->f:Landroid/content/Context;

    iget-object v7, p0, Lcz1;->g:Lns1;

    iget-object v8, p0, Lcz1;->j:Lpp2;

    iget-object v9, p0, Lcz1;->i:Lsy1;

    const-string v11, "offline_notification_action"

    move-object v10, v4

    invoke-static/range {v6 .. v12}, Lcz1;->Y6(Landroid/content/Context;Lns1;Lpp2;Lsy1;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 23
    :try_start_1
    iget-object v0, p0, Lcz1;->i:Lsy1;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p1, v13, :cond_4

    .line 24
    iget-object p1, p0, Lcz1;->i:Lsy1;

    iget-object v1, p0, Lcz1;->h:Lls0;

    .line 25
    iget-object p1, p1, Lsy1;->f:Lzv2;

    new-instance v2, Lty1;

    invoke-direct {v2, v0, v4, v1}, Lty1;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lls0;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 26
    :cond_4
    invoke-static {v0, v4}, Lsy1;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception p1

    .line 27
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to get writable offline buffering database: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lis0;->zzex(Ljava/lang/String;)V

    return-void
.end method

.method public final h5(Lx20;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {p1}, Ly20;->l0(Lx20;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzbe(Landroid/content/Context;)V

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/high16 v0, 0x44000000    # 512.0f

    goto :goto_1

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    .line 4
    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 5
    const-class v3, Lcom/google/android/gms/ads/AdService;

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v3, "offline_notification_clicked"

    .line 6
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "offline_notification_action"

    .line 7
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "gws_query_id"

    .line 8
    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "uri"

    .line 9
    invoke-virtual {v2, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    invoke-static {p1, v2, v0}, Lns2;->a(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 11
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 12
    const-class v5, Lcom/google/android/gms/ads/AdService;

    invoke-virtual {v2, p1, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v5, "offline_notification_dismissed"

    .line 13
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    invoke-static {p1, v2, v0}, Lns2;->a(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v2

    invoke-virtual {v2}, Lor0;->a()Landroid/content/res/Resources;

    move-result-object v2

    .line 18
    new-instance v3, Lm7;

    const-string v4, "offline_notification_channel"

    invoke-direct {v3, p1, v4}, Lm7;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-nez v2, :cond_2

    const-string v4, "View the ad you saved when you were offline"

    goto :goto_2

    .line 19
    :cond_2
    sget v4, Lcom/google/android/gms/ads/impl/R$string;->offline_notification_title:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 20
    :goto_2
    invoke-virtual {v3, v4}, Lm7;->e(Ljava/lang/CharSequence;)Lm7;

    if-nez v2, :cond_3

    const-string v2, "Tap to open ad"

    goto :goto_3

    .line 21
    :cond_3
    sget v4, Lcom/google/android/gms/ads/impl/R$string;->offline_notification_text:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 22
    :goto_3
    invoke-virtual {v3, v2}, Lm7;->d(Ljava/lang/CharSequence;)Lm7;

    const/16 v2, 0x10

    .line 23
    invoke-virtual {v3, v2, v1}, Lm7;->f(IZ)V

    .line 24
    iget-object v1, v3, Lm7;->s:Landroid/app/Notification;

    iput-object v0, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 25
    iput-object p2, v3, Lm7;->f:Landroid/app/PendingIntent;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 27
    iget-object v0, v3, Lm7;->s:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->icon:I

    const-string p2, "notification"

    .line 28
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    const p2, 0xd431

    .line 29
    invoke-virtual {v3}, Lm7;->b()Landroid/app/Notification;

    move-result-object v0

    .line 30
    invoke-virtual {p1, p3, p2, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 31
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 32
    iget-object v1, p0, Lcz1;->f:Landroid/content/Context;

    iget-object v2, p0, Lcz1;->g:Lns1;

    iget-object v3, p0, Lcz1;->j:Lpp2;

    iget-object v4, p0, Lcz1;->i:Lsy1;

    const-string v6, "offline_notification_impression"

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Lcz1;->Y6(Landroid/content/Context;Lns1;Lpp2;Lsy1;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
