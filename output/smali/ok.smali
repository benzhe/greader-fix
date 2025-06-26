.class public Lok;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lwm;

.field public final synthetic f:Lqk;


# direct methods
.method public constructor <init>(Lqk;Lwm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lok;->f:Lqk;

    iput-object p2, p0, Lok;->e:Lwm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    :try_start_0
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v0

    sget-object v1, Lqk;->w:Ljava/lang/String;

    const-string v2, "Starting work for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lok;->f:Lqk;

    iget-object v4, v4, Lqk;->i:Ldm;

    iget-object v4, v4, Ldm;->c:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lok;->f:Lqk;

    iget-object v1, v0, Lqk;->j:Landroidx/work/ListenableWorker;

    invoke-virtual {v1}, Landroidx/work/ListenableWorker;->startWork()Lie5;

    move-result-object v1

    iput-object v1, v0, Lqk;->u:Lie5;

    .line 3
    iget-object v0, p0, Lok;->e:Lwm;

    iget-object v1, p0, Lok;->f:Lqk;

    iget-object v1, v1, Lqk;->u:Lie5;

    invoke-virtual {v0, v1}, Lwm;->l(Lie5;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lok;->e:Lwm;

    invoke-virtual {v1, v0}, Lwm;->k(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
