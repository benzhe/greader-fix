.class public final Lqn6$g;
.super Lqn6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqn6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lqn6;-><init>(Ljava/lang/String;ILgm7;)V

    return-void
.end method


# virtual methods
.method public i()Ljava/lang/Object;
    .locals 1

    const-string v0, "premium_yearly"

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    const-string v0, "premium_yearly_subscription_product_id"

    return-object v0
.end method
