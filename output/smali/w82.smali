.class public final Lw82;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqd2<",
        "Lx82;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lqd2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd2<",
            "Ltd2;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lll2;

.field public final c:Landroid/content/Context;

.field public final d:Lor0;


# direct methods
.method public constructor <init>(Lha2;Lll2;Landroid/content/Context;Lor0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lha2<",
            "Ltd2;",
            ">;",
            "Lll2;",
            "Landroid/content/Context;",
            "Lor0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lw82;->a:Lqd2;

    .line 3
    iput-object p2, p0, Lw82;->b:Lll2;

    .line 4
    iput-object p3, p0, Lw82;->c:Landroid/content/Context;

    .line 5
    iput-object p4, p0, Lw82;->d:Lor0;

    return-void
.end method


# virtual methods
.method public final a()Law2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Law2<",
            "Lx82;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw82;->a:Lqd2;

    .line 2
    invoke-interface {v0}, Lqd2;->a()Law2;

    move-result-object v0

    .line 3
    new-instance v1, Lz82;

    invoke-direct {v1, p0}, Lz82;-><init>(Lw82;)V

    .line 4
    sget-object v2, Lms0;->f:Lzv2;

    .line 5
    invoke-static {v0, v1, v2}, Lvt2;->l(Law2;Lvs2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v0

    return-object v0
.end method
