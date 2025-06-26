.class public abstract Lnf7;
.super Loi7;
.source "SourceFile"

# interfaces
.implements Lpb7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Loi7;",
        "Lpb7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final m:Lx38;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx38<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final n:Lyi7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyi7<",
            "TU;>;"
        }
    .end annotation
.end field

.field public final o:Ly38;

.field public p:J


# direct methods
.method public constructor <init>(Lx38;Lyi7;Ly38;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TT;>;",
            "Lyi7<",
            "TU;>;",
            "Ly38;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Loi7;-><init>(Z)V

    .line 2
    iput-object p1, p0, Lnf7;->m:Lx38;

    .line 3
    iput-object p2, p0, Lnf7;->n:Lyi7;

    .line 4
    iput-object p3, p0, Lnf7;->o:Ly38;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 1
    invoke-super {p0}, Loi7;->cancel()V

    .line 2
    iget-object v0, p0, Lnf7;->o:Ly38;

    invoke-interface {v0}, Ly38;->cancel()V

    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lnf7;->p:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnf7;->p:J

    .line 2
    iget-object v0, p0, Lnf7;->m:Lx38;

    invoke-interface {v0, p1}, Lx38;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Ly38;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Loi7;->i(Ly38;)V

    return-void
.end method
