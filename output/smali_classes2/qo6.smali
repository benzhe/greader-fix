.class public final Lqo6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Luc7<",
        "Ljava/util/List<",
        "+",
        "Lcom/android/billingclient/api/Purchase;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Lcom/android/billingclient/api/Purchase;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Luo6;


# direct methods
.method public constructor <init>(Luo6;)V
    .locals 0

    iput-object p1, p0, Lqo6;->e:Luo6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ljava/util/List;

    const-string v0, "purchases"

    .line 2
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "pro_version_access"

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lqo6;->e:Luo6;

    .line 5
    iget-object v0, v0, Luo6;->b:Landroid/content/Context;

    .line 6
    sget v3, Lcn6;->b:I

    .line 7
    invoke-static {v0, v2, v1}, Liw6;->S(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lqo6;->e:Luo6;

    .line 9
    iget-object v0, v0, Luo6;->b:Landroid/content/Context;

    const/4 v1, 0x0

    .line 10
    sget v3, Lcn6;->b:I

    .line 11
    invoke-static {v0, v2, v1}, Liw6;->S(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_0
    return-object p1
.end method
