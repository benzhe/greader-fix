.class public final Log7;
.super Lyf7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Log7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lyf7<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final f:Ltc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltc7<",
            "-",
            "Lic7;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ltc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltc7<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final h:Ltc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltc7<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lqc7;

.field public final j:Lqc7;

.field public final k:Lqc7;


# direct methods
.method public constructor <init>(Lvb7;Ltc7;Ltc7;Ltc7;Lqc7;Lqc7;Lqc7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvb7<",
            "TT;>;",
            "Ltc7<",
            "-",
            "Lic7;",
            ">;",
            "Ltc7<",
            "-TT;>;",
            "Ltc7<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lqc7;",
            "Lqc7;",
            "Lqc7;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lyf7;-><init>(Lvb7;)V

    .line 2
    iput-object p2, p0, Log7;->f:Ltc7;

    .line 3
    iput-object p3, p0, Log7;->g:Ltc7;

    .line 4
    iput-object p4, p0, Log7;->h:Ltc7;

    .line 5
    iput-object p5, p0, Log7;->i:Lqc7;

    .line 6
    iput-object p6, p0, Log7;->j:Lqc7;

    .line 7
    iput-object p7, p0, Log7;->k:Lqc7;

    return-void
.end method


# virtual methods
.method public m(Ltb7;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltb7<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lyf7;->e:Lvb7;

    new-instance v1, Log7$a;

    invoke-direct {v1, p1, p0}, Log7$a;-><init>(Ltb7;Log7;)V

    invoke-interface {v0, v1}, Lvb7;->a(Ltb7;)V

    return-void
.end method
