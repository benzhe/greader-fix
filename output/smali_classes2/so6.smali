.class public final Lso6;
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
        "Lcom/android/billingclient/api/Purchase;",
        "Llb7;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Luo6;


# direct methods
.method public constructor <init>(Luo6;)V
    .locals 0

    iput-object p1, p0, Lso6;->e:Luo6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/android/billingclient/api/Purchase;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p1, Lcom/android/billingclient/api/Purchase;->c:Lorg/json/JSONObject;

    const/4 v1, 0x1

    const-string v2, "acknowledged"

    .line 4
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lso6;->e:Luo6;

    .line 6
    iget-object v0, v0, Luo6;->c:Lyn6;

    .line 7
    iget-object p1, p1, Lcom/android/billingclient/api/Purchase;->c:Lorg/json/JSONObject;

    const-string v1, "purchaseToken"

    .line 8
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "token"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "it.purchaseToken"

    .line 9
    invoke-static {p1, v2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v1, Lcn;

    invoke-direct {v1}, Lcn;-><init>()V

    .line 12
    iput-object p1, v1, Lcn;->a:Ljava/lang/String;

    const-string p1, "AcknowledgePurchaseParam\u2026en(purchaseToken).build()"

    .line 13
    invoke-static {v1, p1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object p1, v0, Lyn6;->b:Leq;

    invoke-interface {p1, v1}, Leq;->e(Lcn;)Lhb7;

    move-result-object p1

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Lhb7;->c()Lhb7;

    move-result-object p1

    :goto_0
    return-object p1
.end method
