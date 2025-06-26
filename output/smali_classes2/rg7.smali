.class public final Lrg7;
.super Lmb7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrg7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmb7<",
        "TT;>;",
        "Ljava/lang/Object<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final f:Lvb7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvb7<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lvb7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvb7<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lmb7;-><init>()V

    .line 2
    iput-object p1, p0, Lrg7;->f:Lvb7;

    return-void
.end method


# virtual methods
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
    iget-object v0, p0, Lrg7;->f:Lvb7;

    new-instance v1, Lrg7$a;

    invoke-direct {v1, p1}, Lrg7$a;-><init>(Lx38;)V

    invoke-interface {v0, v1}, Lvb7;->a(Ltb7;)V

    return-void
.end method
