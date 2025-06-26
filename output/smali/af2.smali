.class public final Laf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Lye2;",
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


# direct methods
.method public constructor <init>(Lmb3;Lmb3;Lmb3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb3<",
            "Lpo3;",
            ">;",
            "Lmb3<",
            "Lzv2;",
            ">;",
            "Lmb3<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Laf2;->a:Lmb3;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lj11;->a:Lk11;

    invoke-virtual {v0}, Lk11;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpo3;

    .line 2
    invoke-static {}, Lyn2;->a()Lzv2;

    move-result-object v1

    .line 3
    iget-object v2, p0, Laf2;->a:Lmb3;

    invoke-interface {v2}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 4
    new-instance v3, Lye2;

    invoke-direct {v3, v0, v1, v2}, Lye2;-><init>(Lpo3;Lzv2;Landroid/content/Context;)V

    return-object v3
.end method
