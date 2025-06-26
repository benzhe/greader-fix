.class public final Ln45;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly35;
.implements La45;
.implements Lb45;
.implements Lb55;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        "TContinuationResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ly35;",
        "La45;",
        "Lb45<",
        "TTContinuationResult;>;",
        "Lb55<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lw35;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw35<",
            "TTResult;",
            "Le45<",
            "TTContinuationResult;>;>;"
        }
    .end annotation
.end field

.field public final c:Le55;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le55<",
            "TTContinuationResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lw35;Le55;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lw35<",
            "TTResult;",
            "Le45<",
            "TTContinuationResult;>;>;",
            "Le55<",
            "TTContinuationResult;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln45;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Ln45;->b:Lw35;

    .line 4
    iput-object p3, p0, Ln45;->c:Le55;

    return-void
.end method


# virtual methods
.method public final a(Le45;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le45<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln45;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lp45;

    invoke-direct {v1, p0, p1}, Lp45;-><init>(Ln45;Le45;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln45;->c:Le55;

    invoke-virtual {v0}, Le55;->t()Z

    return-void
.end method

.method public final c(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln45;->c:Le55;

    invoke-virtual {v0, p1}, Le55;->r(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTContinuationResult;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln45;->c:Le55;

    invoke-virtual {v0, p1}, Le55;->s(Ljava/lang/Object;)V

    return-void
.end method
