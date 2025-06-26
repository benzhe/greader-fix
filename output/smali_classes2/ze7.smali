.class public final Lze7;
.super Lmb7;
.source "SourceFile"

# interfaces
.implements Lld7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmb7<",
        "TT;>;",
        "Lld7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lmb7;-><init>()V

    .line 2
    iput-object p1, p0, Lze7;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lze7;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public t(Lx38;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lni7;

    iget-object v1, p0, Lze7;->f:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lni7;-><init>(Lx38;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lx38;->e(Ly38;)V

    return-void
.end method
