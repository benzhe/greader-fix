.class public Ljm5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkm5;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lum5;

.field public final c:Llm5;

.field public final d:Lnj5;

.field public final e:Lgm5;

.field public final f:Lym5;

.field public final g:Lbj5;

.field public final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lsm5;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lf45<",
            "Lpm5;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lum5;Lnj5;Llm5;Lgm5;Lym5;Lbj5;)V
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, v0, Ljm5;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v4, Lf45;

    invoke-direct {v4}, Lf45;-><init>()V

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v0, Ljm5;->i:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v3, p1

    .line 4
    iput-object v3, v0, Ljm5;->a:Landroid/content/Context;

    move-object v3, p2

    .line 5
    iput-object v3, v0, Ljm5;->b:Lum5;

    .line 6
    iput-object v1, v0, Ljm5;->d:Lnj5;

    move-object/from16 v3, p4

    .line 7
    iput-object v3, v0, Ljm5;->c:Llm5;

    move-object/from16 v3, p5

    .line 8
    iput-object v3, v0, Ljm5;->e:Lgm5;

    move-object/from16 v3, p6

    .line 9
    iput-object v3, v0, Ljm5;->f:Lym5;

    move-object/from16 v3, p7

    .line 10
    iput-object v3, v0, Ljm5;->g:Lbj5;

    .line 11
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "max_custom_exception_events"

    const/16 v5, 0x8

    .line 12
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 13
    new-instance v9, Lrm5;

    const/4 v5, 0x4

    invoke-direct {v9, v4, v5}, Lrm5;-><init>(II)V

    const-string v4, "collect_reports"

    const/4 v5, 0x1

    .line 14
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 15
    new-instance v10, Lqm5;

    invoke-direct {v10, v4}, Lqm5;-><init>(Z)V

    const-wide/16 v4, 0xe10

    .line 16
    invoke-static {v1, v4, v5, v3}, Lhm5;->b(Lnj5;JLorg/json/JSONObject;)J

    move-result-wide v6

    .line 17
    new-instance v1, Ltm5;

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xe10

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Ltm5;-><init>(JLpm5;Lrm5;Lqm5;II)V

    .line 18
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Le45;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le45<",
            "Lpm5;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljm5;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf45;

    .line 2
    iget-object v0, v0, Lf45;->a:Le55;

    return-object v0
.end method

.method public final b(Lim5;)Ltm5;
    .locals 9

    const-string v0, "FirebaseCrashlytics"

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 1
    :try_start_0
    sget-object v3, Lim5;->f:Lim5;

    invoke-virtual {v3, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2
    iget-object v3, p0, Ljm5;->e:Lgm5;

    invoke-virtual {v3}, Lgm5;->a()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 3
    iget-object v4, p0, Ljm5;->c:Llm5;

    invoke-virtual {v4, v3}, Llm5;->a(Lorg/json/JSONObject;)Ltm5;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v5, "Loaded cached settings: "

    .line 4
    invoke-virtual {p0, v3, v5}, Ljm5;->e(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 5
    iget-object v3, p0, Ljm5;->d:Lnj5;

    .line 6
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 8
    sget-object v3, Lim5;->g:Lim5;

    invoke-virtual {v3, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 9
    iget-wide v7, v4, Ltm5;->d:J

    cmp-long p1, v7, v5

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    sget-object p1, Lah5;->a:Lah5;

    const-string v3, "Cached settings have expired."

    invoke-virtual {p1, v3}, Lah5;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 11
    :cond_2
    :goto_1
    :try_start_1
    sget-object p1, Lah5;->a:Lah5;

    const-string v2, "Returning cached settings."

    invoke-virtual {p1, v2}, Lah5;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v4

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v2, v4

    goto :goto_2

    .line 12
    :cond_3
    :try_start_2
    sget-object p1, Lah5;->a:Lah5;

    const-string v3, "Failed to parse cached settings data."

    .line 13
    invoke-virtual {p1, v1}, Lah5;->a(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 14
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 15
    :cond_4
    sget-object p1, Lah5;->a:Lah5;

    const-string v3, "No cached settings data found."

    invoke-virtual {p1, v3}, Lah5;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 16
    :goto_2
    sget-object v3, Lah5;->a:Lah5;

    .line 17
    invoke-virtual {v3, v1}, Lah5;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "Failed to get cached settings"

    .line 18
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_3
    return-object v2
.end method

.method public c()Lsm5;
    .locals 1

    .line 1
    iget-object v0, p0, Ljm5;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsm5;

    return-object v0
.end method

.method public d(Lim5;Ljava/util/concurrent/Executor;)Le45;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lim5;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Le45<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljm5;->a:Landroid/content/Context;

    invoke-static {v0}, Lvh5;->n(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "existing_instance_identifier"

    const-string v2, ""

    .line 2
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Ljm5;->b:Lum5;

    iget-object v1, v1, Lum5;->f:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Ljm5;->b(Lim5;)Ltm5;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p2, p0, Ljm5;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 7
    iget-object p2, p0, Ljm5;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf45;

    .line 8
    iget-object p1, p1, Ltm5;->a:Lpm5;

    .line 9
    invoke-virtual {p2, p1}, Lf45;->b(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 10
    invoke-static {p1}, Lc50;->X(Ljava/lang/Object;)Le45;

    move-result-object p1

    return-object p1

    .line 11
    :cond_0
    sget-object p1, Lim5;->g:Lim5;

    .line 12
    invoke-virtual {p0, p1}, Ljm5;->b(Lim5;)Ltm5;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 13
    iget-object v0, p0, Ljm5;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Ljm5;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf45;

    .line 15
    iget-object p1, p1, Ltm5;->a:Lpm5;

    .line 16
    invoke-virtual {v0, p1}, Lf45;->b(Ljava/lang/Object;)Z

    .line 17
    :cond_1
    iget-object p1, p0, Ljm5;->g:Lbj5;

    .line 18
    invoke-virtual {p1}, Lbj5;->c()Le45;

    move-result-object p1

    new-instance v0, Ljm5$a;

    invoke-direct {v0, p0}, Ljm5$a;-><init>(Ljm5;)V

    .line 19
    invoke-virtual {p1, p2, v0}, Le45;->q(Ljava/util/concurrent/Executor;Ld45;)Le45;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    sget-object v0, Lah5;->a:Lah5;

    invoke-static {p2}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lah5;->b(Ljava/lang/String;)V

    return-void
.end method
