.class public final synthetic Lwh6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lk45;

.field public final g:Lv35;

.field public final h:Lf45;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lk45;Lv35;Lf45;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwh6;->e:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lwh6;->f:Lk45;

    iput-object p3, p0, Lwh6;->g:Lv35;

    iput-object p4, p0, Lwh6;->h:Lf45;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lwh6;->e:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lwh6;->f:Lk45;

    iget-object v2, p0, Lwh6;->g:Lv35;

    iget-object v3, p0, Lwh6;->h:Lf45;

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {v1}, Lk45;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v2}, Lv35;->a()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, v3, Lf45;->a:Le55;

    invoke-virtual {v0, p1}, Le55;->r(Ljava/lang/Exception;)V

    .line 6
    :goto_0
    throw p1
.end method
