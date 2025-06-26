.class public final Lie7$d;
.super Loi7;
.source "SourceFile"

# interfaces
.implements Lpb7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lie7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Loi7;",
        "Lpb7<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final m:Lie7$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lie7$e<",
            "TR;>;"
        }
    .end annotation
.end field

.field public n:J


# direct methods
.method public constructor <init>(Lie7$e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lie7$e<",
            "TR;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Loi7;-><init>(Z)V

    .line 2
    iput-object p1, p0, Lie7$d;->m:Lie7$e;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lie7$d;->n:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iput-wide v2, p0, Lie7$d;->n:J

    .line 3
    invoke-virtual {p0, v0, v1}, Loi7;->h(J)V

    .line 4
    :cond_0
    iget-object v0, p0, Lie7$d;->m:Lie7$e;

    check-cast v0, Lie7$a;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v0, Lie7$a;->o:Z

    .line 6
    invoke-virtual {v0}, Lie7$a;->h()V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lie7$d;->n:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iput-wide v2, p0, Lie7$d;->n:J

    .line 3
    invoke-virtual {p0, v0, v1}, Loi7;->h(J)V

    .line 4
    :cond_0
    iget-object v0, p0, Lie7$d;->m:Lie7$e;

    invoke-interface {v0, p1}, Lie7$e;->g(Ljava/lang/Throwable;)V

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lie7$d;->n:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lie7$d;->n:J

    .line 2
    iget-object v0, p0, Lie7$d;->m:Lie7$e;

    invoke-interface {v0, p1}, Lie7$e;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ly38;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Loi7;->i(Ly38;)V

    return-void
.end method
