.class public final synthetic Lqw5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkx5;


# instance fields
.field public final a:Lsw5;

.field public final b:Lex5;


# direct methods
.method public constructor <init>(Lsw5;Lex5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqw5;->a:Lsw5;

    iput-object p2, p0, Lqw5;->b:Lex5;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lqw5;->a:Lsw5;

    iget-object v1, p0, Lqw5;->b:Lex5;

    check-cast p1, Lpv5$a;

    .line 1
    new-instance p1, Lrw5;

    invoke-direct {p1, v0}, Lrw5;-><init>(Lsw5;)V

    .line 2
    new-instance v0, Lcx5;

    invoke-direct {v0, p1}, Lcx5;-><init>(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {v1, v0}, Lex5;->a(Ljava/util/concurrent/Callable;)Le45;

    return-void
.end method
