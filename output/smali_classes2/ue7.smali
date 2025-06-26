.class public final Lue7;
.super Lmb7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lue7$a;,
        Lue7$b;,
        Lue7$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmb7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final f:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lmb7;-><init>()V

    .line 2
    iput-object p1, p0, Lue7;->f:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public t(Lx38;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lfd7;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lue7$a;

    move-object v1, p1

    check-cast v1, Lfd7;

    iget-object v2, p0, Lue7;->f:[Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lue7$a;-><init>(Lfd7;[Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lx38;->e(Ly38;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lue7$b;

    iget-object v1, p0, Lue7;->f:[Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lue7$b;-><init>(Lx38;[Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lx38;->e(Ly38;)V

    :goto_0
    return-void
.end method
