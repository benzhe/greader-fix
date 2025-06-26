.class public final Luv2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Lnt2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnt2<",
            "Law2<",
            "+TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLnt2;Ltv2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Luv2;->a:Z

    .line 3
    iput-object p2, p0, Luv2;->b:Lnt2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Law2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TC;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Law2<",
            "TC;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lgv2;

    iget-object v1, p0, Luv2;->b:Lnt2;

    iget-boolean v2, p0, Luv2;->a:Z

    invoke-direct {v0, v1, v2, p2, p1}, Lgv2;-><init>(Lit2;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method
