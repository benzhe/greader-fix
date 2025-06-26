.class public final synthetic Lvh6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Ljh6;

.field public final f:Lk45;

.field public final g:Lv35;

.field public final h:Ljava/util/concurrent/Callable;

.field public final i:Lf45;


# direct methods
.method public constructor <init>(Ljh6;Lk45;Lv35;Ljava/util/concurrent/Callable;Lf45;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvh6;->e:Ljh6;

    iput-object p2, p0, Lvh6;->f:Lk45;

    iput-object p3, p0, Lvh6;->g:Lv35;

    iput-object p4, p0, Lvh6;->h:Ljava/util/concurrent/Callable;

    iput-object p5, p0, Lvh6;->i:Lf45;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lvh6;->e:Ljh6;

    iget-object v1, p0, Lvh6;->f:Lk45;

    iget-object v2, p0, Lvh6;->g:Lv35;

    iget-object v3, p0, Lvh6;->h:Ljava/util/concurrent/Callable;

    iget-object v4, p0, Lvh6;->i:Lf45;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {v1}, Lk45;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3
    invoke-virtual {v2}, Lv35;->a()V

    goto :goto_1

    .line 4
    :cond_0
    :try_start_0
    iget-object v5, v0, Ljh6;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_1

    .line 5
    invoke-virtual {v0}, Ljh6;->a()V

    .line 6
    iget-object v0, v0, Ljh6;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    :cond_1
    invoke-virtual {v1}, Lk45;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v2}, Lv35;->a()V

    goto :goto_1

    .line 9
    :cond_2
    invoke-interface {v3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :try_start_1
    invoke-virtual {v1}, Lk45;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    invoke-virtual {v2}, Lv35;->a()V

    goto :goto_1

    .line 12
    :cond_3
    iget-object v3, v4, Lf45;->a:Le55;

    invoke-virtual {v3, v0}, Le55;->s(Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 13
    new-instance v3, Ltg6;

    const-string v5, "Internal error has occurred when executing ML Kit tasks"

    const/16 v6, 0xd

    invoke-direct {v3, v5, v6, v0}, Ltg6;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 14
    :goto_0
    invoke-virtual {v1}, Lk45;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    invoke-virtual {v2}, Lv35;->a()V

    goto :goto_1

    .line 16
    :cond_4
    iget-object v1, v4, Lf45;->a:Le55;

    invoke-virtual {v1, v0}, Le55;->r(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method
