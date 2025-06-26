.class public final synthetic Lew5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Liw5;

.field public final f:Lf47;


# direct methods
.method public constructor <init>(Liw5;Lf47;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lew5;->e:Liw5;

    iput-object p2, p0, Lew5;->f:Lf47;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lew5;->e:Liw5;

    iget-object v1, p0, Lew5;->f:Lf47;

    .line 1
    invoke-virtual {v1}, Lf47;->m()Lf47;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lnx5;->c:Ljava/util/concurrent/Executor;

    .line 4
    new-instance v2, Lfw5;

    invoke-direct {v2, v0}, Lfw5;-><init>(Liw5;)V

    .line 5
    invoke-static {v1, v2}, Lc50;->i(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le45;

    move-result-object v1

    iput-object v1, v0, Liw5;->a:Le45;

    return-void
.end method
