.class public final Lxg2;
.super Lgg2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgg2<",
        "Le41;",
        "Ly31;",
        "Luz0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lsy0;Lli2;Lmg2;Lnl2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lsy0;",
            "Lli2<",
            "Ly31;",
            "Le41;",
            ">;",
            "Lmg2;",
            "Lnl2;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p6}, Lgg2;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lsy0;Lli2;Lmg2;Lnl2;)V

    return-void
.end method


# virtual methods
.method public final b(Li41;Ln91;Lyd1;)Lk91;
    .locals 0

    .line 1
    iget-object p1, p0, Lgg2;->c:Lsy0;

    .line 2
    invoke-virtual {p1}, Lsy0;->o()Luz0;

    move-result-object p1

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p2, p1, Luz0;->b:Ln91;

    .line 5
    iput-object p3, p1, Luz0;->a:Lyd1;

    return-object p1
.end method
