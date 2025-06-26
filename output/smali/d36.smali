.class public final synthetic Ld36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqc7;


# instance fields
.field public final a:Lj36;

.field public final b:Luy5$a;


# direct methods
.method public constructor <init>(Lj36;Luy5$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld36;->a:Lj36;

    iput-object p2, p0, Ld36;->b:Luy5$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Ld36;->a:Lj36;

    iget-object v1, p0, Ld36;->b:Luy5$a;

    .line 1
    iget-object v2, v0, Lj36;->f:Lr56;

    iget-object v0, v0, Lj36;->h:Lj96;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v3, v0, Lj96;->b:Lf96;

    .line 4
    iget-boolean v3, v3, Lf96;->c:Z

    if-nez v3, :cond_0

    .line 5
    iget-object v3, v2, Lr56;->c:Lz96;

    .line 6
    invoke-interface {v3}, Lz96;->n()Le45;

    move-result-object v3

    .line 7
    new-instance v4, Lq56;

    invoke-direct {v4, v2, v0, v1}, Lq56;-><init>(Lr56;Lj96;Luy5$a;)V

    .line 8
    invoke-virtual {v3, v4}, Le45;->f(Lb45;)Le45;

    const/4 v1, 0x0

    const-string v3, "fiam_dismiss"

    .line 9
    invoke-virtual {v2, v0, v3, v1}, Lr56;->c(Lj96;Ljava/lang/String;Z)V

    .line 10
    :cond_0
    iget-object v1, v2, Lr56;->f:Lv26;

    .line 11
    iget-object v1, v1, Lv26;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv26$b;

    .line 12
    sget-object v3, Lv26;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 13
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v4, Lu26;

    invoke-direct {v4, v2, v0}, Lu26;-><init>(Lv26$b;Lj96;)V

    .line 15
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
