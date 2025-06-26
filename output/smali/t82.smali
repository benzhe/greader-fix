.class public final Lt82;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqd2<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Law2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Law2<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Law2;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Law2<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lt82;->a:Law2;

    .line 3
    iput-object p2, p0, Lt82;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a()Law2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Law2<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt82;->a:Law2;

    sget-object v1, Ls82;->a:Lcv2;

    iget-object v2, p0, Lt82;->b:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lvt2;->m(Law2;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v0

    return-object v0
.end method
