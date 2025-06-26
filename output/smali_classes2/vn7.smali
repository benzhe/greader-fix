.class public final Lvn7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsn7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lsn7<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final a:Lsn7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsn7<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lpl7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpl7<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lsn7;Lpl7;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsn7<",
            "+TT;>;",
            "Lpl7<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformer"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvn7;->a:Lsn7;

    iput-object p2, p0, Lvn7;->b:Lpl7;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lvn7$a;

    invoke-direct {v0, p0}, Lvn7$a;-><init>(Lvn7;)V

    return-object v0
.end method
