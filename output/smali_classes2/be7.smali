.class public final Lbe7;
.super Lhb7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbe7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lhb7;"
    }
.end annotation


# instance fields
.field public final a:Lec7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lec7<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lec7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lec7<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lhb7;-><init>()V

    .line 2
    iput-object p1, p0, Lbe7;->a:Lec7;

    return-void
.end method


# virtual methods
.method public i(Ljb7;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lbe7;->a:Lec7;

    new-instance v1, Lbe7$a;

    invoke-direct {v1, p1}, Lbe7$a;-><init>(Ljb7;)V

    invoke-interface {v0, v1}, Lec7;->a(Lcc7;)V

    return-void
.end method
