.class public Ljx5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public e:Ljava/util/concurrent/Semaphore;

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Ljx5;->e:Ljava/util/concurrent/Semaphore;

    .line 3
    iput v1, p0, Ljx5;->f:I

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget v0, p0, Ljx5;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljx5;->f:I

    .line 2
    sget-object v0, Lnx5;->c:Ljava/util/concurrent/Executor;

    .line 3
    new-instance v1, Lix5;

    invoke-direct {v1, p0, p1}, Lix5;-><init>(Ljx5;Ljava/lang/Runnable;)V

    .line 4
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
