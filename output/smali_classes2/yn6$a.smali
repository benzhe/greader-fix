.class public final Lyn6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyn6;->a(Ljava/lang/String;)Lrb7;
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
        "Lcom/android/billingclient/api/SkuDetails;",
        ">;",
        "Lvb7<",
        "+",
        "Lcom/android/billingclient/api/SkuDetails;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final e:Lyn6$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyn6$a;

    invoke-direct {v0}, Lyn6$a;-><init>()V

    sput-object v0, Lyn6$a;->e:Lyn6$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/util/List;

    const-string v0, "skuList"

    .line 2
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lek7;->g(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/SkuDetails;

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, Lkg7;

    invoke-direct {v0, p1}, Lkg7;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lbg7;->e:Lbg7;

    :goto_0
    return-object v0
.end method
