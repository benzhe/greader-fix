.class public final Lc32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcv2<",
        "Lhl2;",
        "TAdT;>;"
    }
.end annotation


# instance fields
.field public final a:Lzo2;

.field public final b:Lba1;

.field public final c:Lhq2;

.field public final d:Ljq2;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Ljava/util/concurrent/ScheduledExecutorService;

.field public final g:Lk61;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk61<",
            "TAdT;>;"
        }
    .end annotation
.end field

.field public final h:Lv22;

.field public final i:Lnz1;


# direct methods
.method public constructor <init>(Lzo2;Lv22;Lba1;Lhq2;Ljq2;Lk61;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lnz1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzo2;",
            "Lv22;",
            "Lba1;",
            "Lhq2;",
            "Ljq2;",
            "Lk61<",
            "TAdT;>;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lnz1;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc32;->a:Lzo2;

    .line 3
    iput-object p2, p0, Lc32;->h:Lv22;

    .line 4
    iput-object p3, p0, Lc32;->b:Lba1;

    .line 5
    iput-object p4, p0, Lc32;->c:Lhq2;

    .line 6
    iput-object p5, p0, Lc32;->d:Ljq2;

    .line 7
    iput-object p6, p0, Lc32;->g:Lk61;

    .line 8
    iput-object p7, p0, Lc32;->e:Ljava/util/concurrent/Executor;

    .line 9
    iput-object p8, p0, Lc32;->f:Ljava/util/concurrent/ScheduledExecutorService;

    .line 10
    iput-object p9, p0, Lc32;->i:Lnz1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Ldm2;->g:Ldm2;

    move-object/from16 v2, p1

    check-cast v2, Lhl2;

    .line 2
    iget-object v3, v2, Lhl2;->b:Lfl2;

    iget-object v3, v3, Lfl2;->b:Lwk2;

    iget v3, v3, Lwk2;->e:I

    const/16 v4, 0xc8

    const/16 v5, 0x12c

    if-eqz v3, :cond_2

    if-lt v3, v4, :cond_0

    if-ge v3, v5, :cond_0

    .line 3
    sget-object v3, Ly40;->f3:Lo40;

    .line 4
    sget-object v6, Los3;->j:Los3;

    iget-object v6, v6, Los3;->f:Lu40;

    .line 5
    invoke-virtual {v6, v3}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v3

    .line 6
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "No fill."

    goto :goto_0

    :cond_0
    if-lt v3, v5, :cond_1

    const/16 v6, 0x190

    if-ge v3, v6, :cond_1

    const-string v3, "No location header to follow redirect or too many redirects."

    goto :goto_0

    :cond_1
    const/16 v6, 0x2e

    const-string v7, "Received error HTTP response code: "

    .line 7
    invoke-static {v6, v7, v3}, Ljo;->M(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const-string v3, "No ad config."

    .line 8
    :goto_0
    iget-object v6, v2, Lhl2;->b:Lfl2;

    iget-object v6, v6, Lfl2;->b:Lwk2;

    iget-object v6, v6, Lwk2;->h:Ltk2;

    if-eqz v6, :cond_3

    .line 9
    iget-object v3, v6, Ltk2;->a:Ljava/lang/String;

    .line 10
    :cond_3
    sget-object v6, Ly40;->T4:Lo40;

    .line 11
    sget-object v7, Los3;->j:Los3;

    iget-object v7, v7, Los3;->f:Lu40;

    .line 12
    invoke-virtual {v7, v6}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v6

    .line 13
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 14
    iget-object v6, v2, Lhl2;->b:Lfl2;

    iget-object v6, v6, Lfl2;->b:Lwk2;

    iget v6, v6, Lwk2;->e:I

    if-lt v6, v4, :cond_4

    if-lt v6, v5, :cond_5

    .line 15
    :cond_4
    new-instance v2, Lz22;

    invoke-direct {v2, v1, v3}, Lz22;-><init>(Ldm2;Ljava/lang/String;)V

    .line 16
    new-instance v1, Lvv2$a;

    invoke-direct {v1, v2}, Lvv2$a;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    .line 17
    :cond_5
    iget-object v4, v0, Lc32;->a:Lzo2;

    sget-object v5, Lap2;->q:Lap2;

    .line 18
    invoke-virtual {v4, v5}, Lko2;->c(Ljava/lang/Object;)Loo2;

    move-result-object v4

    new-instance v5, Lz22;

    invoke-direct {v5, v1, v3}, Lz22;-><init>(Ldm2;Ljava/lang/String;)V

    .line 19
    new-instance v1, Lvv2$a;

    invoke-direct {v1, v5}, Lvv2$a;-><init>(Ljava/lang/Throwable;)V

    .line 20
    invoke-virtual {v4, v1}, Loo2;->b(Law2;)Lqo2;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lqo2;->e()Llo2;

    move-result-object v1

    .line 22
    iget-object v3, v0, Lc32;->b:Lba1;

    new-instance v4, Ld21;

    iget-object v5, v0, Lc32;->d:Ljq2;

    iget-object v6, v0, Lc32;->c:Lhq2;

    invoke-direct {v4, v2, v5, v6}, Ld21;-><init>(Lhl2;Ljq2;Lhq2;)V

    iget-object v5, v0, Lc32;->e:Ljava/util/concurrent/Executor;

    invoke-virtual {v3, v4, v5}, Lxd1;->F0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 23
    sget-object v3, Ly40;->U4:Lo40;

    .line 24
    sget-object v4, Los3;->j:Los3;

    iget-object v4, v4, Los3;->f:Lu40;

    .line 25
    invoke-virtual {v4, v3}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v3

    .line 26
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_b

    .line 27
    iget-object v3, v2, Lhl2;->b:Lfl2;

    iget-object v3, v3, Lfl2;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsk2;

    .line 28
    iget-object v6, v0, Lc32;->i:Lnz1;

    .line 29
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v7, v5, Lsk2;->v:Ljava/lang/String;

    .line 31
    iget-object v8, v6, Lnz1;->b:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_3

    .line 32
    :cond_7
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 33
    iget-object v8, v5, Lsk2;->u:Lorg/json/JSONObject;

    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 34
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 35
    :try_start_0
    iget-object v10, v5, Lsk2;->u:Lorg/json/JSONObject;

    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    goto :goto_2

    .line 36
    :cond_8
    new-instance v8, Lcom/google/android/gms/internal/ads/zzvx;

    iget-object v10, v5, Lsk2;->D:Ljava/lang/String;

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    move-object v9, v8

    invoke-direct/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/zzvx;-><init>(Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzvh;Landroid/os/Bundle;)V

    .line 37
    iget-object v9, v6, Lnz1;->a:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v6, v6, Lnz1;->b:Ljava/util/Map;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :goto_3
    iget-object v6, v5, Lsk2;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 40
    iget-object v8, v0, Lc32;->g:Lk61;

    iget v9, v5, Lsk2;->b:I

    .line 41
    invoke-interface {v8, v9, v7}, Lk61;->a(ILjava/lang/String;)Ljz1;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 42
    invoke-interface {v7, v2, v5}, Ljz1;->a(Lhl2;Lsk2;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v6, 0x1

    goto :goto_4

    :cond_a
    const/4 v6, 0x0

    :goto_4
    if-nez v6, :cond_6

    .line 43
    iget-object v6, v0, Lc32;->i:Lnz1;

    const-wide/16 v7, 0x0

    sget-object v9, Ldm2;->e:Ldm2;

    const/4 v10, 0x0

    .line 44
    invoke-static {v9, v10, v10}, Lc50;->x1(Ldm2;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvh;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object v9

    .line 45
    invoke-virtual {v6, v5, v7, v8, v9}, Lnz1;->a(Lsk2;JLcom/google/android/gms/internal/ads/zzvh;)V

    goto/16 :goto_1

    .line 46
    :cond_b
    iget-object v3, v2, Lhl2;->b:Lfl2;

    iget-object v3, v3, Lfl2;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsk2;

    .line 47
    iget-object v6, v5, Lsk2;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 48
    iget-object v8, v0, Lc32;->g:Lk61;

    iget v9, v5, Lsk2;->b:I

    .line 49
    invoke-interface {v8, v9, v7}, Lk61;->a(ILjava/lang/String;)Ljz1;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 50
    invoke-interface {v8, v2, v5}, Ljz1;->a(Lhl2;Lsk2;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 51
    iget-object v6, v0, Lc32;->a:Lzo2;

    sget-object v9, Lap2;->r:Lap2;

    .line 52
    invoke-virtual {v6, v9, v1}, Lko2;->b(Ljava/lang/Object;Law2;)Lqo2;

    move-result-object v1

    const/16 v6, 0x1a

    invoke-static {v7, v6}, Ljo;->x(Ljava/lang/String;I)I

    move-result v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "render-config-"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 53
    iget-object v11, v1, Lqo2;->f:Lko2;

    iget-object v12, v1, Lqo2;->a:Ljava/lang/Object;

    iget-object v14, v1, Lqo2;->c:Law2;

    iget-object v15, v1, Lqo2;->d:Ljava/util/List;

    iget-object v1, v1, Lqo2;->e:Law2;

    .line 54
    const-class v6, Ljava/lang/Throwable;

    new-instance v7, Lb32;

    invoke-direct {v7, v0, v2, v5, v8}, Lb32;-><init>(Lc32;Lhl2;Lsk2;Ljz1;)V

    .line 55
    new-instance v5, Lqo2;

    .line 56
    iget-object v8, v11, Lko2;->a:Lzv2;

    .line 57
    invoke-static {v1, v6, v7, v8}, Lvt2;->n(Law2;Ljava/lang/Class;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v16

    move-object v10, v5

    invoke-direct/range {v10 .. v16}, Lqo2;-><init>(Lko2;Ljava/lang/Object;Ljava/lang/String;Law2;Ljava/util/List;Law2;)V

    .line 58
    invoke-virtual {v5}, Lqo2;->e()Llo2;

    move-result-object v1

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_e
    return-object v1
.end method
