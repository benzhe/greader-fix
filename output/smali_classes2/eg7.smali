.class public final Leg7;
.super Lhb7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leg7$a;
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
.field public final a:Lvb7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvb7<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Luc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luc7<",
            "-TT;+",
            "Llb7;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lvb7;Luc7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvb7<",
            "TT;>;",
            "Luc7<",
            "-TT;+",
            "Llb7;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lhb7;-><init>()V

    .line 2
    iput-object p1, p0, Leg7;->a:Lvb7;

    .line 3
    iput-object p2, p0, Leg7;->b:Luc7;

    return-void
.end method


# virtual methods
.method public i(Ljb7;)V
    .locals 2

    .line 1
    new-instance v0, Leg7$a;

    iget-object v1, p0, Leg7;->b:Luc7;

    invoke-direct {v0, p1, v1}, Leg7$a;-><init>(Ljb7;Luc7;)V

    .line 2
    invoke-interface {p1, v0}, Ljb7;->c(Lic7;)V

    .line 3
    iget-object p1, p0, Leg7;->a:Lvb7;

    invoke-interface {p1, v0}, Lvb7;->a(Ltb7;)V

    return-void
.end method
