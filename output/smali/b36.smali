.class public final synthetic Lb36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqc7;


# instance fields
.field public final a:Lj36;


# direct methods
.method public constructor <init>(Lj36;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb36;->a:Lj36;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lb36;->a:Lj36;

    .line 1
    iget-object v1, v0, Lj36;->f:Lr56;

    iget-object v0, v0, Lj36;->h:Lj96;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v2, v0, Lj96;->b:Lf96;

    .line 4
    iget-boolean v2, v2, Lf96;->c:Z

    if-nez v2, :cond_5

    .line 5
    iget-object v2, v1, Lr56;->c:Lz96;

    .line 6
    invoke-interface {v2}, Lz96;->n()Le45;

    move-result-object v2

    .line 7
    new-instance v3, Lo56;

    invoke-direct {v3, v1, v0}, Lo56;-><init>(Lr56;Lj96;)V

    .line 8
    invoke-virtual {v2, v3}, Le45;->f(Lb45;)Le45;

    .line 9
    iget-object v2, v0, Lj96;->a:Lcom/google/firebase/inappmessaging/model/MessageType;

    .line 10
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    const/4 v5, 0x4

    if-eq v2, v5, :cond_0

    const-string v2, "FIAM.Headless"

    const-string v4, "Unable to determine if impression should be counted as conversion."

    .line 11
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 12
    :cond_0
    move-object v2, v0

    check-cast v2, Lg96;

    .line 13
    iget-object v5, v2, Lg96;->f:Lb96;

    .line 14
    invoke-virtual {v1, v5}, Lr56;->b(Lb96;)Z

    move-result v5

    xor-int/2addr v5, v4

    .line 15
    iget-object v2, v2, Lg96;->g:Lb96;

    .line 16
    invoke-virtual {v1, v2}, Lr56;->b(Lb96;)Z

    move-result v2

    xor-int/2addr v2, v4

    if-eqz v5, :cond_4

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    .line 17
    :cond_1
    move-object v2, v0

    check-cast v2, Ld96;

    .line 18
    iget-object v2, v2, Ld96;->f:Lb96;

    .line 19
    invoke-virtual {v1, v2}, Lr56;->b(Lb96;)Z

    move-result v2

    goto :goto_0

    .line 20
    :cond_2
    move-object v2, v0

    check-cast v2, Li96;

    .line 21
    iget-object v2, v2, Li96;->d:Lb96;

    .line 22
    invoke-virtual {v1, v2}, Lr56;->b(Lb96;)Z

    move-result v2

    goto :goto_0

    .line 23
    :cond_3
    move-object v2, v0

    check-cast v2, Lk96;

    .line 24
    iget-object v2, v2, Lk96;->f:Lb96;

    .line 25
    invoke-virtual {v1, v2}, Lr56;->b(Lb96;)Z

    move-result v2

    :goto_0
    xor-int/lit8 v3, v2, 0x1

    :cond_4
    :goto_1
    const-string v2, "fiam_impression"

    .line 26
    invoke-virtual {v1, v0, v2, v3}, Lr56;->c(Lj96;Ljava/lang/String;Z)V

    .line 27
    :cond_5
    iget-object v1, v1, Lr56;->f:Lv26;

    .line 28
    iget-object v1, v1, Lv26;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv26$e;

    .line 29
    sget-object v3, Lv26;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 30
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v4, Ls26;

    invoke-direct {v4, v2, v0}, Ls26;-><init>(Lv26$e;Lj96;)V

    .line 32
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_6
    return-void
.end method
