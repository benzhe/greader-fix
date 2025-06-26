.class public final Lqe2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Loe2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmb3;Lmb3;Lmb3;Lmb3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb3<",
            "Lqm0;",
            ">;",
            "Lmb3<",
            "Landroid/content/Context;",
            ">;",
            "Lmb3<",
            "Ljava/lang/String;",
            ">;",
            "Lmb3<",
            "Lzv2;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lqe2;->a:Lmb3;

    .line 3
    iput-object p3, p0, Lqe2;->b:Lmb3;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lqe2;->a:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lqe2;->b:Lmb3;

    invoke-interface {v1}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    invoke-static {}, Lyn2;->a()Lzv2;

    move-result-object v2

    .line 3
    new-instance v3, Loe2;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v1, v2}, Loe2;-><init>(Lqm0;Landroid/content/Context;Ljava/lang/String;Lzv2;)V

    return-object v3
.end method
