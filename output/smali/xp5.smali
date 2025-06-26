.class public Lxp5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvo5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lvo5<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lvo5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvo5<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile c:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lvo5;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lvo5<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lxp5;->c:Z

    .line 3
    iput-object p1, p0, Lxp5;->a:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p2, p0, Lxp5;->b:Lvo5;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lzo5;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lzo5;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lxp5;->a:Ljava/util/concurrent/Executor;

    .line 2
    new-instance v1, Lwp5;

    invoke-direct {v1, p0, p1, p2}, Lwp5;-><init>(Lxp5;Ljava/lang/Object;Lzo5;)V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
