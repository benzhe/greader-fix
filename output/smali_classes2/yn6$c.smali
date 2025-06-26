.class public final Lyn6$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyn6;->b()Lac7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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


# static fields
.field public static final e:Lyn6$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyn6$c;

    invoke-direct {v0}, Lyn6$c;-><init>()V

    sput-object v0, Lyn6$c;->e:Lyn6$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Ljava/util/List;

    const-string v0, "purchases"

    .line 2
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/billingclient/api/Purchase;

    .line 5
    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "it.sku"

    invoke-static {v3, v4}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "premium_"

    invoke-static {v3, v6, v4, v5}, Lco7;->A(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v3

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    .line 6
    iget-object v2, v2, Lcom/android/billingclient/api/Purchase;->c:Lorg/json/JSONObject;

    const-string v3, "purchaseState"

    .line 7
    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v5, 0x1

    :cond_1
    if-ne v5, v6, :cond_2

    const/4 v4, 0x1

    :cond_2
    if-eqz v4, :cond_0

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method
