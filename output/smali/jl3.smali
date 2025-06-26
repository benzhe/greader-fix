.class public final Ljl3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lho3;

    invoke-direct {v0, p1}, Lho3;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Ljl3;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Lj40;Lc90;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj40<",
            "*>;",
            "Lc90<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lj40;->zzk()V

    const-string v0, "post-response"

    .line 2
    invoke-virtual {p1, v0}, Lj40;->zzc(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Ljl3;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Ljn3;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Ljn3;-><init>(Lj40;Lc90;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
